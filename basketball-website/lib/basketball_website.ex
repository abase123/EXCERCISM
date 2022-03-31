defmodule BasketballWebsite do

  defp extract(map,[]) do
    map
  end

  def extract_from_path(data, path) do
    # Please implement the extract_from_path/2 function
    [head|tail] = String.split(path,".")
    map = data[head]
    extract(map,tail)
  end

  defp extract(map,[head|tail]) do
    map = map[head]
    extract(map,tail)

  end


  def get_in_path(data, path) do
    # Please implement the get_in_path/2 function
    list=String.split(path,".")
    Kernel.get_in(data,list)

  end
end
