defmodule CLITest do
  use ExUnit.Case

  test "start generate supervisor and chidren" do
    {:ok, sup_pid} = Tiny.CLI.start(:test, [])
    assert [{Scenic, _pid, :supervisor, [Scenic]}] = Supervisor.which_children(sup_pid)
  end
end
