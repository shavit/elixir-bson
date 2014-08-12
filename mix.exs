defmodule Bson.Mixfile do
  use Mix.Project

  def project do
    [ app: :bson,
      name: "bson",
      version: "0.3.1",
      elixir: "~> 0.15.1",
      description: "BSON implementation for Elixir",
      source_url: "https://github.com/checkiz/elixir-bson",
      deps: deps(Mix.env),
      package: package,
      docs: &docs/0 ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  defp deps(:docs) do
    [{ :ex_doc, github: "elixir-lang/ex_doc" }]
  end
  defp deps(_), do: []

  defp docs do
    [ readme: true,
      main: "README",
      source_ref: System.cmd("git rev-parse --verify --quiet HEAD") ]
  end

  defp package do
    [ contributors: ["jerp"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/checkiz/elixir-bson",
        "Documentation" => "https://checkiz.github.io/elixir-bson"
      } ]
  end
end
