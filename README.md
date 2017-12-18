![Platform Linux](https://img.shields.io/badge/platform-Linux-green.svg)
[![Platform iOS macOS tvOS](https://img.shields.io/cocoapods/p/Xml.swift.svg?style=flat)](https://github.com/BiAtoms/Xml.swift)
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/Xml.swift.svg)](https://cocoapods.org/pods/Xml.swift)

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

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but Xml.swift does support its use on supported platforms. 

Once you have your Swift package set up, adding Xml.swift as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .Package(url: "https://github.com/BiAtoms/Xml.swift.git", majorVersion: 1)
]
```

### Manually
Just drag and drop the files in the [Sources](Sources) folder.

## Authors

* **Orkhan Alikhanov** - *Initial work* - [OrkhanAlikhanov](https://github.com/OrkhanAlikhanov)

See also the list of [contributors](https://github.com/BiAtoms/Xml.swift/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
