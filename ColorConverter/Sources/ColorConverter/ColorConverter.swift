import Foundation


public struct ColorConverter {

    public init() { }

    public func hexToRGB(hex: String) -> (r: Int, g: Int, b: Int)? {
        guard hex.count == 7, hex.first == "#" else { return nil }

        let rHex = hex.dropFirst(1).prefix(2)
        let gHex = hex.dropFirst(3).prefix(2)
        let bHex = hex.dropFirst(5).prefix(2)

        guard let r = Int(String(rHex), radix: 16),
              let g = Int(String(gHex), radix: 16),
              let b = Int(String(bHex), radix: 16) else { return nil }

        return (r, g, b)
    }

    public func rgbToHex(r: Int, g: Int, b: Int) -> String {
        return String(format: "#%02X%02X%02X", r, g, b)
    }
}

