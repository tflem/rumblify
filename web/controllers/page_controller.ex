defmodule Rumblify.PageController do
  use Rumblify.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
