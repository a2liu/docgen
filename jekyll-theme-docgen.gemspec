# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-docgen"
  spec.version       = "1.2.1"
  spec.authors       = ["Albert Liu"]
  spec.email         = ["albertymliu@gmail.com"]

  spec.summary       = "A document generation helper theme for Jekyll."
  spec.homepage      = "https://github.com/a1liu/docgen"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll", "~> 3.5"

  # spec.add_development_dependency "bundler"
end
