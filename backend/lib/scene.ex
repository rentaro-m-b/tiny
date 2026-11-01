defmodule Tiny.Scene.Default do
  use Scenic.Scene

  alias Scenic.Graph
  import Scenic.Primitives
  import Scenic.Components

  @graph Graph.build()
    |> text("Hello, World!", font_size: 22, translate: {20, 80})
    |> button("Do something", translate: {20, 100})

  def init(scene, _param, _opts) do
    scene = push_graph(scene, @graph)
    {:ok, scene}
  end
end
