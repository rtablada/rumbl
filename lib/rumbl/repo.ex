defmodule Rumbl.Repo do
  @moduledoc """
  In memory repo
  """

  def all(Rumbl.User) do
    [
      %Rumbl.User{id: "1", name: "José", username: "josevalim", password: "elixir"},
      %Rumbl.User{id: "2", name: "Bruce", username: "redrapids", password: "7langs"},
      %Rumbl.User{id: "3", name: "Chris", username: "chrismccord", password: "phx"}
    ]
  end

  def all(_module), do: []

  def get(module, id) do
    Enum.find all(module), fn item -> item.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn item ->
      Enum.all?(params, fn {key, val} -> Map.get(item, key) == val end)
    end
  end
end
