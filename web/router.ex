defmodule WhoIsRemote.Router do
  use WhoIsRemote.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WhoIsRemote do
    pipe_through :browser # Use the default browser stack

    resources "/", UserController, only: [:index, :new, :create]
  end

  # Other scopes may use custom stacks.
  # scope "/api", WhoIsRemote do
  #   pipe_through :api
  # end
end
