defmodule Rumblify.Repo do
  @moduledoc """
  In memory repository
  """
  def all(Rumblify.User) do
    [%Rumblify.User{id: "1", name: "Patrick", username: "pstar", password: "whatdidimiss"},
     %Rumblify.User{id: "2", name: "Dash", username: "dmcflash", password: "isitmorning"},
     %Rumblify.User{id: "3", name: "Zippy", username: "zippymcnutty", password: "mmmyummy"}]
  end
end
