defmodule ZuyegaWeb.Router do
  use ZuyegaWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ZuyegaWeb do
    pipe_through :browser

    get "/", PageController, :index
    resources "/species", SpeciesController
  end

  # Other scopes may use custom stacks.
  # scope "/api", ZuyegaWeb do
  #   pipe_through :api
  # end
end
