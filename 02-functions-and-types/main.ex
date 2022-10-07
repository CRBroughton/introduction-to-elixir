defmodule Playground do
  def area(a, b) do
    a * b
  end

  defmodule Circle do
    def area(r) do
      3.14159 * r * r
    end
  end
end
