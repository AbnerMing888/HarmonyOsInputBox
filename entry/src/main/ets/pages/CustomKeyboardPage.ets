import { InputBoxControl, InputBoxView } from '@abner/input_box'

@Entry
@Component
struct CustomKeyboardPage {
  private inputBoxControl: InputBoxControl = new InputBoxControl()

  build() {
    Column() {
      //普通
      InputBoxView({
        inputBoxSize: 6,
        inputBoxControl: this.inputBoxControl,
        showCustomKeyboard: true, //展示自己的软键盘
        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      })

      NumberKeyboard({
        onItemClick: (item) => {
          this.inputBoxControl.setInputText(item)
        },
        onDeleteClick: () => {
          //删除
          this.inputBoxControl.deleteInput()
        }
      })
    }
    .height('100%')
    .width('100%')
  }
}

@Component
export struct NumberKeyboard {
  onItemClick?: (item: string) => void
  onDeleteClick?: () => void

  build() {
    Grid() {
      ForEach(["1", "2", "3", "4", "5", "6", "7", "8", "9", "", "0", "删除"],
        (item: string, index: number) => {
          GridItem() {
            Button(item, { type: ButtonType.Normal })
              .onClick(() => {
                if (index < 9 || index == 10) {
                  if (this.onItemClick != undefined) {
                    this.onItemClick(item)
                  }
                }
                if (index == 11) {
                  if (this.onDeleteClick != undefined) {
                    this.onDeleteClick()
                  }
                }
              })
              .fontColor(Color.Black)
              .backgroundColor(index == 9 ? Color.Transparent : Color.White)
              .borderRadius(5)
              .fontSize(18)
              .padding(0)
              .width(50)
              .height(50)
          }
        }, (item: string) => JSON.stringify(item))
    }
    .columnsTemplate('1fr 1fr 1fr')
    .rowsGap(5)
    .columnsGap(5)
    .margin({ top: 20 })
    .padding({ top: 20 })
    .backgroundColor("#e8e8e8")
  }
}