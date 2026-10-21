# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_routinglookup"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Routing Number Lookup API - Ruby Client"
  spec.description   = "Routing Number Lookup is a bank routing number lookup API that verifies US ABA routing numbers to confirm bank names, states, and checksum validity. It identifies the routing type and Federal Reserve district, while paid plans add full street addresses, branch details, and replacement numbers."
  spec.homepage      = "https://apiverve.com/marketplace/routinglookup?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/routinglookup-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/routinglookup"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
