defmodule JSON.Mixfile do
  use Mix.Project

  def project do
    [ app: :json,
      version: "0.3.0",
      elixir: "~> 0.14.1",
      deps: deps(Mix.env),
      package: package,
      source_url: "https://github.com/cblage/elixir-json",
      homepage_url: "http://expm.co/json" ]
  end

  def application, do: []

  def deps(:prod), do: []

  def deps(:docs) do
    deps(:prod) ++ [
      { :ex_doc, github: "elixir-lang/ex_doc" },
      { :earmark, github: "pragdave/earmark" }
    ]
  end

  def deps(_), do: deps(:prod)

  def package do
    [ contributors: ["cblage"],
      licenses: ["BSD 3-Clause"],
      links: [ { "GitHub", "https://github.com/cblage/elixir-json" } ] ]
  end
end
