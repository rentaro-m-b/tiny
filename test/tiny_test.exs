defmodule TinyTest do
  use ExUnit.Case
  doctest Tiny

  test "start generate supervisor and chidren" do
    {:ok, sup_pid} = Tiny.start(:test, [])
    assert [{Scenic, _pid, :supervisor, [Scenic]}] = Supervisor.which_children(sup_pid)
  end
end
