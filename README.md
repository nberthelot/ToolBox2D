# ToolBox2D

[![CI Status](https://img.shields.io/travis/nberthelot/ToolBox2D.svg?style=flat)](https://travis-ci.org/nberthelot/ToolBox2D)
[![Version](https://img.shields.io/cocoapods/v/ToolBox2D.svg?style=flat)](https://cocoapods.org/pods/ToolBox2D)
[![License](https://img.shields.io/cocoapods/l/ToolBox2D.svg?style=flat)](https://cocoapods.org/pods/ToolBox2D)
[![Platform](https://img.shields.io/cocoapods/p/ToolBox2D.svg?style=flat)](https://cocoapods.org/pods/ToolBox2D)

ToolBox is a ToolBox2D library  for 2D game written in Swift.

- [Installation](#installation)
- [Texrure Manager](#texrure-manager)
- [Requirements](#requirements)
- [Author](#Author)



## Installation

ToolBox2D is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ToolBox2D'
```

## texrure Manager
```swift
//Definition
extension TextureDetails.Atlas {
  public static let adventurer = TextureDetails.Atlas("adventurer")
}

extension TextureDetails.Sprite {
  public static let adventurerRun = TextureDetails.Sprite("adventurer-run-", atlas: TextureDetails.Atlas.adventurer, timePerFrame: 0.23)

  public static let adventurerIdle = TextureDetails.Sprite("adventurer-idle-", atlas: TextureDetails.Atlas.adventurer, timePerFrame: 0.23)
}

//Load atalas
TextureManager.load(atlasNames: ["adventurer"])

//Get textures
let textures = TextureManager.textures(fromDetails: .adventurerIdle)
```
## Requirements

- iOS 10.0+

## Author

Nicolas Berthelot

## License

ToolBox2D is available under the MIT license. See the LICENSE file for more info.
