defmodule Rumblify.UserView do
  use Rumblify.Web, :view
  alias Rumblify.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
