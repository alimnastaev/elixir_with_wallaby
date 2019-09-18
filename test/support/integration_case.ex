defmodule WallyWeb.IntegrationCase do
  @moduledoc """
  This module defines the test case to be used by
  integration tests
  """

  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL
      alias Wally.Repo
      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      import WallyWeb.Router.Helpers
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Wally.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Wally.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(Wally.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end
