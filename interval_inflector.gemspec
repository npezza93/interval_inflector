# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "interval_inflector"
  spec.version = "1.0.0"
  spec.authors = ["Nick Pezza"]
  spec.email = ["pezza@hey.com"]

  spec.summary      =
    %q(Adds support for stringifying Duration objects into intervals)
  spec.homepage     = "https://github.com/npezza93/interval_inflector"
  spec.license      = "MIT"
  spec.require_path = "lib"
  spec.files        = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test)/}) }
  end

  spec.metadata = {
    "rubygems_mfa_required" => "true",
    "github_repo" => "ssh://github.com/npezza93/interval_inflector",
    "homepage_uri" => spec.homepage,
    "source_code_uri" => spec.homepage,
    "changelog_uri" => "https://github.com/npezza93/interval_inflector/releases",
  }

  spec.required_ruby_version = ">= 3.1.0"

  spec.add_runtime_dependency "activesupport", ">= 5.1"

  spec.add_development_dependency "minitest", ">= 5.17"
  spec.add_development_dependency "rake", "~> 13.0"
end
