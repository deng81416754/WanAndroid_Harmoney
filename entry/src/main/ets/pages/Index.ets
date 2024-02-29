import { TabItem } from '../viewmodel/TabItem'

@Entry
@Component
struct Index {
  @State
  mSelectIndex: number = 0

  build() {
    Tabs({ index: this.mSelectIndex, barPosition: BarPosition.End }) {
      TabContent() {

      }.tabBar()

      TabContent() {

      }

      TabContent() {

      }

      TabContent() {

      }

    }
  }

  @Builder
  TabBottom(index: number, tabItem: TabItem) {
    Column() {
      Image(this.mSelectIndex == index ? tabItem.imageSelect : tabItem.imageUnSelect)
        .width(32)
        .height(32)
        .margin({
          top: 4,
          bottom: 2,
        })

      Text(tabItem.title)
        .fontSize(this.mSelectIndex == index ? 14 : 10)
        .fontColor(this.mSelectIndex == index ? Color.Black : Color.Grey)
        .maxLines(1)
        .textAlign(TextAlign.Center)
        .fontWeight(300)
        .width('100%')
        .margin({ bottom: 4 })

    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)

  }
}