defmodule MagmaWeb.PageController do
  use MagmaWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
