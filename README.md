## 介绍

InputBox是一个自动输入框，支持文本、密码等多种模式，支持动态切换下一个，适用于验证码，密码等动态切换下一个等场景。

## 开发环境

DevEco Studio NEXT Developer Beta1,Build Version: 5.0.3.900

Api版本：**12**

modelVersion：5.0.0

## 效果

<p align="center">
<img src="https://vipandroid-image.oss-cn-beijing.aliyuncs.com/harmony/box/input_box_01.png" width="220px" />
<img src="https://vipandroid-image.oss-cn-beijing.aliyuncs.com/harmony/box/input_box.gif" width="220px" />
</p>

## 快速使用

### 远程依赖方式使用【推荐】

方式一：在Terminal窗口中，执行如下命令安装三方包，DevEco Studio会自动在工程的oh-package.json5中自动添加三方包依赖。

**建议：在使用的模块路径下进行执行命令。**

```
ohpm install @abner/input_box
```

方式二：在工程的oh-package.json5中设置三方包依赖，配置示例如下：

```
"dependencies": { "@abner/input_box": "^1.0.1"}
```

## 代码使用

### 1、普通使用


```typescript

InputBoxView({
  inputBoxSize: 5,
  onChange: (value) => {
    console.log("===输入监听：" + value)
  },
  onInputEnd: (value) => {
    console.log("===输入结果：" + value)
  }
})

```

### 2、光标颜色


```typescript
InputBoxView({
  inputBoxSize: 6,
  caretColor: Color.Red,
  onChange: (value) => {
    console.log("===输入监听：" + value)
  },
  onInputEnd: (value) => {
    console.log("===输入结果：" + value)
  }
})


```
### 3、边框模式


```typescript
InputBoxView({
        inputBoxSize: 6,
        caretColor: Color.Red,
        inputBoxBgColor: Color.Transparent,
        inputBoxBorderWidth: 1,
        isInputBoxBorder: true,
        inputBoxNormalBorderColor: Color.Black,
        inputBoxSelectBorderColor: Color.Red,
        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      })


```
### 4、显示底部光标


```typescript
InputBoxView({
        inputBoxSize: 6,
        caretColor: Color.Red,
        inputBoxBgColor: Color.Transparent,
        inputBoxBorderWidth: 1,
        isInputBoxBorder: true,
        isShowBottomCaret: true, //显示底部光标
        inputBoxNormalBorderColor: Color.Black,
        inputBoxSelectBorderColor: Color.Red,
        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      })


```

### 5、圆点

```typescript
InputBoxView({
        inputBoxSize: 6,
        inputTextType: InputTextType.ROUND,
        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      })


```

### 6、星号


```typescript
InputBoxView({
        inputBoxSize: 6,
        inputTextType: InputTextType.ASTERISK,
        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      })


```

### 7、设置边框选择颜色


```typescript
InputBoxView({
        inputBoxSize: 6,
        inputBoxNormalBorderColor: "#e8e8e8",
        inputBoxSelectBorderColor: Color.Blue,
        inputBoxBorderWidth: 1,
        boxInputHideBgColor: true,
        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      })


```

### 8、设置边框下划线方式


```typescript
InputBoxView({
        inputBoxSize: 6,
        inputBoxBgColor: Color.Transparent,
        inputBoxBorderWidth: { bottom: 2 },
        inputBoxNormalBorderColor: Color.Black,
        inputBoxSelectBorderColor: Color.Black,

        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      })


```

### 9、设置边框下划线圆点方式


```typescript
InputBoxView({
        inputBoxSize: 6,
        inputTextType: InputTextType.ROUND,
        inputBoxBgColor: Color.Transparent,
        inputBoxBorderWidth: { bottom: 2 },
        inputBoxNormalBorderColor: Color.Black,
        inputBoxSelectBorderColor: Color.Black,

        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      })


```

## 属性介绍



| 属性                          | 类型                                    | 概述                       |
|-----------------------------|---------------------------------------|--------------------------|
| inputBoxSize                | number                                | 输入框数量，默认为6个              |
| inputBoxWidth               | Length                                | 每个输入框的宽度，默认为100%         |
| inputBoxHeight              | Length                                | 每个输入框的高度，默认为100%         |
| inputBoxBgColor             | ResourceColor                         | 输入框的背景                   |
| inputType                   | InputType                             | 键盘类型，默认为InputType.Number |
| inputBoxGap                 | Length                                | 输入框之间的间隙，默认为10           |
| inputWidth                  | Length                                | 输入框整体的宽度                 |
| inputHeight                 | Length                                | 输入框整体的高度                 |
| inputBoxBorderRadius        | Length                                | 圆角                       |
| inputBoxBorderWidth         | EdgeWidths/Length/LocalizedEdgeWidths | 边框大小                     |
| inputBoxNormalBorderColor   | ResourceColor                         | 输入框选中边框背景                |
| inputBoxSelectBorderColor   | ResourceColor                         | 输入框未选中边框背景               |
| inputMarginLeft             | Length                                | 输入框整体距离左边的距离             |
| inputMarginRight            | Length                                | 输入框整体距离右边的距离             |
| caretColor                  | ResourceColor                         | 光标颜色                     |
| boxCaretWidth               | Length                                | 光标宽度                     |
| inputFontColor              | ResourceColor                         | 字体颜色                     |
| inputFontSize               | Length                                | 字体大小                     |
| inputFontWeight             | umber/FontWeight/string               | 字体权重                     |
| inputFontStyle              | FontStyle                             | 字体样式                     |
| fontFamily                  | ResourceStr                           | 字体列表                     |
| openRowClick                | boolean                               | 是否打开行点击                  |
| inputTextType               | InputTextType                         | 显示内容类型                   |
| boxInputHideBgColor         | boolean                               | 最后的一个背景是否隐藏，默认不隐藏        |
| isShowBottomCaret           | boolean                               | 光标是否显示底部，默认不展示           |
| isInputBoxBorder            | boolean                               | 是否是边框，默认不是               |
| onChange                    | (value: string) => void               | 输入回调监听                   |
| onInputEnd                  | (value: string) => void               | 输入结束                     |
| showSoftKeyboard            | boolean                               | 默认是否弹起软键盘                |
| startAndEndBorderHandle     | boolean                               | 是否首尾特殊处理,默认不需要           |
| inputBoxBorderHandleRadius  | Length                                | 圆角                       |

## 咨询作者

如果您在使用上有问题，解决不了，或者查看精华的鸿蒙技术文章，可扫码进行操作。

<p><img src="https://vipandroid-image.oss-cn-beijing.aliyuncs.com/harmony/abner.jpg" width="150"></p>

## License

```
Copyright (C) AbnerMing, InputBox Open Source Project

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
