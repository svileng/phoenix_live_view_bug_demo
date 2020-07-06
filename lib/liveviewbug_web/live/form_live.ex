defmodule LiveviewbugWeb.FormLive do
  use LiveviewbugWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :bar, "")}
  end

  def render(assigns) do
    LiveviewbugWeb.LayoutView.render("form.html", assigns)
  end

  def handle_event("changed", %{"_target" => ["bug", "foo"], "bug" => params}, socket) do
    socket =
      assign(socket, [
        bar: params["foo"]
      ])

    {:noreply, socket}
  end

  def handle_event("changed", %{"_target" => ["bug", "bar"], "bug" => params}, socket) do
    socket =
      assign(socket, [
        bar: params["bar"]
      ])

    {:noreply, socket}
  end

  def handle_event("changed", _params, socket), do: {:noreply, socket}
end
