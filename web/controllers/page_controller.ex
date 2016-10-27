defmodule WhoIsRemote.PageController do
  use WhoIsRemote.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
