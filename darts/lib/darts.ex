defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position :: position) :: integer
  def score({x, y}) do
   radius = :math.sqrt(:math.pow(x,2)+:math.pow(y,2))

   cond do
      radius > 10 -> 0
      radius == 10->1
      radius < 10 && radius > 5 -> 1
      radius == 5 -> 5
      radius <= 5 && radius >1 -> 5
      radius == 1 -> 10
      radius < 1 ->10

   end


  end
end
