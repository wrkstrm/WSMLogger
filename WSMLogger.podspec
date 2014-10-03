#
# Be sure to run `pod lib lint WSMLogger.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "WSMLogger"
  s.version          = "0.1.0"
  s.summary          = "Super simple NSLog replacement that is better for multi-threaded code on iOS."
  s.description      = <<-DESC
                       This logger overrides the NSLog function with a macro that uses Cocoalumberjack under the hood.
                       It is specifically usefull for debugging multi-threaded code.
                       DESC
  s.homepage         = "https://github.com/wrkstrm/WSMLogger"
  s.license          = 'MIT'
  s.author           = { "Cristian Monterroza" => "cmonterroza@wrkstrm.me" }
  s.source           = { :git => "https://github.com/wrkstrm/WSMLogger.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/wrkstrm'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'WSMLogger' => ['Pod/Assets/*.png']
  }
  
  s.dependency 'CocoaLumberjack'
end
