use Mix.Config

# Configure your database
config :wally, Wally.Repo,
  username: "postgres",
  password: "postgres",
  database: "wally_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :wally, WallyWeb.Endpoint,
  http: [port: 4002],
  server: true

config :wally, :sql_sandbox, true
config :wallaby, screenshot_on_failure: true

# Print only warnings and errors during test
config :logger, level: :warn
