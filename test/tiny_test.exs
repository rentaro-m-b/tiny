defmodule TinyTest do
  use ExUnit.Case
  doctest Tiny

  test "start generate supervisor and chidren" do
    sup_pid = Tiny.start(:test, [])
    IO.puts Supervisor.which_children(sup_pid)
  end
end
