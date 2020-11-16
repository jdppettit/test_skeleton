defmodule TestSkeletonWeb.ChannelCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      # Import conveniences for testing with channels
      import Phoenix.ChannelTest
      import TestSkeletonWeb.ChannelCase

      # The default endpoint for testing
      @endpoint TestSkeletonWeb.Endpoint
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(TestSkeleton.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(TestSkeleton.Repo, {:shared, self()})
    end

    :ok
  end
end
