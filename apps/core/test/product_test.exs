defmodule Core.Domain.ProductTest do
  use ExUnit.Case

  alias Core.Domain.Product

  test "should creates a Product" do
    product = Product.create("test", 2.99, 1)
    assert product.name === "test"
  end
end
