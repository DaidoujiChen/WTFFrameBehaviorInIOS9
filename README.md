# WTFFrameBehaviorInIOS9

在 iOS8 與 iOS9 上, 使用 `UINavigationController` 且 `UIViewController` 的 layout 是由 xib 建置時, 在取得 `self.view.frame` 時, 會有些微的差異

## iOS8 時
首個 `UIViewController` 在 `viewWillAppear` 與 `viewDidAppear` 可以取得相同的 `self.view.frame`

`````
<SimpleViewController: 0x7a6e4730> viewWillAppear self.view.frame : {{0, 0}, {320, 568}}
<SimpleViewController: 0x7a6e4730> viewDidAppear self.view.frame : {{0, 0}, {320, 568}}
`````

然後 push 第二個 `UIViewController` 進去時, 也可以得到相同的答案

`````
<SimpleViewController: 0x7a667f70> viewWillAppear self.view.frame : {{0, 0}, {320, 568}}
<SimpleViewController: 0x7a667f70> viewDidAppear self.view.frame : {{0, 0}, {320, 568}}
`````

## iOS9 時
首個 `UIViewController` 在 `viewWillAppear` 與 `viewDidAppear` 也是可以取得相同的 `self.view.frame`

`````
<SimpleViewController: 0x7ba4cf20> viewWillAppear self.view.frame : {{0, 0}, {320, 568}}
<SimpleViewController: 0x7ba4cf20> viewDidAppear self.view.frame : {{0, 0}, {320, 568}}
`````

但是第二個 `UIViewController` 時, 卻會產生不同的現象

`````
<SimpleViewController: 0x7b680010> viewWillAppear self.view.frame : {{0, 0}, {600, 600}}
<SimpleViewController: 0x7b680010> viewDidAppear self.view.frame : {{0, 0}, {320, 568}}
`````

而這個 600x600 則是來自於 xib 預設的大小.

## 奇異的點在於
過去我們可以從 `viewWillAppear:` 就可以得知 `self.view.frame` 的大小, 在 iOS9 上則不一定可以.

