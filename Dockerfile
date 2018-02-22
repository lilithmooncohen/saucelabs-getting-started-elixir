FROM elixir:1.6.1-alpine

ENV HOME="/opt/app" \
    REPLACE_OS_VARS="true" \
    MIX_ENV="test"

WORKDIR $HOME

RUN mix local.hex --force && \
    mix local.rebar --force

COPY mix.exs ./

RUN mix deps.get

COPY config/ ./config

RUN mix deps.compile

COPY lib/ ./lib
COPY test/ ./test

RUN mix compile

CMD mix test