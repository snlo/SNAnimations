//
//  ViewController.m
//  SNAnimations
//
//  Created by sunDong on 2018/5/7.
//  Copyright © 2018年 snloveydus. All rights reserved.
//

#import "ViewController.h"

#import "SNAnimations.h"


@interface ViewController ()



@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
//	pod trunk push SNAnimations.podspec --verbose --allow-warnings --use-libraries
	
	
	[self.button addTarget:self action:@selector(handleButton:) forControlEvents:UIControlEventTouchUpInside];
	
	
}

- (void)handleButton:(UIButton *)sender {
	
	CABasicAnimation * animation =
//    [SNAnimations shakeAnimationformValue:-5 toValue:5 repeatCount:5 duration:1];
    [SNAnimations zoomOutAnimationToPorportion:@(0.5) duration:0.3];

	[self.button sn_addAnimation:animation didStartBlock:^(CAAnimation *Animation) {
		NSLog(@"-------button----start-----");
	} didStopBlock:^(CAAnimation *Animation) {
		NSLog(@"=======button====stop==============");
		[UIView animateWithDuration:0.3 animations:^{
			sender.backgroundColor = [UIColor colorWithRed:arc4random_uniform(226)/226.0f green:arc4random_uniform(226)/226.0f blue:arc4random_uniform(226)/226.0f alpha:1];
			
		}];
	} beforeStopblock:^(CAAnimation *Animation) {
		NSLog(@"提前停止");
	}];
	[self.label sn_addAnimation:animation didStartBlock:^(CAAnimation *Animation) {
		
	} didStopBlock:^(CAAnimation *Animation) {
		NSLog(@"=======label====stop==============");
		self.label.text = [NSString stringWithFormat:@"%u",arc4random_uniform(1000)];

	} beforeStopblock:^(CAAnimation *Animation) {
		NSLog(@"提前停止");
	}];
	
	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
		[sender.layer removeAllAnimations];
	});
	
}
- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


- (void)test {
	
}


@end
