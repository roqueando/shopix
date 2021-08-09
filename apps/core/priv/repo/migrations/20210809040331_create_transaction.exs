defmodule Shopix.Repo.Migrations.CreateTransaction do
  use Ecto.Migration

  def change do

    create table(:transactions) do
      add :date, :date
      add :price, :float
      add :type, :string, default: "card"
      add :status, :string, nullable: true
      add :description, :string, nullable: true
      add :customer_id, references(:customers)
    end
  end
end
