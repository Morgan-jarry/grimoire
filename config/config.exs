# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :grimoire, GrimoireWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LMELqhG7KAcurl0utqXF30sKI3o2L5HYgKiuR9h2huznJ+nblIGTy0FAqVl4T76t",
  render_errors: [view: GrimoireWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Grimoire.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
