# HLSegmentedView
仿生SegmentedView 标题完美适配，自动局中显示


![效果图](https://github.com/MrBMask/HLSegmentedView/blob/master/HLSegmentView/HLSegmentView/HLSegementView.gif)


#####效果

1.完美适配屏幕，当按钮个数少的时候自动平均占比屏幕；
2.按钮显示自动计算宽度；
3.点击自动局中；
4.支持下划线显示；
5.各种选中动画大家可以在里面自己定义


####使用方法

1.倒入#import "HLSegementView.h"
2.遵守代理 <HLSegementViewDelegate>
3.创建视图
```
NSArray * titlss = @[@"视频",@"新浪新闻",@"热点",@"热门推荐",@"微博",@"网易",@"考拉",@"段子"];
HLSegementView * segmentView = [[HLSegementView alloc] initWithFrame:CGRectMake(0, 300, 375, 40) titles:titlss];
segmentView.selectIndex = 2;
segmentView.isShowUnderLine = YES;
segmentView.delegate = self;
[self.view addSubview:segmentView];
```
4.实现代理方法

喜欢的小伙吧star一下哦～～～🙏🙏🙏
[我的简书](https://www.jianshu.com/u/832ac6e521d8)

