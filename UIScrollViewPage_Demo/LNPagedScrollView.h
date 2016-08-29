//
//  LNPagedScrollView.h
//  UIScrollViewPageDemo
//
//  Created by LucienLi on 16/8/25.
//  Copyright © 2016年 llj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LLReachableScrollView : UIScrollView

@end

@interface LNPagedScrollView : UIView

@property (nonatomic, assign) CGFloat actualWidth;

@property (nonatomic, assign) CGFloat actualHeight;

@property (nonatomic, strong) LLReachableScrollView *scrollView;

@end
