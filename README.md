# ISO8859
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FCosmo%2FISO8859.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2FCosmo%2FISO8859?ref=badge_shield)


<img src="https://img.shields.io/badge/platform-iOS-blue.svg?style=flat" alt="Platform iOS" />
<img src="https://img.shields.io/badge/platform-tvOS-blue.svg?style=flat" alt="Platform tvOS" />
<img src="https://img.shields.io/badge/platform-watchOS-blue.svg?style=flat" alt="Platform watchOS" />
<img src="https://img.shields.io/badge/platform-macOS-blue.svg?style=flat" alt="Platform macOS" />
<img src="https://img.shields.io/badge/swift3-compatible-green.svg?style=flat" alt="Swift 3 compatible" />
<img src="https://img.shields.io/badge/Carthage-compatible-brightgreen.svg?style=flat" alt="Carthage compatible" />
<img src="https://img.shields.io/badge/license-MIT-blue.svg?style=flat" alt="License MIT" />

Convert ISO8859 1-16 Encoded Text to String in Swift. Supports iOS, tvOS, watchOS and macOS.

## Usage

```swift
let encoding = ISO8859.part1
let string = String(bytes: [...], iso8859Encoding: encoding)
```

[See Examples](#examples)

## Supported Character Sets

| Encoding | Name | Enum |
| --- | --- | --- |
| ISO8859-1 | Latin 1 Western European | `ISO8859.part1` |
| ISO8859-2 | Latin 2 Central European | `ISO8859.part2` |
| ISO8859-3 | Latin 3 South European | `ISO8859.part3` |
| ISO8859-4 | Latin 4 North European | `ISO8859.part4` |
| ISO8859-5 | Latin/Cyrillic | `ISO8859.part5` |
| ISO8859-6 | Latin/Arabic | `ISO8859.part6` |
| ISO8859-7 | Latin/Greek | `ISO8859.part7` |
| ISO8859-8 | Latin/Hebrew | `ISO8859.part8` |
| ISO8859-9 | Latin 5 Turkish | `ISO8859.part9` |
| ISO8859-10 | Latin 6 Nordic | `ISO8859.part10` |
| ISO8859-11 | Latin/Thai | `ISO8859.part11` |
| ISO8859-13 | Latin 7 Baltic Rim | `ISO8859.part13` |
| ISO8859-14 | Latin 8 Celtic | `ISO8859.part14` |
| ISO8859-15 | Latin 9 | `ISO8859.part15` |
| ISO8859-16 | Latin 10 South-Eastern European | `ISO8859.part16` |

## Examples

### File to Hebrew Text

```swift
if
    let path = Bundle.main.path(forResource: "Hebrew-Text", ofType: "txt"),
    let hebrewTextData = try? Data(contentsOf: URL(fileURLWithPath: path)),
    let string = String(bytes: hebrewTextData, iso8859Encoding: ISO8859.part8)
{
    print(string)
}
```

### Data to Turkish Text

```swift
let turkishTextData = Data(bytes: [84, 252, 114, 107, 231, 101])
if let string = String(bytes: turkishTextData, iso8859Encoding: ISO8859.part9) {
    print(string) // Returns "Türkçe"
}
```

### UInt8 Bytes-Array to Greek Text

```swift
let greekTextbytes: [UInt8] = [0xE1, 0xE2, 0xE3, 0xE4]
if let string = String(bytes: greekTextbytes, iso8859Encoding: ISO8859.part7) {
    print(string) // Returns "αβγδ"
}
```

## Installation

### [Carthage](https://github.com/Carthage/Carthage)

Add this to your Cartfile:

```ruby
github "Cosmo/ISO8859"
```

### [Swift Package Manager](https://swift.org/package-manager)

Add `ISO8859` as a dependency in your `Package.swift` file:

```swift
import PackageDescription

let package = Package(
    dependencies: [
        .Package(url: "https://github.com/Cosmo/ISO8859.git", majorVersion: 1, minor: 0),
    ]
)
```

### Manually

Just drag the source files into your project.

## Contact

* Devran "Cosmo" Uenal
* Twitter: [@maccosmo](http://twitter.com/maccosmo)

## License

ISO8859 is released under the [MIT License](http://www.opensource.org/licenses/MIT).


[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FCosmo%2FISO8859.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2FCosmo%2FISO8859?ref=badge_large)