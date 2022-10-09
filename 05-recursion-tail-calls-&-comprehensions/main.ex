defmodule Playground do
  # Recursively sum the numbers in an array
  def sum([]), do: 0

  # Splits the head and tail of the array
  def sum([h|t]) do
    h + sum(t)
  end

  def enumEach(a) do
    Enum.each(a, fn x -> IO.puts(x) end)
  end

  def enumMap(a) do
    Enum.map(a, fn x -> 2 * x end)
  end

  def enumFilter(a) do
    # Find all odd numbers
    Enum.filter(a, fn x -> rem(x, 2) == 1 end)
  end

  def enumReduce(a) do
    Enum.reduce(a, 0, fn x, y -> x + y end)
  end

  def forLoop(a) do
    for x <- a, do: x * x
  end
end

# Example:
# Playground.sum([1, 2, 3, 4])
