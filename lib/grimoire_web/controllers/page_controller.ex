defmodule GrimoireWeb.PageController do
  use GrimoireWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"page" => page}) do
    render conn, "show.html", page: page
  end
end
