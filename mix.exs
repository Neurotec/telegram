defmodule Telegram.Mixfile do
  use Mix.Project

  def project do
    [
      app: :telegram,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:maxwell, "~> 2.2"},
      {:poison, "~> 3.1"},
      {:ex_doc, "~> 0.16", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      source_url: "https://github.com/visciang/telegram",
      extras: ["README.md"],
    ]
  end
end