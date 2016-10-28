defmodule WhoIsRemote.UserTest do
  use WhoIsRemote.ModelCase

  alias WhoIsRemote.User

  @valid_attrs %{is_remote: true, name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
