//
//  HLSegementView.h
//  HLSegmentView
//
//  Created by 郝靓 on 2018/8/1.
//  Copyright © 2018年 郝靓. All rights reserved.
//
#import <UIKit/UIKit.h>

@protocol HLSegementViewDelegate<NSObject>


/**
 获得点击下标

 */
- (void)hl_didSelectWithIndex:(NSInteger)index;

@end

@interface HLSegementView : UIView
/**
 根据角标，选中对应的控制器
 */
@property (nonatomic, assign) NSInteger selectIndex;
/** 标题数组 */
@property (nonatomic, strong) NSArray * titles;

@property (nonatomic, assign) BOOL isShowUnderLine;

@property (nonatomic, weak) id<HLSegementViewDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame titles:(NSArray *)titles;


@end
