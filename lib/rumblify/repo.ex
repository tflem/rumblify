defmodule Rumblify.Repo do
  @moduledoc """
  In memory repository
  """
  def all(Rumblify.User) do
    [%Rumblify.User{id: "1", name: "Patrick", username: "pstar", password: "whatdidimiss"},
     %Rumblify.User{id: "2", name: "Dash", username: "dmcflash", password: "isitmorning"},
     %Rumblify.User{id: "3", name: "Zippy", username: "zippymcnutty", password: "mmmyummy"}]
  end
  def all(_module), do: []

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end
end
