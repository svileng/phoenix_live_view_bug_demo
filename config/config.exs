# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :liveviewbug,
  ecto_repos: [Liveviewbug.Repo]

# Configures the endpoint
config :liveviewbug, LiveviewbugWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VQM6qhun1lSdYb63EZJRbAvUI+tPSFNltXuhAfTUr8+Jp6F2DRpSae8wBRPT+huB",
  render_errors: [view: LiveviewbugWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Liveviewbug.PubSub,
  live_view: [signing_salt: "Zb9w29tK"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
