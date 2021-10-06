require_relative "lib/weopen/version"

Gem::Specification.new do |spec|
  spec.name          = "weopen"
  spec.version       = Weopen::VERSION
  spec.authors       = ["elibiz443"]
  spec.email         = ["elibiz443@gmail.com"]

  spec.summary       = "Simple gem that shows whether your business is still open or closed"
  spec.description   = "This gem attempts to easen the situation where you want to show whether
   a business is open or closed without writing too much code."
  spec.homepage      = "https://github.com/elibiz443/weopen"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/elibiz443/weopen"
  spec.metadata["changelog_uri"] = "https://github.com/elibiz443/weopen/changelogs"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2.28"
  spec.add_development_dependency 'rails', '~> 6.1', '>= 6.1.4.1'

  spec.add_dependency 'rails', '~> 6.1', '>= 6.1.4.1'
end
