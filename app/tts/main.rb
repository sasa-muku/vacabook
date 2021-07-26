class TTS
  require "net/http"
  require "uri"
  require "json"

  def convert_to_speech(txt)
    json_file_path = "./app/tts/request.json"

    uri = URI.parse("https://texttospeech.googleapis.com/v1/text:synthesize")
    request = Net::HTTP::Post.new(uri)
    request.content_type = "application/json; charset=utf-8"
    #NOTE: Set GOOGLE_APPLICATION_CREDENTIAL before authentication
    token = `gcloud auth application-default print-access-token`.delete("\r\n")
    request["Authorization"] = "Bearer #{token}"

    request_data = open(json_file_path) do |file|
      JSON.load(file)
    end
    request_data["input"]["text"] = txt
    request.body = JSON.generate(request_data).delete("\r\n")
    
    req_options = {
      use_ssl: uri.scheme == "https",
    }
    
    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    response_hash = JSON.parse(response.body)
    audio = response_hash["audioContent"]
    return audio
  end
end