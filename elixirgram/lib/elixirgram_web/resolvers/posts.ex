defmodule ElixirgramWeb.Resolvers.Posts do
    def photos(_, _, _) do
        {:ok, Elixirgram.Posts.list_photos}
    end

    def photo(_, %{id: id}, _) do
        {:ok, Elixirgram.Posts.get_photo!(id)}
    end
end