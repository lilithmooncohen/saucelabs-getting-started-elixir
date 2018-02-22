# Getting Started with Sauce Labs test in Elixir using Hound

This a simple example browser test written in [Elixir](https://elixir-lang.org/) running on [Sauce Labs](https://saucelabs.com) using [Hound](https://github.com/HashNuke/hound).

## How to use

### Set your Sauce Labs Credentials

Replace `<SAUCE_USERNAME>` and `<SAUCE_ACCESS_KEY>` in [config/config.exs](config/config.exs) with your actual credentials.

## Run with local Elixir install

### Install Dependencies
```
mix deps.get && mix deps.compile
```

### Run the test
```
mix test
```

## Run with Docker

### Build the container
```
docker build -t saucelabs-getting-started-elixir .
```

### Run the test
```
docker run --rm -it saucelabs-getting-started-elixir
```


## More info on testing with Hound

You can see the simple example test in [test/saucelabs_test.exs](test/saucelabs_test.exs).
For some great more in depth documentation see [Hound's documentation](https://hexdocs.pm/hound/readme.html).