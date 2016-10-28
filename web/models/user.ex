defmodule WhoIsRemote.User do
  use WhoIsRemote.Web, :model

  schema "users" do
    field :name, :string
    field :is_remote, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :is_remote])
    |> validate_required([:name, :is_remote])
  end
end
