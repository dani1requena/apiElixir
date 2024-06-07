defmodule ApiElixirWeb.PageController do
  use ApiElixirWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "Ardorius", password: "1234"},
      %{id: 2, name: "MachineGunJoe", password: "1234"}
    ]
    json(conn, %{users: users})
  end
end
