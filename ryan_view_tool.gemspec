require_relative 'lib/ryan_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "ryan_view_tool"
  spec.version       = RyanViewTool::VERSION
  spec.authors       = ["Ryan Tin"]
  spec.email         = ["ryantin1995@gmail.com"]

  spec.summary       = %q{Test Gem upload into rubygems}
  spec.description   = %q{Provides testing ground for me}
  spec.homepage      = "https://github.com/ultratin/gem-testing."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ultratin/gem-testing"
  spec.metadata["changelog_uri"] = "https://github.com/ultratin/gem-testing/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
