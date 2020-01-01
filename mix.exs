defmodule IdentityPlug.MixProject do
  use Mix.Project

  def project do
    [
      app: :identity_plug,
      version: "0.0.1",
      elixir: "~> 1.9",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Identity.Plug",
      source_url: "https://github.com/abiwinanda/identity_plug"
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
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Plug for Identity"
  end

  defp package() do
    [
      # These are the default files included in the package
      files: [
        "lib",
        "mix.exs",
        "README.md",
        ".formatter.exs"
      ],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/abiwinanda/identity_plug"}
    ]
  end
end
