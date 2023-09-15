import XCTest
@testable import ColorConverter

final class ColorConverterTests: XCTestCase {
  var converter: ColorConverter!
  
  override func setUp() {
      super.setUp()
      converter = ColorConverter()
  }
  
  override func tearDown() {
      converter = nil
      super.tearDown()
  }
  
  func test_hexToRGB_validHex_returnsRGB() {
      // Given
      let hex = "#FFAABB"
      // When
      let result = converter.hexToRGB(hex: hex)
      // Then
      XCTAssertNotNil(result, "Result should not be nil")
      XCTAssertEqual(result?.r, 255, "Red component should be 255")
      XCTAssertEqual(result?.g, 170, "Green component should be 170")
      XCTAssertEqual(result?.b, 187, "Blue component should be 187")
  }
  
  func test_hexToRGB_invalidLengthHex_returnsNil() {
      // Given
      let hex = "#FFAA"
      // When
      let result = converter.hexToRGB(hex: hex)
      // Then
      XCTAssertNil(result, "Result should be nil for invalid length")
  }
  
  func test_hexToRGB_hexWithoutHash_returnsNil() {
      // Given
      let hex = "FFAABB"
      // When
      let result = converter.hexToRGB(hex: hex)
      // Then
      XCTAssertNil(result, "Result should be nil without # symbol")
  }
  
  func test_rgbToHex_validRGB_returnsHex() {
      // Given: Входные RGB компоненты
      let red = 255
      let green = 170
      let blue = 187

      // When: Производим конвертацию в HEX
      let hex = converter.rgbToHex(r: red, g: green, b: blue)

      // Then: Проверяем HEX значение
      XCTAssertEqual(hex, "#FFAABB", "Expected HEX value is #FFAABB")
  }

}
