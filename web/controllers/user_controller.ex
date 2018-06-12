defmodule Rumblify.UserController do
  use Rumblify.Web, :controller

  def index(conn, _params) do
    users = Repo.all(Rumblify.User)
    render conn, "index.html", users: users
  end
end
