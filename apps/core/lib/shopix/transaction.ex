defmodule Shopix.Transaction do
  use Ecto.Schema

  schema "transactions" do
    field :date, :date
    field :price, :float
    field :type, :string, default: "card"
    field :status, :string, nullable: true
    field :description, :string, nullable: true
    field :customer_id, :binary_id
    belongs_to :customers, Shopix.Customer
  end
end
