defmodule ExMQTT.MixProject do
  use Mix.Project

  def project do
    [
      app: :exmqtt,
      version: "0.2.1",
      elixir: "~> 1.17",
      description: "An Elixir wrapper for erlang emqtt lib",
      package: package(),
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

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:emqtt, github: "emqx/emqtt", tag: "1.13.2", system_env: [{"BUILD_WITHOUT_QUIC", "1"}]},
      {:ex_doc, "~> 0.34.2", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/suddengunter/exmqtt"}
    ]
  end
end
