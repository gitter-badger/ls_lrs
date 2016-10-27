defmodule LsLrs.PageController do
  use LsLrs.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
