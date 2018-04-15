defmodule QrWeb.QrController do
  use QrWeb, :controller

  def index(conn, params) do
    code = params |> Map.get("code")
    render conn, "index.html", code: code
  end
end
