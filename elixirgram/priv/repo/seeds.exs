alias Elixirgram.{Posts, Repo}

mock_photos = 9

photos_list = [
    "https://images.unsplash.com/photo-1524940341013-28b7a45da417?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1301&q=80",
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1513682121497-80211f36a7d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
    "https://images.unsplash.com/photo-1520881363902-a0ff4e722963?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1500672860114-9e913f298978?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=749&q=80",
    "https://images.unsplash.com/photo-1492446845049-9c50cc313f00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
    "https://images.unsplash.com/photo-1547881826-605c6abe45c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
    "https://images.unsplash.com/photo-1547823765-12b9fab84fc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=376&q=80",
    "https://images.unsplash.com/photo-1547881826-0e4e6f91569c?ixlib=rb-1.2.1&auto=format&fit=crop&w=355&q=80",
    "https://images.unsplash.com/photo-1547855390-aef09067a8c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=325&q=80"
  ]

  for idx <- 0..mock_photos do
      photo = %{
          image_url: Enum.at(photos_list, idx),
          caption: Faker.Lorem.Shakespeare.hamlet
      }

      %Posts.Photo{}
      |> Posts.Photo.changeset(photo)
      |> Repo.insert!
  end