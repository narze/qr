defmodule ESpec.Phoenix.Extend do
  def model do
    quote do
      alias Qr.Repo
    end
  end

  def controller do
    quote do
      alias QrWeb
      import QrWeb.Router.Helpers

      @endpoint QrWeb.Endpoint
    end
  end

  def view do
    quote do
      import QrWeb.Router.Helpers
    end
  end

  def channel do
    quote do
      alias Qr.Repo

      @endpoint Qr.Endpoint
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
