FROM ruby:2.4.2

WORKDIR /usr/src/app

RUN apt-get install libmysqlclient-dev

COPY Gemfile ./

RUN bundle install

COPY . .

CMD [ "shotgun", "server.rb" ]
