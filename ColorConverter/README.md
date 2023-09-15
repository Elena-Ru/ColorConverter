# ColorConverter

ColorConverter is a Swift Package designed to simplify color conversions between HEX and RGB formats. Whether you're transitioning from design tools to code or need to ensure color consistency across platforms, this package provides a lightweight and easy-to-use solution for your color conversion needs.

## Installation

To add ColorConverter to your project add following url using Swift Package Manager.

## Usage Example
''' import ColorConverter

let converter = ColorConverter()

// Convert HEX to RGB
if let rgb = converter.hexToRGB(hex: "#FFAABB") {
    print("Red: \(rgb.r), Green: \(rgb.g), Blue: \(rgb.b)")
}

// Convert RGB to HEX
let hex = converter.rgbToHex(r: 255, g: 170, b: 187)
print(hex)  // Outputs: #FFAABB
'''
