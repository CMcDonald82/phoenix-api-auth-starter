defmodule PhoenixApiAuthStarterWeb.Router do
  use PhoenixApiAuthStarterWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixApiAuthStarterWeb do
    pipe_through :api
  end
end
