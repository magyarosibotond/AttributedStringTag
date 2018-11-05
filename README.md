# 🖍 AttributedStringTag

- [About](#about)
- [Requirements](#requirements)
- [Features](#features)
- [Installation Instructions](#installation-instructions)
    - [Swift Package Manager](#swift-package-manager)
    - [CocoaPods](#cocoapods)
    - [Carthage](#carthage)
- [Setup](#setup)
- [License](#license)

## About

Small framework for easily applying attributes to NSAttributedString.

![Example](https://raw.githubusercontent.com/magyarosibotond/AttributedStringTag/master/res/text_example.png)

## Requirements

- iOS 8.0+ / macOS 10.10+
- XCode 10.0+
- Swift 4.2+

## Features

- [x] Match tags and apply attributes to it. 

## Installation Instructions

### Swift Package Manager

```swift
.Package(url: "https://github.com/magyarosibotond/AttributedStringTag.git", majorVersion: 1)
```

### CocoaPods

```ruby
pod 'AttributedStringTag'
```

### Carthage

```swift
github "magyarosibotond/AttributedStringTag"
```

## Usage

AttributedStringTag provides two extensions to manipulate your NSAttributedStrings.

You can initialize with a given string and attributes:

```swift
let text = "Welcome back <b>John, <c>Logout</c></b>"

label.attributedText = NSAttributedString(string: text,
                                          applyintAttributesForTag: ["b": [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15)],
                                                                     "c": [NSAttributedString.Key.foregroundColor: UIColor.red]])
```

You can also use NSMutableAttributedString and mutate the text afterwards:

```swift
let text = "Welcome back <b>John, <c>Logout</c></b>"

label.attributedText = NSMutableAttributedString(string: text)
    .setAttributes([NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15)], forTag: "b")
    .setAttributes([NSAttributedString.Key.foregroundColor: UIColor.red], forTag: "c")
```

## License

AttributedStringTag is released under the MIT license. [See LICENSE](https://github.com/magyarosibotond/AttributedStringTag/blob/master/LICENSE) for details.
