# SNAnimations
动画构建者，CABasicAnimation的封装和转场动画的管理

## Features

- [x] 提供淡入、淡出、放大、晃动等基础常用动画的快速创建
- [x] 对动画结束进行回调
- [x] 兼容iOS 10 之后的CAAnimationDelegate

## Usage

```objective-c
#import <snanimations.h>

	CABasicAnimation * animation = [SNAnimations shakeAnimationformValue:-5 toValue:5 repeatCount:5 duration:1];

	[self.button sn_addAnimation:animation didStartBlock:^(CAAnimation *Animation) {
		NSLog(@"===========start==============");
	} didStopBlock:^(CAAnimation *Animation) {
		NSLog(@"===========stop===============");
	} beforeStopblock:^(CAAnimation *Animation) {
		NSLog(@"===========before stop========");
	}];
```

## Installation

```
pod 'SNAnimations'
```

## Requirements

iOS 8.0 或者更高版本

## Problems

后续版本可能会增加对转场动画的支持

## Thanks

特此感谢[pop](https://github.com/facebook/pop)、[lottie-ios](https://github.com/airbnb/lottie-ios)

## License

SNAnimations is released under the MIT license. See [LICENSE](https://github.com/snlo/SNAnimations/blob/master/LICENSE) for details.