### fitConstant

**不编写一句纯代码完全使用Xib或storyboard实现屏幕适配**

- 4
![4](https://github.com/lillysdq/fitConstant/raw/master/img/iPhone%20SE.png)

- 4.7
![4.7](https://github.com/lillysdq/fitConstant/raw/master/img/iPhone%208.png)

- 5.8
![5.8](https://github.com/lillysdq/fitConstant/raw/master/img/iPhone%20Xs%20Max.png)

#### 使用方法
1. 导入**FitExtension.swift**文件至工程中
2. 设计尺寸默认为1242*2208 如需更改请参考
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		FitExtension.register(width: 1242, height: 2208)
        return true
    }
```

3. 选中约束后打开**fit Constant**开关
![fitConstant](https://github.com/lillysdq/fitConstant/raw/master/img/step3.png)