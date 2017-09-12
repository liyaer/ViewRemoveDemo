//
//  mobView.m
//  ViewRemoveDemo
//
//  Created by 杜文亮 on 2017/9/12.
//  Copyright © 2017年 杜文亮. All rights reserved.
//

#import "mobView.h"

@implementation mobView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor redColor];
        
        _view_s = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        _view_s.backgroundColor = [UIColor brownColor];
        _view_s.tag = 110;
        [self addSubview:_view_s];
    }
    return self;
}

-(void)dealloc
{
    NSLog(@"不只是控制器才有dealloc！");
}

@end
