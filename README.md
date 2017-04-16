# TapticEngine

[![License](https://img.shields.io/:license-mit-blue.svg)](https://doge.mit-license.org)
![Swift](https://img.shields.io/badge/Swift-3.1-orange.svg?style=flat)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/TapticEngine.svg?style=flat)](http://cocoadocs.org/docsets/TapticEngine/)
[![Downloads with CocoaPods](https://img.shields.io/cocoapods/dt/TapticEngine.svg)](http://cocoadocs.org/docsets/TapticEngine/)
[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/matteocrippa/awesome-swift#haptic-feedback)

## Overview
TapticEngine generates haptic feedback vibrations on iOS device.
This library wrapps on [UIImpactFeedbackGenerator](https://developer.apple.com/reference/uikit/uiimpactfeedbackgenerator), [UISelectionFeedbackGenerator](https://developer.apple.com/reference/uikit/uiselectionfeedbackgenerator), [UINotificationFeedbackGenerator](https://developer.apple.com/reference/uikit/uinotificationfeedbackgenerator).

<img src="https://raw.githubusercontent.com/WorldDownTown/TapticEngine/master/images/taptic_engine.png" alt="demo_screenshot" width="375px" />

## Demo
Build Xcode project.

1. Open TapticEngine.xcodeproj.
2. Change Scheme to `TapticEngineDemo`
3. Run

## Usage

```swift
// Triggers an impact feedback between small, light user interface elements. (`UIImpactFeedbackStyle.light`)
TapticEngine.impact.feedback(.light)

// Triggers an impact feedback between moderately sized user interface elements. (`UIImpactFeedbackStyle.medium`)
TapticEngine.impact.feedback(.medium)

// Triggers an impact feedback between large, heavy user interface elements.  (`UIImpactFeedbackStyle.heavy`)
TapticEngine.impact.feedback(.heavy)

// Triggers a selection feedback to communicate movement through a series of discrete values.
TapticEngine.selection.feedback()

// Triggers a notification feedback, indicating that a task has completed successfully. (`UINotificationFeedbackType.success`)
TapticEngine.notification.feedback(.success)

// Triggers a notification feedback, indicating that a task has produced a warning. (`UINotificationFeedbackType.warning`)
TapticEngine.notification.feedback(.warning)

// Triggers a notification feedback, indicating that a task has failed. (`UINotificationFeedbackType.error`)
TapticEngine.notification.feedback(.error)

// Prepare an impact feedback for `UIImpactFeedbackStyle.light`.
TapticEngine.impact.prepare(.light)

// Prepare a selection feedback.
TapticEngine.selection.prepare()

// Prepare a notification feedback.
TapticEngine.notification.prepare()
```

## Requirements
- Swift 3.0+
- iOS 9.0+ (**But it works on iOS 10 or later. On iOS 9, it does nothing.**)

## Installation

### Carthage
TapticEngine is available through [Carthage](https://github.com/Carthage/Carthage). To install it, simply add the following line to your Cartfile:

```
github "WorldDownTown/TapticEngine"
```

### CocoaPods
TapticEngine is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'TapticEngine'
```

### Manually
Download and drop `TapticEngine/Sources` folder in your project.

## Author
WorldDownTown, WorldDownTown@gmail.com

## License
TapticEngine is available under the MIT license. See the LICENSE file for more info.

