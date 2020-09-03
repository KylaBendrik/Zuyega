defmodule ZuyegaWeb.SpeciesController do
  use ZuyegaWeb, :controller
  alias Zuyega.{Repo, Species}
  
  def index(conn, _params) do
    species_list = Repo.all(Species)
    conn 
      |> render("index.html", species: species_list)
  end
  
  def show(conn, %{"id" => id}) do
    species = Repo.get(Species, id)
    conn 
      |> render("show.html", species: species)
  end
  
  def edit(conn, %{"id" => id}) do
    species = Repo.get(Species, id)
    
    changeset = Species.changeset(species)
    
    conn 
      |> render("edit.html", species: species, changeset: changeset)
  end
  
  def update(conn, %{"id" => id, "species" => species_params}) do
    species = Repo.get(Species, id)
    
    species
    |> Species.changeset(species_params)
    |> Repo.update()
    |> case do
      {:ok, species} -> 
        conn 
        |> redirect(to: Routes.species_path(conn, :show, species))
      {:error, %Ecto.Changeset{} = changeset} -> 
        render(conn, "edit.html", species: species, changeset: changeset)
    end
  end
  
  def new(conn, _params) do
    species = %Species{}
    render(conn, "new.html", changeset: Species.changeset(species))
  end
  
  def create(conn, %{"species" => species_params}) do
    Species.changeset(%Species{}, species_params)
    |> Repo.insert()
    |> case do
      {:ok, species} -> 
        conn 
        |> redirect(to: Routes.species_path(conn, :show, species))
      {:error, %Ecto.Changeset{} = changeset} -> 
        IO.inspect(changeset)
        render(conn, "new.html", changeset: changeset)
    end
  end
end
