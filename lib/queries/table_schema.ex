defmodule EctoPSQLExtras.TableSchema do
  @behaviour EctoPSQLExtras

  def info do
    %{
      title: "Column names and types",
      columns: [
        %{name: :column_name, type: :string},
        %{name: :data_type, type: :string},
        %{name: :is_nullable, type: :boolean},
        %{name: :column_default, type: :string},
        %{name: :table_name, type: :string}
      ]
    }
  end

  def query(args) do
    if args[:table_name] do
      {"""
       /* ECTO_PSQL_EXTRAS: Table column names and types */

       SELECT column_name, data_type, is_nullable, column_default, table_name
       FROM information_schema.columns
       WHERE table_name = $1;
       """, [to_string(args[:table_name])]}
    else
      {"""
       /* ECTO_PSQL_EXTRAS: All database column names and types */

       SELECT column_name, data_type, is_nullable, column_default, table_name
       FROM information_schema.columns;
       """, []}
    end
  end
end
