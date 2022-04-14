# frozen_string_literal: true

require_relative "lib/timeline_rails_helper/version"

Gem::Specification.new do |spec|
  spec.name        = "timeline_rails_helper"
  spec.version     = TimelineRailsHelper::VERSION
  spec.authors     = ["smapira"]
  spec.email       = ["25024587+smapira@users.noreply.github.com"]
  spec.homepage    = "https://github.com/smapira/timeline_rails_helper"
  spec.summary     = "A helper to display vertical time line series."
  spec.description = "Provides a timeline_molecules_tag helper to draw a vertical time line usable with vanilla CSS."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/smapira/timeline_rails_helper"
  spec.metadata["changelog_uri"] = "https://github.com/smapira/timeline_rails_helper"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails"
  spec.add_dependency "sassc-rails"

  spec.add_development_dependency "better_errors"
  spec.add_development_dependency "binding_of_caller"
  spec.add_development_dependency "listen"
  spec.add_development_dependency "minitest-reporters"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "puma"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rdoc"
  spec.add_development_dependency "rubocop-rails"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "web-console"
end
