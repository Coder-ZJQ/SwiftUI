### [05-intro-to-controls-text-and-image](https://github.com/Coder-ZJQ/SwiftUI/commits/master/Raywenderlich-SwiftUI-by-Tutorials/05-intro-to-controls-text-and-image)

|  Project  | Diff |
| :-------: | :--: |
|   start   |  \   |
|  finish   |      |
| challenge |      |



- Text：显示文本

- modifiers：修改样式并返回 View

  ``` swift
  Text("Welcome to Kuchi")
   .font(.system(size: 60))
   .bold()
   .foregroundColor(.red)
   .multilineTextAlignment(.center)
   .lineLimit(2)
  ```

- 展示属性面板：**Command - Shift - 4**

- 一些 modifiers 顺序不同显示也不同

  ``` swift
  Text("Welcome to Kuchi")
   .background(Color.red)
   .padding()
  
  Text("Welcome to Kuchi")
   .padding()
   .background(Color.red)
  
  Text("Welcome to Kuchi")
   .background(Color.yellow)
   .padding()
   .background(Color.red)
  ```

- Image: 显示图片

  - `.resizable()`: 图片尺寸可变
  - `.frame(width:, height:)`: 设置 View 尺寸
  - `.cornerRadius(...)`: 设置圆角
  - `.overlay(...)`: 设置遮罩
  - `.background(...)`: 设置背景
  - `.clipShape(...)`: 设置裁切
  - `.forebackground(...)`: 设置前景

  ``` swift
  Image(systemName: "table")
    .resizable()
    .frame(width: 30, height: 30)
    // 1
    .cornerRadius(30 / 2)
    // 2
    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
    // 3
    .background(Color(white: 0.9))
    // 4
    .clipShape(Circle())
    // 5
    .foregroundColor(.red)
  ```

- stack views: 堆叠视图

  - HStack: 横向
  - VStack: 竖向
  - ZStack: Z 轴

- Label: 同时显示图片及文本

- LabelStyle

  - DefaultLabelStyle: 默认样式（顶部对齐）
  - TitleOnlyLabelStyle: 只显示标题
  - IconOnlyLabelStyle: 只显示图标
  - 自定义样式：

  ``` swift
  import SwiftUI
  
  struct HorizontallyAlignedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
      HStack {
        configuration.icon
        configuration.title
      }
    }
  }
  ```

  
