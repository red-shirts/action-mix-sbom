defmodule MixSbomAction.Mixfile do
  use Mix.Project

  def project do
    [
      app: :mix_sbom_action,
      version: "0.0.1",
      elixir: ">= 1.9.0",
      deps: [
        {:jason, "~> 1.0"}
      ]
    ]
  end
end
