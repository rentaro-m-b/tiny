defmodule Tiny.CLI do
  use Application

  def start(_type, _args) do
    main_viewport_config = Application.get_env(:tiny, :viewport)
    children = [ {Scenic, [main_viewport_config]} ]
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
