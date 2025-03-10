# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :qr,
  ecto_repos: [Qr.Repo]

# Configures the endpoint
config :qr, QrWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sLNcrJHPMP5HMmIjNE7/KXdJyfYhdCz7B+ystGj2/hekcPlhtEODfFbAhkKec+DR",
  render_errors: [view: QrWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Qr.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
