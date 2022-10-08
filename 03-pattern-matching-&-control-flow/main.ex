defmodule Geometry do
  def area({:rectangle, a, b}) do
    a * b
  end

  def area({:square, a} do
    a * a
  end

  def area({:circle, r}) do
    r * r * 3.14159
  end

  # catch all overload
  def area(unknown) do
    {:error, {:unknown_shape, unknown}}
  end
end

# Geometry.area({:circle, 2}) - pattern match against a particular overload.
# result - 12.56636
