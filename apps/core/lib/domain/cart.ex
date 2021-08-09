defmodule Core.Domain.Cart do

  alias Core.Domain.Product

  defstruct products: [],
    total_price: 0.0
  @moduledoc "Cart will have a bunch of products and the total price"

  @spec create(list()) :: %__MODULE__{}
  def create(products) do
    %__MODULE__{
      products: products,
      total_price: calculate(products)
    }
  end

  @spec add(%__MODULE__{}, %Product{}) :: %__MODULE__{}
  def add(cart, product) do
    products = [product | cart.products]
    %__MODULE__{
      products: products,
      total_price: calculate(products)
    }
  end

  @spec calculate(list()) :: float()
  defp calculate(products) do
    Enum.map(products, fn p -> p.price * p.quantity end)
    |> Enum.sum
    |> Float.round(2)
  end
end
