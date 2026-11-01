import Config

config :scenic, :assets, module: Tiny.Assets

config :tiny, :viewport, [
  name: :main_viewport,
  size: {700, 600},
  default_scene: Tiny.Scene.Default,
  drivers: [
    [
      module: Scenic.Driver.Local,
      name: :local,
      window: [resizeable: false, title: "Tiny Application"],
    ]
  ]
]
