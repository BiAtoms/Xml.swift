[![Platform Linux](https://img.shields.io/badge/platform-linux-brightgreen.svg)](#)
[![Platform iOS macOS tvOS](https://img.shields.io/cocoapods/p/Xml.swift.svg?style=flat)](https://github.com/BiAtoms/Xml.swift)
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/Xml.swift.svg)](https://cocoapods.org/pods/Xml.swift)
[![Carthage Compatible](https://img.shields.io/badge/carthage-compatible-brightgreen.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/github/license/BiAtoms/Xml.swift.svg)](https://github.com/BiAtoms/Xml.swift/blob/master/LICENSE)

# Xml.swift

A Foundation.XMLParser wrapper for swift. Written as a part of [Xmmp.swift](https://github.com/BiAtoms/Xmpp.swift).

# Features
- Calls delegate method (with `XmlElement`) when an element is parsed from the provided source (`Data`, `InputStream` or file `URL`).
- Stores parsed document as a variable (accessible during parsing)


## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate Xml.swift into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
target '<Your Target Name>' do
    pod 'Xml.swift', '~> 1.0'
end
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate Xml.swift into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "BiAtoms/Xml.swift" ~> 1.0
```

Run `carthage update` to build the framework and drag the built `XmlSwift.framework` into your Xcode project.

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but Xml.swift does support its use on supported platforms. 

Once you have your Swift package set up, adding Xml.swift as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/BiAtoms/Xml.swift.git", from: "1.0.0")
]
```

### Manually
Just drag and drop the files in the [Sources](https://github.com/BiAtoms/Xml.swift/blob/master/Sources) folder.

## Authors

* **Orkhan Alikhanov** - *Initial work* - [OrkhanAlikhanov](https://github.com/OrkhanAlikhanov)

See also the list of [contributors](https://github.com/BiAtoms/Xml.swift/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/BiAtoms/Xml.swift/blob/master/LICENSE) file for details
