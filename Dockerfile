

#Set base image to Ubuntu
FROM ruby

MAINTAINER simonlee

RUN apt-get update -qq

COPY Gemfile* /tmp/
WORKDIR /tmp

#RUN gem install bundler -V

#RUN bundle install -V
RUN gem install \
    jekyll:'~>2.5' \
    jekyll-archives:'~>2.0' \
    jekyll-sitemap:'~>0.8' \
    html-proofer

VOLUME src
WORKDIR /src


EXPOSE 4000

ENTRYPOINT ["jekyll"]
