defmodule DialyzerNew.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      DialyzerNew.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: DialyzerNew.PubSub},
      # Start Finch
      {Finch, name: DialyzerNew.Finch}
      # Start a worker by calling: DialyzerNew.Worker.start_link(arg)
      # {DialyzerNew.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: DialyzerNew.Supervisor)
  end
end
