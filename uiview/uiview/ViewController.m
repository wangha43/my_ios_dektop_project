//
//  ViewController.m
//  uiview
//
//  Created by wxc on 16/2/20.
//  Copyright © 2016年 wxc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //视图
//    UIView *view1 = [[UIView alloc] init];
//    //大小
//    view1.frame =CGRectMake(10, 20, 394, 716);
//    //背景颜色
//    view1.backgroundColor=[UIColor redColor];
//    //视图加入到父视图中
//    [self.view addSubview:view1];
//    /*
//     *3gs 3.5寸
//     *4gs 3.5  @2x
//     */
//    NSLog(@"x %f y %f width:%f height %f",
//          view1.bounds.origin.x,
//          view1.bounds.origin.y,
//          view1.bounds.size.width,
//          view1.bounds.size.height);
//    //bounds为边框
//    NSLog(@"w %f h %f", [[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.height);
//    NSLog(@"w %f h %f",view1.center.x,view1.center.y);
//    //父视图
//    UIView *superview = view1.superview;
//    superview.backgroundColor=[UIColor greenColor];
//    UIView *view2 = [[UIView alloc] init];
//    view2.frame = CGRectMake(30, 40, 20, 20);
//    view2.backgroundColor= [UIColor blackColor];
//    view2.tag = 2;
//
//    [view1 addSubview:view2];
//    
//    UIView *view3 = [[UIView alloc] init];
//    view3.frame = CGRectMake(30, 40, 40, 10);
//    view3.backgroundColor= [UIColor purpleColor];
//    view3.tag=3;
//    [view1 addSubview:view3];
//    //子视图
//    NSArray *subviewarray =view1.subviews;
//    for (UIView *view in subviewarray ) {
//        if (view.tag==3) {
//        view.backgroundColor=[UIColor whiteColor];
//        }
//    }
//    UIView *subview =[view1 viewWithTag:3];
//    subview.backgroundColor=[UIColor orangeColor];
//    //层级的处理
//    //同一个父视图中 先加入的view会被盖在在下面
//    UIView *view4 =[[UIView alloc]init];
//    view4.frame = CGRectMake(10, 100, 300, 300);
//    view4 .backgroundColor =[UIColor yellowColor];
//    [view1 addSubview:view4];
//    //交换
//    [view1 exchangeSubviewAtIndex:0 withSubviewAtIndex:4];
//    //插入视图到指定层
//    //lable 文字属性 背景 字体 大小size
//    UILabel * labe1 = [[UILabel alloc]init];
//    labe1.frame = CGRectMake(10, 20, 300, 400);
//    labe1.backgroundColor = [UIColor yellowColor];
//    labe1.text = @"Hello iOS";
//    for (NSString * name in [UIFont familyNames]) {
//        NSLog(@"%@",name);
//    }
//    
//    labe1.textColor = [UIColor redColor];
//    labe1.font = [UIFont fontWithName:@"Zapfino" size:25];
//    
//    labe1.textAlignment = NSTextAlignmentLeft;
//    [self.view addSubview:labe1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)button1:(id)sender {
    [mylable setText:@"wangha43"];
}
@end
