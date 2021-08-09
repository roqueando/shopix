defmodule Core.Domain.CartTest do
  use ExUnit.Case

  alias Core.Domain.Cart
  alias Core.Domain.Product

  setup do
    products = [
      Product.create("test1", 2.99, 1),
      Product.create("test2", 2.99, 3),
      Product.create("test3", 2.99, 13),
    ]

    {:ok, products: products}
  end

  test "should creates a Cart with products", %{products: products} do
    cart = Cart.create(products)
    total_price = 
      Enum.map(products, fn p -> p.price * p.quantity end)
      |> Enum.sum
      |> Float.round(2)

    assert cart.total_price === total_price
  end

  test "should add products to cart" do
    product = Product.create("Bike", 299.99, 1)
    cart = Cart.add(%Cart{}, product)

    assert cart.total_price == 299.99
  end
end
