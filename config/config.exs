use Mix.Config

config :hound,
  driver: "chrome_driver",
  host: "http://<SAUCE_USERNAME>:<SAUCE_ACCESS_KEY>@ondemand.saucelabs.com",
  port: 80,
  path_prefix: "wd/hub/"
