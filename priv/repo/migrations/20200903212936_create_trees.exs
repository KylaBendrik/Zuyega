defmodule Zuyega.Repo.Migrations.CreateTrees do
  use Ecto.Migration

  def change do
    create table(:trees) do
      add :name, :string
      add :start_date, :string
      add :propagation_type, :string
      add :collection, :string
      add :species_id, references(:species, on_delete: :nothing)

      timestamps()
    end

    create index(:trees, [:species_id])
  end
end
