defmodule Zuyega.Tree do
  use Ecto.Schema
  import Ecto.Changeset

  schema "trees" do
    field :collection, :string
    field :name, :string
    field :propagation_type, :string
    field :start_date, :string
    field :species_id, :id

    timestamps()
  end

  @doc false
  def changeset(tree, attrs) do
    tree
    |> cast(attrs, [:name, :start_date, :propagation_type, :collection])
    |> validate_required([:name, :start_date, :propagation_type, :collection])
  end
end
