
# ShakeToRevealImageView

<!-- Badges -->

[![Swift Compatibility-badge]][Swift Package Index]
[![Platform Compatibility-badge]][Swift Package Index]
[![Release-badge]][Release]
[![License Badge-badge]][license]
[![Pod Version-badge]][CocoaPods]
[![SPM Compatible-badge]][Swift Package Manager]

<!-- Description -->

ShakeToRevealImageView is a dynamic and customizable iOS library designed to add an interactive 'shake to reveal' effect to any image. With this library, developers can easily implement a fun and engaging user experience by enabling images to be revealed with a shake gesture. It provides full customization over the UI overlay, allowing developers to adjust the color, opacity, and design, while seamlessly integrating haptic feedback using UIImpactFeedbackGenerator. This flexible solution gives developers complete control over the appearance and interaction, making it effortless to enhance user engagement with just a few lines of code

<!-- Previews -->
<img width=260px src="https://github.com/jay-buddhdev/ShakeToRevealImageView/blob/feature/Initial_setup/ShakeToRevealImageView.gif" />

## Features

- [x] Support Overlay Color
- [x] Support Different Haptic Feedback
- [x] Support All UIImageView Properties

## Requirements

- iOS 15+
- XCode 15+
- Swift 5.9+

## Installation

### Swift Package Manager

You can install `ShakeToRevealImageView` using [Swift Package Manager] by:

1. Go to `Xcode` -> `File` -> `Add Package Dependencies...`
2. Add package URL [https://github.com/jay-buddhdev/ShakeToRevealImageView]

### CocoaPods

[CocoaPods][CocoaPods.org] is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

Navigate to project root folder to integrate pod.

```bash
$ pod init
```

It will generate `Podfile` for your project. To integrate SSStoryStatus into your project specify it in your `Podfile`:

```ruby
platform :ios, '17.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'ShakeToRevealImageView'
end
```

Then, run the following command:

```bash
$ pod install
```

It will generate `<Project>.xcworkspace` file. From now on you should open the project using this file.

<details>
<summary><h4> Script Sandboxing Error</h4></summary>

If you face build error `Command PhaseScriptExecution failed with a nonzero exit code` then follow this steps:

Go to project `Build Settings` -. Search for `User Script Sandboxing` -> Set to `No`.

Refrence - [User Script Sandboxing]
</details>

## Usage

First import required package:

```swift
import ShakeToRevealImageView
```

`ShakeToRevealImageView` class in UIImageView in Storyboard

<img width=260px src="https://github.com/jay-buddhdev/ShakeToRevealImageView/blob/feature/Initial_setup/shakeToRevealImageView_CustomClass.png" />

 Add feedbackStyle in ViewController
```swift
imageView.feedbackStyle = .heavy
```
Support it by joining [stargazers] :star: for this repository.

## How to Contribute :handshake:

Whether you're helping us fix bugs, improve the docs, or a feature request, we'd love to have you! :muscle: \
Check out our __[Contributing Guide]__ for ideas on contributing.

## Bugs and Feedback

For bugs, feature feature requests, and discussion use [GitHub Issues].

## License

Distributed under the MIT license. See [LICENSE] for details.

<!-- Reference links -->

[Swift Package Manager]:    https://www.swift.org/package-manager

[Swift Package Index]:      https://swiftpackageindex.com/SimformSolutionsPvtLtd/ShakeToRevealImageView

[CocoaPods]:                https://cocoapods.org/pods/ShakeToRevealImageView

[CocoaPods.org]:            https://cocoapods.org/

[User Script Sandboxing]:   https://github.com/CocoaPods/CocoaPods/issues/11946#issuecomment-1587846325

[Release]:                  https://github.com/jay-buddhdev/ShakeToRevealImageView/releases/latest

[Customization Guide]:      docs/Customization.md

[stargazers]:               https://github.com/jay-buddhdev/ShakeToRevealImageView/stargazers

[Contributing Guide]:       CONTRIBUTING.md

[Github Issues]:            https://github.com/jay-buddhdev/ShakeToRevealImageView/issues

[license]:                  LICENSE

<!-- Badges -->

[Platform Compatibility-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fjay-buddhdev%2FShakeToRevealImageViews%2Fbadge%3Ftype%3Dplatforms

[Swift Compatibility-badge]:    https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fjay-buddhdev%2FShakeToRevealImageView%2Fbadge%3Ftype%3Dswift-versions

[Release-badge]:                https://img.shields.io/github/v/release/jay-buddhdev/ShakeToRevealImageView

[License Badge-badge]:          https://img.shields.io/github/license/jay-buddhdev/ShakeToRevealImageView

[Pod Version-badge]:            https://img.shields.io/cocoapods/v/ShakeToRevealImageView

[SPM Compatible-badge]:         https://img.shields.io/badge/Swift_Package_Manager-compatible-coolgreen