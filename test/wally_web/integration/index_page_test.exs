defmodule WallyWeb.IndexPageTest do
  use WallyWeb.IntegrationCase, async: true

  import Wallaby.Query, only: [css: 2]

  test "has a huge hero section", %{session: session} do
    session
    |> visit("/")
    |> find(css(".phx-hero", count: 1))
    |> assert_has(css("h1", text: "Welcome to Phoenix"))
  end
end
