defmodule LiveviewbugWeb.Router do
  use LiveviewbugWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {LiveviewbugWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LiveviewbugWeb do
    pipe_through :browser

    live "/", PageLive, :index
    live "/form", FormLive, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", LiveviewbugWeb do
  #   pipe_through :api
  # end
end
