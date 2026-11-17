defmodule Jetway.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/jamescarr/jetway"

  def project do
    [
      app: :jetway,
      version: @version,
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Jetway",
      description: "A NATS JetStream producer for Broadway, built on gnat",
      package: package(),
      docs: docs()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:broadway, "~> 1.3"},
      {:gnat, "~> 1.19"},
      {:nimble_options, "~> 1.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      main: "Jetway.Producer",
      source_ref: "v#{@version}",
      source_url: @source_url,
      extras: ["README.md"]
    ]
  end

  defp package do
    %{
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => @source_url}
    }
  end
end
