defmodule Zuyega.Species do
  use Ecto.Schema
  import Ecto.Changeset

  schema "species" do
    field :comments, :string
    field :common_name, :string
    field :genus, :string
    field :name, :string
    field :species, :string

    timestamps()
  end

  @doc false
  def changeset(species, attrs \\ %{}) do
    species
    |> cast(attrs, [:name, :genus, :species, :common_name, :comments])
    |> validate_required([:name, :genus, :species, :common_name, :comments])
  end
 
end
