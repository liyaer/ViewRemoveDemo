//
//  ViewController.m
//  ViewRemoveDemo
//
//  Created by 杜文亮 on 2017/9/11.
//  Copyright © 2017年 杜文亮. All rights reserved.
//

#import "ViewController.h"
#import "mobView.h"

@interface ViewController ()

@property (nonatomic,strong) mobView *mobView;

@end




@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.mobView = [[mobView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    [self.view addSubview:self.mobView];

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^
   {
       [self.mobView removeFromSuperview];
       self.mobView = nil;//不置nil,还驻留在内存中，所以不会走mobView中的dealloc
       NSLog(@"=====%@--------%@",self.mobView,self.mobView.view_s);//父试图置nil后，子视图也会跟随释放
   });
}





@end
