defmodule Core.Domain.Product do
  defstruct id: nil,
    name: nil,
    price: nil,
    quantity: nil

  @spec create(String.t(), float(), integer()) :: %__MODULE__{}
  def create(name, price, quantity) do
    %__MODULE__{
      name: name,
      price: price,
      quantity: quantity
    }
  end
end
