defmodule CoreTest do
  use ExUnit.Case

  alias Core.Domain.Customer
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

  test "should buy something and generate an receipt", %{products: products} do
    cart = Cart.create(products)

    customer = %Customer{
      name: "John Doe",
      email: "john@doe.com"
    }

    receipt = Core.checkout(cart, customer, "card")
    transaction_product = 
      receipt.transaction.products
      |> List.first

    assert receipt.customer.name === "John Doe"
    assert receipt.transaction.status === "success"
    assert %Product{} = transaction_product
  end
end
