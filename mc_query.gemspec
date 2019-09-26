require_relative 'lib/mc_query/version'

Gem::Specification.new do |spec|
  spec.name          = "mc_query"
  spec.version       = MCQuery::VERSION
  spec.authors       = ["Ken Spencer"]
  spec.email         = ["me@iotaspencer.me"]

  spec.summary       = %q{RCON Client/shell for minecraft}
#  spec.description   = %q{T#O#D#O#: Write a longer description or delete this line.}
  spec.homepage      = "https://mc-query.iotaspencer.me/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/IotaSpencer/mc_query"
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'minecraft-query', '~> 1.0.0'
end
