use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_api_auth_starter, PhoenixApiAuthStarterWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phoenix_api_auth_starter, PhoenixApiAuthStarter.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_api_auth_starter_test",
  hostname: "postgres",
  pool: Ecto.Adapters.SQL.Sandbox
