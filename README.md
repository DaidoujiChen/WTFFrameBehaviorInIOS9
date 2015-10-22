# WTFFrameBehaviorInIOS9

這是一個莫名其妙的問題在 iOS9 上, 
故事是這個樣子,  在使用 `UINavigationController` 的時候,  
第一個 `UIViewController` 在 `viewWillAppear:` 的時候, 
`self.view.frame` 是跟 screen size 一樣,
當然, 在 `viewDidAppear:` 的時候也不會改變,
以 `iPhone5` 來說的話就會是

`````
<SimpleViewController: 0x7c2f9970> viewWillAppear self.view.frame : {{0, 0}, {320, 568}}
<SimpleViewController: 0x7c2f9970> viewDidAppear self.view.frame : {{0, 0}, {320, 568}}
`````

超正常的! 但是從第二個 `UIViewController` 開始, 即使 push 了同樣的一個東西, 卻會變成

`````
<SimpleViewController: 0x7c232e30> viewWillAppear self.view.frame : {{0, 0}, {600, 600}}
<SimpleViewController: 0x7c232e30> viewDidAppear self.view.frame : {{0, 0}, {320, 568}}
`````

在 `viewWillAppear:` 的時候, `self.view.frame` 居然是 xib 的大小, 
直到 `viewDidAppear:` 才會變回正常.

stackoverflow 上也有類似的問題, [連結](http://stackoverflow.com/questions/32662851/ios-9-frame-no-longer-set-in-viewwillappear-after-uinavigationcontroller-pushvi)

可以做個參考.

