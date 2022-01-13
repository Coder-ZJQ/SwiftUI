- 应用启动入口 `AppDelegate.swift`  换成 `ProjectName.swift` 例如：`RGBullsEyeApp.swift`

``` swift
@main
struct RGBullsEyeApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView(guess: RGB())
    }
  }
}
```

- 预览快捷键：**Option-Command-P**
- 呼出控件操作窗口：**Command-click**
- 呼出控件快捷设置窗口：**Control-Option-click**
- 呼出 **Library** 窗口：**Command-Shift-L** 或点击右上角 "＋" 号
- 固定显示 **Library** 窗口：按住 **Option** 键并点击右上角 "＋" 号
- [@State](https://developer.apple.com/documentation/swiftui/state/)
- 提取视图：**Command-click-Extract Subview**
- [@Binding](https://developer.apple.com/documentation/swiftui/binding/)