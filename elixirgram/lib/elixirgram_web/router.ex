defmodule ElixirgramWeb.Router do
  use ElixirgramWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphql", Absinthe.Plug,
      schema: ElixirgramWeb.Schema

    if Mix.env == :dev do
      forward "/graphiql", Absinthe.Plug.GraphiQL,
        schema: ElixirgramWeb.Schema
    end
  end
end