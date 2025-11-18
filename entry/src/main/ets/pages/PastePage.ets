import { InputBoxView } from '@abner/input_box';

@Entry
@Component
struct PastePage {
  build() {
    RelativeContainer() {
      InputBoxView({
        inputBoxSize: 5,
        isOpenPaste: true,
        onChange: (value) => {
          console.log("===输入监听：" + value)
        },
        onInputEnd: (value) => {
          console.log("===输入结果：" + value)
        }
      })
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}