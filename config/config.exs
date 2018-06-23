# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :magma,
  ecto_repos: [Magma.Repo]

# Configures the endpoint
config :magma, MagmaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5OM0IzegliHQSxPq23382CQhr7KWDcp38hAIeixu59U7TDHqC42Hz5Iysiy6uPfF",
  render_errors: [view: MagmaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Magma.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
