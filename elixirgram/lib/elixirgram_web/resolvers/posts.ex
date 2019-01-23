defmodule ElixirgramWeb.Resolvers.Posts do
    def photos(_, _, _) do
        {:ok, Elixirgram.Posts.list_photos}
    end
end