defmodule Liveviewbug.Repo do
  use Ecto.Repo,
    otp_app: :liveviewbug,
    adapter: Ecto.Adapters.Postgres
end
