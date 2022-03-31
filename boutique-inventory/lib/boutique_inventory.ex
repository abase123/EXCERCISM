defmodule BoutiqueInventory do
  def sort_by_price(inventory) do
    # Please implement the sort_by_price/1 function
    Enum.sort_by(inventory,fn (r) -> r[:price] end )
  end

  def with_missing_price(inventory) do
    # Please implement the with_missing_price/1 function
    Enum.filter(inventory,fn r ->r[:price]==nil end)


  end

  def increase_quantity(item, count) do
    # Please implement the increase_quantity/2 function
    map_of_size=Enum.map(item[:quantity_by_size],fn {size, value} -> {size , value+count} end)
    %{item | quantity_by_size: Enum.into(map_of_size,%{})}
  end

  def total_quantity(item) do
    # Please implement the total_quantity/1 function
    Enum.reduce(item[:quantity_by_size],0,fn {size, value},acc -> value+acc end)
  end
end
