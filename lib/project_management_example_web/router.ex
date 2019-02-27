defmodule ProjectManagementExampleWeb.Router do
  use ProjectManagementExampleWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :json_api do 
    plug :accepts, [":json_api"]
    plug JaSerializer.Deserializer
  end

  # Other scopes may use custom stacks.
  scope "/api", ProjectManagementExampleWeb do
    pipe_through :json_api

    resources "/projects", ProjectController, only: [:index, :show]
    resources "/documents", DocumentController, only: [:index, :show]
  end
end
