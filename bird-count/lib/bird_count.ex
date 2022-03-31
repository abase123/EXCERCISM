defmodule BirdCount do
  def today(list) do
    List.first(list)

  end

  def increment_day_count([head|tail]) do
    [head+1|tail]
  end

  def increment_day_count([]) do
      [1]
  end

  def has_day_without_birds?([]) do
    false
  end

  def has_day_without_birds?([head|tail]) do
    if head == 0 do
      true
    else
      BirdCount.has_day_without_birds?(tail)
    end
  end


  def total([head|tail]) do
    head+total(tail)
  end

  def total([]) do
    0
  end


  def busy_days(list),do: busy_days(list,0)
  defp busy_days([head|tail],count) when head>=5, do: busy_days(tail,count+1)
  defp busy_days([head|tail],count), do: busy_days(tail,count)
  defp busy_days([],count), do: count


end
