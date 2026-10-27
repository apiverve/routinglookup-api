Pod::Spec.new do |s|
  s.name             = 'APIVerveRoutingNumberLookup'
  s.version          = '1.2.3'
  s.summary          = 'Routing Number Lookup is a bank routing number lookup and validation API for US ABA numbers.'
  s.description      = <<-'DESC'
Routing Number Lookup is a bank routing number lookup and validation API for US ABA numbers. It checks the check digit, finds the bank name and state, and identifies the routing type and Federal Reserve district, while paid plans add full street addresses, branch details, and replacement numbers.

This iOS/macOS SDK provides a convenient way to access the Routing Number Lookup from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/routinglookup?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/routinglookup-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveRoutingNumberLookup/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
