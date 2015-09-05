#
# Fantom Digital Pod Spec
#

Pod::Spec.new do |s|
  s.name             = "fantomdmobjc"
  s.version          = "0.1.0"
  s.summary          = "fantomdmobjc is a download manager written in ObjC that downloads multiple files safely."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                       DESC

  s.homepage         = "https://github.com/Shuurai/fantomdmobjc"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "shuurai" => "hyperfan@hotmail.com" }
  s.source           = { :git => "https://github.com/Shuurai/fantomdmobjc.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/fantomdigital'

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
