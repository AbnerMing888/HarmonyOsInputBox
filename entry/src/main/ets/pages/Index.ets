import { InputBoxView, InputTextType } from '@abner/input_box'

@Entry
@Component
struct Index {
  build() {
    Column() {
      //普通
      InputBoxView({
        inputBoxSize: 5,
        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      })

      //光标颜色
      InputBoxView({
        inputBoxSize: 6,
        caretColor: Color.Red,
        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      }).margin({ top: 20 })

      //边框模式
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
      }).margin({ top: 20 })

      //显示底部光标
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
      }).margin({ top: 20 })

      //黑色圆点
      InputBoxView({
        inputBoxSize: 6,
        inputTextType: InputTextType.ROUND,
        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      }).margin({ top: 20 })

      //星号
      InputBoxView({
        inputBoxSize: 6,
        inputTextType: InputTextType.ASTERISK,
        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      }).margin({ top: 20 })

      //设置边框选择颜色
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
      }).margin({ top: 20 })

      //设置边框下划线方式
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
      }).margin({ top: 20 })

      //设置边框下划线黑色圆点方式
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
      }).margin({ top: 20 })

      //取消间隙
      InputBoxView({
        inputBoxSize: 6,
        caretColor: Color.Red,
        inputBoxGap: 0,
        inputBoxBgColor: Color.Transparent,
        inputBoxBorderWidth: {
          right: 0.5,
          left: 1,
          top: 1,
          bottom: 1
        },
        isInputBoxBorder: true,
        startAndEndBorderHandle: true, //首尾处理
        inputBoxBorderHandleRadius: 10, //首尾显示的圆角度数
        inputBoxNormalBorderColor: Color.Black,
        inputBoxSelectBorderColor: Color.Black,
        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      }).margin({ top: 20 })

    }
    .height('100%')
    .width('100%')
  }
}