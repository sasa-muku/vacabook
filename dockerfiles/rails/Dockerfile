FROM ruby:2.6.8-slim-buster AS builder
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app
WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN gem install bundler:2.2.16 && bundle install

FROM ruby:2.6.8-slim-buster AS runner
RUN apt-get update -qq && \
    apt-get install -y libpq-dev nodejs && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir /app
WORKDIR /app
COPY --from=builder /usr/local/bundle /usr/local/bundle
COPY . /app

COPY dockerfiles/rails/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
