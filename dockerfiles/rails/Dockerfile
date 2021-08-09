FROM ruby:2.6.8-alpine3.14 AS builder
RUN apk update -qq && \
    apk add --no-cache build-base postgresql-dev nodejs && \
    mkdir /app
WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN gem install bundler:2.2.16 && bundle install

FROM ruby:2.6.8-alpine3.14 AS runner
RUN apk update -qq && \
    apk add --no-cache postgresql-dev nodejs && \
    mkdir /app
WORKDIR /app
COPY --from=builder /usr/local/bundle /usr/local/bundle
COPY . /app

COPY dockerfiles/rails/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
