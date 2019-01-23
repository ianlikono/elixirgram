defmodule Elixirgram.Repo do
  use Ecto.Repo,
    otp_app: :elixirgram,
    adapter: Ecto.Adapters.Postgres
end
