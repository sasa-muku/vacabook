class Api::V1::SpeechesController < ApplicationController
  require './app/tts/main'
  
  before_action :authenticate_user!

  def show
    @param_en = params[:en]
    if Speech.exists?(en: @param_en)
      audio = Speech.find_by("en = ?", @param_en).audio
      render json: { status: 'SUCCESS', data: audio }
    else
      create
    end
  end

  private

  def create
    tts = TTS.new(@param_en)
    audio = tts.convert_to_speech()
    speech = Speech.new(en: @param_en, audio: audio)
    if speech.save
      render json: { status: 'SUCCESS', data: audio }
    else
      render json: { status: 'ERROR', data: speech.errors }
    end
  end
end
