Pod::Spec.new do |s|
  s.name                    = "AttributedStringTag"
  s.version                 = "1.0.0"
  s.homepage                = "https://github.com/magyarosibotond/AttributedStringTag"
  s.license                 = { :type => "MIT", :file => "LICENSE" }
  s.author                  = "Botond Magyarosi"
  s.summary                 = "Small framework for easily applying attributes to NSAttributedString."
  
  s.swift_version           = "4.2"
  
  s.ios.deployment_target   = '8.0'
  s.osx.deployment_target   = '10.10'
  
  s.source                  = { :git => "https://github.com/magyarosibotond/AttributedStringTag.git", :tag => "#{s.version}" }
  s.source_files            = "Sources/**/*.swift"
end