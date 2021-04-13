# frozen_string_literal: true

require_relative "lib/jpeng_palindrome/version"

Gem::Specification.new do |spec|
  spec.name          = "jpeng_palindrome"
  spec.version       = JpengPalindrome::VERSION
  spec.authors       = ["Pjjean"]
  spec.email         = ["gitproject_pj@yahoo.com"]

  spec.summary       = %q{Palindrome detector}
  spec.description   = %q{Learn Enough Ruby palindrome detector}
  spec.homepage      = "https://github.com/Pjjean/jpeng-palindrome.git"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  # #prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_hots' to allow pushing to a single host or delete this section to allow pshing to any host.
     #if spec.repsond_to?(:metadata)
        #spec.metadata["allowed_push_host"]="https://rubygems.org/"
     #else
        #raise "RubyGems 2.0 or newer iis required to protect against "\ "public gem pushes."
      #end
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  #
  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
