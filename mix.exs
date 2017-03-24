defmodule Diplomat.Mixfile do
  use Mix.Project

  def project do
    [app: :diplomat,
     version: "0.5.0",
     elixir: "~> 1.3",
     description: "A library for interacting with Google's Cloud Datastore",
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [:logger, :goth, :exprotobuf, :httpoison]]
  end

  defp deps do
    [
      {:credo, "~> 0.4", only: [:dev, :test]},
      {:goth, "~> 0.3"},
      {:exprotobuf, "~> 1.2"},
      {:httpoison, "~> 0.11"},
      {:poison, "~> 2.1 or ~> 3.0"},
      {:bypass, "~> 0.1", only: :test},
      {:mix_test_watch, "~> 0.2.5", only: :dev},
      {:ex_doc, "~> 0.14", only: :dev},
      {:earmark, "~> 1.0", only: :dev},
      {:uuid, "~> 1.1", only: :test},
    ]
  end

  defp package do
    [
      maintainers: ["Phil Burrows"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/peburrows/diplomat"}
    ]
  end
end
