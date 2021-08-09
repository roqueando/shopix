defmodule Core do

  alias Core.Domain.Cart
  alias Core.Domain.Customer
  alias Core.Domain.Receipt
  alias Core.Domain.Transaction
  @moduledoc """
  Here we will have some context functions
  """

  @spec checkout(%Cart{}, %Customer{}, String.t()) :: %Receipt{}
  def checkout(%Cart{} = cart, %Customer{} = customer, type) do
    transaction = %Transaction{
      date: Date.utc_today(),
      price: cart.total_price,
      type: type,
      status: "success",
      description: nil,
      customer: customer,
      products: cart.products
    }

    %Receipt{
      transaction: transaction,
      customer: customer
    }
  end
end
