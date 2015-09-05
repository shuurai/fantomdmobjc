# Fantom Digital Pod Spec

Pod::Spec.new do |s|
  s.name             = "fantomdmobjc"
  s.version          = "0.1.0"
  s.summary          = "fantomdmobjc is a download manager written in ObjC that downloads multiple files safely."

  s.description      = <<-DESC
                        This library provides a static library to download multiple files from the web at the
                        same time. It is designed with concurrency and thread safety in mind, and asynchronous.
                        fantomDMOBJC uses NSOperation to efficiently manage connection queues.
                       DESC

  s.homepage         = "https://github.com/Shuurai/fantomdmobjc"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "shuurai" => "hyperfan@hotmail.com" }
  s.source           = { :git => "https://github.com/Shuurai/fantomdmobjc.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'fantomdmobjc' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
