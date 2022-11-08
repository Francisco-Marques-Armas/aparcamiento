# frozen_string_literal: true

require_relative "lib/aparcamiento/version"

Gem::Specification.new do |spec|
  spec.name = "aparcamiento"
  spec.version = Aparcamiento::VERSION
  spec.authors = ["fmararm"]
  spec.email = ["alu0101438412@ull.edu.es"]

  spec.summary = ""
  spec.homepage = "https://github.com/ULL-ESIT-LPP-2223/gema-francisco-marques-armas-alu0101438412.git"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ULL-ESIT-LPP-2223/gema-francisco-marques-armas-alu0101438412.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
