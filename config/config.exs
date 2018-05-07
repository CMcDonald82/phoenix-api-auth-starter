# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_api_auth_starter,
  ecto_repos: [PhoenixApiAuthStarter.Repo]

# Configures the endpoint
config :phoenix_api_auth_starter, PhoenixApiAuthStarterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tvNEzZ6+XO2pwkO/YigSthiwhUghYW/JypRYOnUpRssMvLQAfdEle8h1MWh7ch9h",
  render_errors: [view: PhoenixApiAuthStarterWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhoenixApiAuthStarter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
