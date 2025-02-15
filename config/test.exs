use Mix.Config

config :perf_analyzer,
  url: "http://localhost:8080/post",
  request: %{
    method: "POST",
    headers: [
      {"Content-Type", "application/json"}
    ],
    body: ~s/{
        "data": {
            "customer": {
                "identification": {
                    "type": "{type}",
                    "number": "{number}"
                }
            },
            "pagination": {
                "size": #{Enum.random(0..10)},
                "key": 1
            }
        }
    }/
  },
  execution: %{
    steps: 10,
    increment: 1,
    duration: 10000,
    constant_load: false,
    dataset: :none,
    separator: ","
  },
  distributed: :none

config :logger,
  level: :info
