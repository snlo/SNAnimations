//
//  SNAnimations.h
//  BlankCode
//
//  Created by sunDong on 16/5/31.
//  Copyright © 2016年 sunDong. All rights reserved.
//
/**
 *  ps:提供简单的出场、退场动画。
 */

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#import "UIView+SNAnimations.h"

static const CGFloat kSNAnimationsTime = 0.3;

@interface SNAnimations : NSObject

/**
 淡入
 */
+ (CABasicAnimation *)fadeInAnimationToAlpha:(CGFloat)toAlpha duration:(CFTimeInterval)duration;

/**
 淡出
 */
+ (CABasicAnimation *)fadeOutAnimationDuration:(CFTimeInterval)duration;

/**
 从底部出现
 */
+ (CABasicAnimation *)bottomOutAnimationMoveY:(CGFloat)moveY duration:(CFTimeInterval)duration;

/**
 消失进入底部
 */
+ (CABasicAnimation *)bottomInAnimationMoveY:(CGFloat)moveY duration:(CFTimeInterval)duration;

/**
 放大
 */
+ (CABasicAnimation *)zoomInAnimationToPorportion:(NSNumber *)porportion duration:(CFTimeInterval)duration;

/**
 缩小
 */
+ (CABasicAnimation *)zoomOutAnimationToPorportion:(NSNumber *)porportion duration:(CFTimeInterval)duration;

/**
 旋转
 */
+ (CABasicAnimation *)rotaeAnimationformValue:(CGFloat)fromValue toValue:(CGFloat)toValue duration:(CFTimeInterval)duration;

/**
 晃动 eg:-5,5
 */
+ (CABasicAnimation *)shakeAnimationformValue:(CGFloat)fromValue toValue:(CGFloat)toValue repeatCount:(CGFloat)repeatCount duration:(CFTimeInterval)duration;

@end
