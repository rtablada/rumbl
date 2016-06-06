defmodule Rumbl.LayoutView do
  use Rumbl.Web, :view

  def fa_with_text(icon, text) do
    {:safe, "<i class=\"fa fa-#{icon} fa-fw\"></i> #{text}"}
  end
end
