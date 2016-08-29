//
//  ViewController.m
//  UIScrollViewPage_Demo
//
//  Created by admin on 16/8/25.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "LNPagedScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self test];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)test {
    CGSize cardSize = CGSizeMake(270, 360);
    NSInteger cardCount = 10;
    
    LNPagedScrollView *pagedScrollView = [[LNPagedScrollView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height - 20)];
    [self.view addSubview:pagedScrollView];
    
    pagedScrollView.actualWidth = cardSize.width;
    pagedScrollView.actualHeight = cardSize.height;
    
    for (int i = 0; i < cardCount; i++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(i * cardSize.width, 0, cardSize.width, cardSize.height)];
        
        NSLog(@"----%f",view.frame.origin.x);

        
        UIView *card = [[UIView alloc] initWithFrame:CGRectInset(view.bounds, 10, 10)];
        card.layer.cornerRadius = 10;
        card.layer.masksToBounds = YES;
        card.backgroundColor = [self randomColor];
        [view addSubview:card];
        [pagedScrollView.scrollView addSubview:view];
    }
    
    pagedScrollView.scrollView.contentSize = CGSizeMake(cardSize.width * 10, cardSize.height);
}

- (UIColor *)randomColor {
    CGFloat randomR = drand48();
    CGFloat randomG = drand48();
    CGFloat randomB = drand48();
    return [UIColor colorWithRed:randomR green:randomG blue:randomB alpha:1];
}

@end
