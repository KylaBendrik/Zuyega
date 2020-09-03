defmodule Zuyega.Repo.Migrations.CreateSpecies do
  use Ecto.Migration

  def change do
    create table(:species) do
      add :name, :string
      add :genus, :string
      add :species, :string
      add :common_name, :string
      add :comments, :string

      timestamps()
    end

  end
end
