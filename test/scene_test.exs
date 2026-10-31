defmodule SceneTest do
  use ExUnit.Case

  test "init scene" do
    opts = [theme: :dark]
    param = nil
    scene = %Scenic.Scene{
      viewport: %Scenic.ViewPort{
        name: :main_viewport,
        pid: :c.pid(0, 0, 0),
        script_table: :ets.new(:script_table, [:set, :public]),
        size: {700, 600},
      },
      pid: :c.pid(0,0,1),
      module: Tiny.Scene.Default,
      theme: :dark,
      id: "_main_",
      parent: :c.pid(0,0,0),
      children: %{},
      child_supervisor: :c.pid(0,0,2),
      assigns: %{},
      supervisor: :c.pid(0,0,3),
      stop_pid: :c.pid(0,0,4)
    }

    assert {:ok, _scene} = Tiny.Scene.Default.init(scene, param, opts)
  end
end
