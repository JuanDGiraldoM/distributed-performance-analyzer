use Mix.Config

config :perf_analyzer,
  url: "http://127.0.0.1:8080/post",
  request: %{
    method: "POST",
    headers: [{"Content-Type", "application/json"}],
    body: ~s/{"key": "example"}/
  },
  execution: %{
    steps: 5,
    increment: 1,
    duration: 7000,
    constant_load: true,
    dataset: :none,
    separator: ","
  },
  distributed: :none

config :logger,
  level: :info
