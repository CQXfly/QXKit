#
# Be sure to run `pod lib lint QXKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QXKit'
  s.version          = '0.1.0'
  s.summary          = 'its a nice day for write it'
  s.swift_version    = '4.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = ' Swift Util tools for iOS developer we support Swift 4.1 and higher than iOS8'

  s.homepage         = 'https://github.com/CQXfly/QXKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '905799827@qq.com' => 'firefoxdraging@gmail.com' }
  s.source           = { :git => 'https://github.com/CQXfly/QXKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/chongqingxu'

  s.ios.deployment_target = '8.0'

  s.source_files = 'QXKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'QXKit' => ['QXKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
