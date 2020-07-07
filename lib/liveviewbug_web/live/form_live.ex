defmodule LiveviewbugWeb.FormLive do
  use LiveviewbugWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, foo: "", bar: "", flag: true)}
  end

  def render(assigns) do
    LiveviewbugWeb.LayoutView.render("form.html", assigns)
  end

  def handle_event("changed", %{"_target" => ["bug", "foo"], "bug" => params}, socket) do
    socket = assign(socket, foo: params["foo"], bar: params["foo"])
    {:noreply, socket}
  end

  def handle_event("changed", %{"_target" => ["bug", "bar"]}, socket) do
    # This assignment is not related to the form but will
    # cause the `foo` field to go blank, while the `bar` field will be okay.
    {:noreply, assign(socket, flag: false)}
  end

  def handle_event("changed", _params, socket), do: {:noreply, socket}
end
