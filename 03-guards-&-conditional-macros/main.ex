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

defmodule ConditionalPlayground do
  def max(a, b) do
    if a >= b, do: a, else: b
  end

  def max(a, b) do
    # Same as the above, but with unless
    unless a >= b, do: b, else: a
  end

  # Chained conditionals
  def max(a, b) do
    cond do
      # Return the first condition if satisfied, else return b
      a >= b -> a
      true -> b
    end
  end

  def max(a, b) do
    case a >= b do
      true -> a
      false -> b
      _ -> :error
    end
  end
end
