$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ffcrm_direct_marketing_helpers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ffcrm_direct_marketing_helpers"
  s.version     = FfcrmDirectMarketingHelpers::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of FfcrmDirectMarketingHelpers."
  s.description = "TODO: Description of FfcrmDirectMarketingHelpers."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
