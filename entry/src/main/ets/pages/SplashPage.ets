import router from '@ohos.router'
import { RouterPath } from '../router/RouterPath'

@Preview
@Component
@Entry
struct SplashPage {
  aboutToAppear() {
    setTimeout(() => {
      router.replaceUrl({ url: RouterPath.Index })
    }, 3000)
  }

  build() {
    Stack() {
      Image($r('app.media.startIcon')).width('100%').aspectRatio(1).objectFit(ImageFit.Cover)
    }
    .height('100%')
    .alignContent(Alignment.Center)
    // .alignItems(VerticalAlign.Center)
    // .alignContent(Alignment.Center)

  }
}