use Mix.Config

config :test_skeleton, TestSkeletonWeb.Endpoint,
  load_from_system_env: true,
  url: [host: "replaceme.com", port: {:system, "PORT"}],
  https: [
    port: 8043,
    otp_app: :test_skeleton,
    keyfile: "../../../../certs/key.pem",
    certfile: "../../../../certs/cert.pem",
    cacertfile: "../../../../certs/chain.pem"
  ],
  http: [protocol_options: [max_request_line_length: 8192, max_header_value_length: 8192]]

config :logger, level: :info

config :logger,
  backends: [:console]

config :test_skeleton, TestSkeleton.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "test_skeleton_prod",
  password: "replaceme",
  database: "test_skeleton_prod",
  hostname: "replaceme",
  pool_size: 5,
  port: 25060,
  ssl: true

config :test_skeleton, TestSkeletonWeb.Endpoint,
  secret_key_base: "qwJjb8u4Ypi90spfvkYxp4I5l4javEs/GUTavUDZSOipUfhA+Xxpqcijr7fqsWX4"
