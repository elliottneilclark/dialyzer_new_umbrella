defmodule DialyzerNew.Repo do
  use Ecto.Repo,
    otp_app: :dialyzer_new,
    adapter: Ecto.Adapters.Postgres
end
