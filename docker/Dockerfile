FROM ruby:2.3

WORKDIR /srv

COPY . ./
RUN gem build pghero_logs.gemspec
RUN gem install ./pghero_logs-0.0.2.gem

ENTRYPOINT ["docker/entrypoint.sh"]
