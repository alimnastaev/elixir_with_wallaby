ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Wally.Repo, :manual)

{:ok, _} = Application.ensure_all_started(:wallaby)
Application.put_env(:wallaby, :base_url, WallyWeb.Endpoint.url())
