defmodule Zuyega.Repo do
  use Ecto.Repo,
    otp_app: :zuyega,
    adapter: Ecto.Adapters.Postgres
end
