defmodule LiveviewbugWeb.FormLive do
  use LiveviewbugWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    LiveviewbugWeb.LayoutView.render("form.html", assigns)
  end
end
