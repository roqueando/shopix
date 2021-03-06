# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

config :core, Shopix.Repo,
  database: "shopix_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  migration_primary_key: [name: :id, type: :binary_id]

config :core, ecto_repos: [Shopix.Repo]

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#
