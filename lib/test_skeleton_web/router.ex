defmodule TestSkeletonWeb.Router do
  use TestSkeletonWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  pipeline :api_auth do
    plug(:accepts, ["json"])
  end

  scope "/api/v1", TestSkeletonWeb do
    pipe_through(:api)
  end
end
