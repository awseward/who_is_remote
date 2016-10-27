# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :who_is_remote,
  ecto_repos: [WhoIsRemote.Repo]

# Configures the endpoint
config :who_is_remote, WhoIsRemote.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TI5NcxvVoUrfZCE1e6gpc7owSRWO4XdeylVq5JbyRv4HAepcXukV1M7V0Ef6B4Ao",
  render_errors: [view: WhoIsRemote.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WhoIsRemote.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
