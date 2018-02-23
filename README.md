# BREXBadge

------

感谢您点击进入到这里。
**BREXBadge** 是我编写的一个简单实现新消息提醒的开源库。
此开源库模仿的是QQ的新消息小红点，现在版本仅仅是初步版本，但也可以使用，如果你在使用中遇到什么问题，可以发送邮件到biboyang622@gmai.com。
现支持三种消息提示：
![cmd-markdown-logo](https://s1.ax1x.com/2018/02/23/9U7ERS.png)

> *正常数字显示，类似QQ，添加了拉伸和取消动画
NUMBER_BADGE_VIEW

> *最简单的细小红点
DOT_BADGE_VIEW

> *new图标
NEW_BADGE_VIEW





------

使用方法：直接创建BREXBadgeView对象，选择对应的type，设置frame，并设置badgeNum，若badge未设置或为0时，默认不显示。

``` objective-c
BREXBadgeView *badgeView1 = [BREXBadgeView badgeViewForType:DOT_BADGE_VIEW];
badgeView1.frame = CGRectMake(100, 100, 8, 8);
badgeView1.badgeNum = 1;
[self.view addSubview:badgeView1];
```
