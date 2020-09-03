defmodule ZuyegaWeb.PageController do
  use ZuyegaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
