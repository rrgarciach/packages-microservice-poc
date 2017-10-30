FROM ruby:2.4.2

WORKDIR /usr/src/app

RUN apt-get install -y libmysqlclient-dev

COPY Gemfile ./

RUN bundle install

COPY . .

CMD [ "shotgun", "app.rb", "-o", "0.0.0.0" ]
