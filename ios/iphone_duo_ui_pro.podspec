#
# Run `pod lib lint iphone_duo_ui_pro.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'iphone_duo_ui_pro'
  s.version          = '1.0.0'
  s.summary          = 'Fold-aware Flutter widgets for iPhone Duo.'
  s.description      = <<-DESC
Native bridge that reports iPhone Duo reserved regions, hinge state, UIKit size
classes and the vertical bar edge to Flutter.
                       DESC
  s.homepage         = 'https://github.com/szymdzie/iphone_duo_ui_pro'
  s.license          = { :file => '../LICENSE' }
  s.author           = 'Szymon Dziedzic'
  s.source           = { :path => '.' }
  s.source_files     = 'iphone_duo_ui_pro/Sources/iphone_duo_ui_pro/**/*.swift'
  s.dependency 'Flutter'
  s.platform         = :ios, '15.0'
  s.swift_version    = '5.0'

  # The iPhone Duo APIs need the iOS 27.1 SDK; DuoBridge.swift detects it on its own.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
end
