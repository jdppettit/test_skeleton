use Mix.Config

config :test_skeleton,
  ecto_repos: [TestSkeleton.Repo]

# Configures the endpoint
config :test_skeleton, TestSkeletonWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "IrLXoGMvCJagrb8qkMW5XdE1VELQBFLy88C4LQZZv6rWxVXLGm20W7dydMX+BVvW",
  render_errors: [view: TestSkeletonWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TestSkeleton.PubSub,
  live_view: [signing_salt: "3JJF9rau"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
