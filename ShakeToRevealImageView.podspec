#
# Be sure to run `pod lib lint ShakeToRevealImageView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ShakeToRevealImageView'
  s.version          = '1.0.0'
  s.summary          = 'ShakeToRevealImageView adds a fun and interactive 'shake to reveal' feature to images, with full customization options for UI overlays and haptic feedback'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
ShakeToRevealImageView allows developers to easily integrate a 'shake to reveal' gesture for images in their iOS apps. The library offers flexible customization options, including the ability to adjust the overlay color and choose from different haptic feedback styles using UIImpactFeedbackGenerator. Whether you’re building a game, a productivity app, or anything in between, this pod enhances the user experience with an engaging, tactile interaction that’s fully configurable right from the storyboard
                       DESC

  s.homepage         = 'https://github.com/jay-buddhdev/ShakeToRevealImageView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jay Buddhdev' => 'jaybuddhdev240@gmail.com' }
  
  s.platform = :ios
  
  s.source           = { :git => 'https://github.com/jay-buddhdev/ShakeToRevealImageView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '15.0'
  s.swift_version = '5.0'

  s.source_files = '/Sources/**/*'

end