defmodule Shopix.Product do
  use Ecto.Schema

  schema "products" do
    field :name, :string
    field :price, :float
    field :quantity, :integer
  end
end
