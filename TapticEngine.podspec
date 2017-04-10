Pod::Spec.new do |s|
  s.name                  = 'TapticEngine'
  s.version               = '1.1.0'
  s.summary               = '"TapticEngine" generates iOS Device vibrations.'
  s.description           = <<-DESC
                            TapticEngine generates haptic feedback vibrations on iOS device.
                            This library wrapps on [UIImpactFeedbackGenerator](https://developer.apple.com/reference/uikit/uiimpactfeedbackgenerator), [UISelectionFeedbackGenerator](https://developer.apple.com/reference/uikit/uiselectionfeedbackgenerator), [UINotificationFeedbackGenerator](https://developer.apple.com/reference/uikit/uinotificationfeedbackgenerator).
                            DESC
  s.homepage              = 'https://github.com/WorldDownTown/TapticEngine'
  s.screenshots           = 'https://dl2.pushbulletusercontent.com/TKSfPYAu8pl5NARwARj2E3j87llwnXcs/taptic_engine.png'
  s.license               = { type: 'MIT', file: 'LICENSE' }
  s.author                = { WorldDownTown: 'WorldDownTown@gmail.com' }
  s.source                = { git: 'https://github.com/WorldDownTown/TapticEngine.git', tag: s.version.to_s }
  s.social_media_url      = 'https://twitter.com/WorldDownTown'
  s.ios.deployment_target = '9.0'
  s.source_files          = 'Sources/**/*.swift'
  s.frameworks            = ['UIKit']
end
