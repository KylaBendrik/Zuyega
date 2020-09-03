defmodule ZuyegaWeb.SpeciesView do
  use ZuyegaWeb, :view
  
  # functions that can be called from template
  
  def species_link_text(species) do
    "#{species.name} (#{species.genus} #{species.species})"
  end
  
  def species_link_path(species) do
    Routes.species_path(ZuyegaWeb.Endpoint, :show, species.id)
  end
end
