defmodule Core.Domain.Receipt do

  alias Core.Domain.Customer
  alias Core.Domain.Transaction

  defstruct customer: %Customer{}, transaction: %Transaction{}
end
