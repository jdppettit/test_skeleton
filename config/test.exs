use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :test_skeleton, TestSkeletonWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :test_skeleton, TestSkeleton.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "test_skeleton",
  password: "test_skeletontest",
  database: "test_skeleton_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
