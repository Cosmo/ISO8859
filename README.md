# ISO8859

<img src="https://img.shields.io/badge/swift5-compatible-green.svg?style=flat" alt="Swift 5.1 compatible" />
<img src="https://img.shields.io/badge/license-MIT-blue.svg?style=flat" alt="License MIT" />

Convert ISO8859 1-16 Encoded Text to String in Swift.

## Usage

```swift
let encoding = ISO8859.part1
let string = String([...], iso8859Encoding: encoding)
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
    let string = String(hebrewTextData, iso8859Encoding: ISO8859.part8)
{
    print(string)
}
```

### Data to Turkish Text

```swift
let turkishTextData = Data(bytes: [84, 252, 114, 107, 231, 101])
if let string = String(turkishTextData, iso8859Encoding: ISO8859.part9) {
    print(string) // Returns "Türkçe"
}
```

### UInt8 Bytes-Array to Greek Text

```swift
let greekTextbytes: [UInt8] = [0xE1, 0xE2, 0xE3, 0xE4]
if let string = String(greekTextbytes, iso8859Encoding: ISO8859.part7) {
    print(string) // Returns "αβγδ"
}
```

## Installation

### [Swift Package Manager](https://swift.org/package-manager)

Add `ISO8859` as a dependency in your `Package.swift` file:

```swift
import PackageDescription

let package = Package(
    dependencies: [
        .package(url: "https://github.com/Cosmo/ISO8859.git", from: "1.1.0"),
    ]
)
```

### Manually

Just drag the source files into your project.

## Contact

* Devran "Cosmo" Uenal
* Twitter: [@maccosmo](http://twitter.com/maccosmo)
* LinkedIn: [devranuenal](https://www.linkedin.com/in/devranuenal)

## Other Projects

* [BinaryKit](https://github.com/Cosmo/BinaryKit) — BinaryKit helps you to break down binary data into bits and bytes and easily access specific parts.
* [Clippy](https://github.com/Cosmo/Clippy) — Clippy from Microsoft Office is back and runs on macOS! Written in Swift.
* [GrammaticalNumber](https://github.com/Cosmo/GrammaticalNumber) — Turns singular words to the plural and vice-versa in Swift.
* [HackMan](https://github.com/Cosmo/HackMan) — Stop writing boilerplate code yourself. Let hackman do it for you via the command line.
* [SpriteMap](https://github.com/Cosmo/SpriteMap) — SpriteMap helps you to extract sprites out of a sprite map. Written in Swift.
* [StringCase](https://github.com/Cosmo/StringCase) — Converts String to lowerCamelCase, UpperCamelCase and snake_case. Tested and written in Swift.
* [TinyConsole](https://github.com/Cosmo/TinyConsole) — TinyConsole is a micro-console that can help you log and display information inside an iOS application, where having a connection to a development computer is not possible.

## License

ISO8859 is released under the [MIT License](http://www.opensource.org/licenses/MIT).
