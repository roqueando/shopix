defmodule Core.Domain.Transaction do

  alias Core.Domain.Customer

  defstruct date: nil,
    price: nil,
    type: nil,
    status: nil,
    description: nil,
    customer: %Customer{},
    products: []
end
