defmodule ZuyegaWeb.SpeciesController do
  use ZuyegaWeb, :controller
  
  def index(conn, _params) do
    species_list = Zuyega.Repo.all(Zuyega.Species)
    conn 
      |> render("index.html", species: species_list)
  end
end
