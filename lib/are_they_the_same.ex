defmodule AreTheyTheSame do
  def comp(nil, _), do: false
  def comp(_, nil), do: false

  def comp(a, b) do
    squared(a) |> Enum.sort() == b |> Enum.sort()
  end

  defp squared(a) do
    a |> Enum.map(&square/1)
  end

  defp square(elem) do
    elem * elem
  end
end
