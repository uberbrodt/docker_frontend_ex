defmodule DockerFrontendExWeb.PageController do
  use DockerFrontendExWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
