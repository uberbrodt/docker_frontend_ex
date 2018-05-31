FROM elixir:1.6

MAINTAINER Chris Brodt <chris@uberbrodt.net>

RUN mix local.hex --force

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

RUN mix local.rebar --force

RUN apt-get update && apt-get install -y inotify-tools

WORKDIR /app

ADD . /app
