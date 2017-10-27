#
# Be sure to run `pod lib lint CJBAdvancedUIColor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CJBAdvancedUIColor'
  s.version          = '1.0.1'
  s.summary          = 'CJBAdvancedUIColor is a lightweight UIColor extension that allows native translation of web style HEX color codes into UIColor objects.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
CJBAdvancedUIColor is an lightweight UIColor extension that allows native translation of web style HEX color codes into UIColor objects.  Additionally, there are multiple color pallets added that should be familiar to those familiar with web development.  I have included my own color pallet as well as that of the well-known Flat_UI.
                       DESC

  s.homepage         = 'https://github.com/CJonesBuild/CJBAdvancedUIColor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chris Jones' => '' }
  s.source           = { :git => 'https://github.com/CJonesBuild/CJBAdvancedUIColor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CJBAdvancedUIColor/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CJBAdvancedUIColor' => ['CJBAdvancedUIColor/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
