Code.require_file("support/test_repo.exs", __DIR__)

Application.put_env(:ecto_psql_extras, :node_name, Node.self())

Application.put_env(:dummy_app, Dummy.Repo, url: EctoPSQLExtras.TestRepo.database_url())

case Ecto.Adapters.Postgres.storage_up(EctoPSQLExtras.TestRepo.config()) do
  :ok -> :ok
  {:error, :already_up} -> :ok
  {:error, reason} -> raise "could not create test database: #{inspect(reason)}"
end

ExUnit.configure(exclude: :distribution)
ExUnit.start()
