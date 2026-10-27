defmodule Tiny.MixProject do
  use Mix.Project

  def project do
    [
      app: :tiny,
      version: "0.1.0",
      elixir: "~> 1.20",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def cli do
    [
      preferred_envs: [espec: :test],
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:espec, "~> 1.10.0", only: :test},
      {:scenic, "~> 0.11.0"},
      {:scenic_driver_local, "~> 0.11.0"},
    ]
  end
end
