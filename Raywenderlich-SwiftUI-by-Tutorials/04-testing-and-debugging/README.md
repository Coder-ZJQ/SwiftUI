### [04-testing-and-debugging](https://github.com/Coder-ZJQ/SwiftUI/commits/master/Raywenderlich-SwiftUI-by-Tutorials/04-testing-and-debugging)

|  Project  |                             Diff                             |
| :-------: | :----------------------------------------------------------: |
|   start   |                              \                               |
|  finish   | [f8ecf1](https://github.com/Coder-ZJQ/SwiftUI/commit/f8ecf1fc79ec927c6f52eeee5d65660dd213c0cc) |
| challenge |                                                              |



- 单元测试，集成测试，UI 测试

- 打开调试页面：**Command - Shift - Y**

- 获取应用并启动：

  ``` swift
  let app = XCUIApplication()
  app.launch()
  ```

- 获取按钮并模拟点击：

  ``` swift
  // 参数为按钮显示或者 accessibility identifier
  let button = app.buttons["btn"]
  button.tap()
  ```

- `.accessibility(identifier: )`: 设置访问标识，测试使用

- 获取控件显示：

  ``` swift
  // 通过访问标识(accessibility identifier) 获取
  let display = app.staticTexts["display"]
  let displayText = display.label
  ```

- 断言判断测试结果：

  ``` swift
  XCTAssert(displayText == "0")
  ```

- `.exist` 判断控件是否存在

- 模拟用户交互：

  ``` swift
  func testSwipeToClearMemory() {
    let app = XCUIApplication()
    app.launch()
  
    let threeButton = app.buttons["3"]
    threeButton.tap()
    let fiveButton = app.buttons["5"]
    fiveButton.tap()
  
    let memoryButton = app.buttons["M+"]
    memoryButton.tap()
  
    let memoryDisplay = app.staticTexts["memoryDisplay"]
    XCTAssert(memoryDisplay.exists)
    memoryDisplay.swipeLeft()
    XCTAssertFalse(memoryDisplay.exists)
  }
  ```

- 其他属性或方法：[XCUIElement](https://developer.apple.com/documentation/xctest/xcuielement?language=objc)

- 多平台测试：

  ``` swift
  #if !targetEnvironment(macCatalyst)
  // Test to exclude
  #endif
  
  #if !os(watchOS)
  // Your XCTest code
  #endif
  ```

- 调试 View 及 state 变化：

  ``` swift
  // 打印使视图重绘的属性
  let _ = Self._printChanges()
  ```
