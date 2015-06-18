#
# Be sure to run `pod lib lint HintView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "HintView"
  s.version          = "0.1.0"
  s.summary          = "HintView provide you a convenience way to show a full screen hintview"
  s.description      = <<-DESC
                        You could use it anywhere under any view and it will popup to show the hint in full screen mode when u called.
                        Once the user touch the screen again, the hint view will disappear automatically.
                      DESC
  s.homepage         = "https://github.com/hnchan/HintView"
  s.screenshots      = "https://raw.githubusercontent.com/hnchan/HintView/master/screenshot.png"
  s.license          = 'MIT'
  s.author           = { "Alex Chan" => "hnchan@gmail.com" }
  s.source           = { :git => "https://github.com/hnchan/HintView.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'HintView' => ['Pod/Assets/*.png']
  }

end
