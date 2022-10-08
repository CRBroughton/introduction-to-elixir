defmodule Playground do
  def area(a, b) do
    a * b
  end

  def run do
    area(10, 20)
  end

  defmodule Circle do
    def area(r) do
      3.14159 * r * r
    end
  end

  def area_of_circle!(x, y), do: x * y
end
