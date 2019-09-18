# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :wally,
  ecto_repos: [Wally.Repo]

# Configures the endpoint
config :wally, WallyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xfMhVqsOjkt0W6Z3JWRYBwMq6M1IunQXvyzv97RtuBI02PqzYbcmSgeghmUuGaRZ",
  render_errors: [view: WallyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Wally.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
