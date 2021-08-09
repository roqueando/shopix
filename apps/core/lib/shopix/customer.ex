defmodule Shopix.Customer do
  use Ecto.Schema

  schema "customers" do
    field :name, :string
    field :email, :string
    has_many :transactions, Shopix.Transaction
  end
end
