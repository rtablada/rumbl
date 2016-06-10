defmodule Rumbl.WatchController do
  use Rumbl.Web, :controller
  alias Rumbl.Video

  def show(conn, %{"id" => id}) do
    video = Repo.get!(Video, id)

    conn
    |> render("show.html", video: video)
  end
end
