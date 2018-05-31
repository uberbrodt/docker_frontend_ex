# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :docker_frontend_ex,
  ecto_repos: [DockerFrontendEx.Repo]

# Configures the endpoint
config :docker_frontend_ex, DockerFrontendExWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TzJLkN2So2BAI5UPcUAYauPTyoP+DAhzyJLVvBvua1Ilu5dtQ+jJnnHVffrhykIN",
  render_errors: [view: DockerFrontendExWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DockerFrontendEx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
