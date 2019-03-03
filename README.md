# TabNaviDemo
iOS：解决页面切换导航栏效果顽疾

一个简单而有效的页面切换导航栏显示/隐藏的方案

## Root

```objc
override func viewWillAppear(_ animated: Bool) {
super.viewWillAppear(animated)
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(color:UIColor.kcGreen), for: .default)
if self.transitionCoordinator != nil {
self.navigationController?.setNavigationBarHidden(false, animated: true)
self.transitionCoordinator?.animateAlongsideTransition(in: view, animation: { (context) in
self.navigationController?.navigationBar.alpha = 0.0
}, completion: { (context) in
debugPrint("complete")
})
}else{
self.navigationController?.setNavigationBarHidden(true, animated: false)
}

}

override func viewWillDisappear(_ animated: Bool) {
self.navigationController?.setNavigationBarHidden(false, animated: true)
super.viewWillDisappear(animated)
}
```

## With Navi

```objc
override func viewWillAppear(_ animated: Bool) {
super.viewWillAppear(animated)
self.navigationController?.navigationBar.setBackgroundImage(UIImage(color:UIColor.kcRed), for: .default)
self.transitionCoordinator?.animateAlongsideTransition(in: view, animation: { (context) in
self.navigationController?.navigationBar.alpha = 1.0
}, completion: { (context) in
debugPrint("complete")
})

}
```

## Without Navi

```objc
override func viewWillAppear(_ animated: Bool) {
super.viewWillAppear(animated)
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(color:UIColor.kcGreen), for: .default)
self.transitionCoordinator?.animateAlongsideTransition(in: view, animation: { (context) in
self.navigationController?.navigationBar.alpha = 0.0
}, completion: { (context) in
debugPrint("complete")
})
}

````
