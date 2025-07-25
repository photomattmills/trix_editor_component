defmodule TrixEditor.MixProject do
  use Mix.Project

  def project do
    [
      app: :trix_editor_component,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.0"},
      {:phoenix_live_view, "~> 1.0"},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false}
    ]
  end
end
