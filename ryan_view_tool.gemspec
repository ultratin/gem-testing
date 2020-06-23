# frozen_string_literal: true

require_relative 'lib/ryan_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = 'ryan_view_tool'
  spec.version       = RyanViewTool::VERSION
  spec.authors       = ['Ryan Tin']
  spec.email         = ['ryantin1995@gmail.com']

  spec.summary       = 'Test Gem upload into rubygems'
  spec.description   = 'Provides testing ground for me'
  spec.homepage      = 'https://thispersondoesnotexist.com/'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'http://mygemserver.com'
  html_safe
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = "TODO: Put your gem's public repo URL here."
  spec.metadata['changelog_uri'] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
