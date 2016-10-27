# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ls_lrs,
  ecto_repos: [LsLrs.Repo]

# Configures the endpoint
config :ls_lrs, LsLrs.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8w+Xk+KCgwjIsZaGRiG6D9A3Go6fUiof/0hsEiQIHvTEmJUlfIOAPV48suUkmlO9",
  render_errors: [view: LsLrs.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LsLrs.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
