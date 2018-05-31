use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :docker_frontend_ex, DockerFrontendExWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :docker_frontend_ex, DockerFrontendEx.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "docker_frontend_ex_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
