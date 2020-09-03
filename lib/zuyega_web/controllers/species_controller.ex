defmodule ZuyegaWeb.SpeciesController do
  use ZuyegaWeb, :controller
  
  def index(conn, _params) do
    species_list = Zuyega.Repo.all(Zuyega.Species)
    conn 
      |> render("index.html", species: species_list)
  end
  
  def show(conn, %{"id" => id}) do
    species_list = Zuyega.Repo.get(Zuyega.Species, id)
    conn 
      |> render("show.html", species: species_list)
  end
  
  def edit(conn, %{"id" => id}) do
    species_list = Zuyega.Repo.get(Zuyega.Species, id)
    conn 
      |> render("edit.html", species: species_list)
  end
end
