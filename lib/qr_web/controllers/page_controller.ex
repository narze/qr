defmodule QrWeb.PageController do
  use QrWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
