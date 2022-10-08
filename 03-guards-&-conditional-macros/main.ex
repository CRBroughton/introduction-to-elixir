defmodule Playground do
  # guards against number greater than 0
  def test(x) when is_number(x) < 0 do
    :negative
  end

  def test(0), do: :zero

  def test(x) when is_number(x) > 0 do
    :positive
  end
end

defmodule LambdaPlayground do
  test = fn
    x when is_number(x) and x < 0 ->
      :negative

    0 ->
      :zero

    x when is_number(x) and x > 0 ->
      :positive
  end
end
