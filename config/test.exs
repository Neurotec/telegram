use Mix.Config

config :tesla,
  adapter: :mock

config :telegram, [
  api_base_url: "http://localhost:8000",
  get_updates_poll_timeout: 1,
  on_error_retry_quiet_period: 1
]
