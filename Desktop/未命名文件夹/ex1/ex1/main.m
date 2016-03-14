//
//  main.m
//  ex1
//
//  Created by wxc on 15/10/8.
//  Copyright © 2015年 wxc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // insert code here...
//        int a,b;
//        int result;
//        a=rand()%100;
//        b=rand()%100;
//        result= a + b;
//        NSLog(@"%d+%d=%d",a,b,result);
//        NSLog(@"%d",result);
//
//        NSLog(@"%d",result);
//        NSLog(@"Hello, World!");
//        NSLog(@"Hello wxc!");
        /*
         *alloc 分配空间
         *init 初始化
         */
        People *p1 =[[People alloc] init];
        People *p2 =[[People alloc]init];
        People *p3 =[People new];
        NSLog(@"p1-%p",p1);
         NSLog(@"p1-%p",p2);
         NSLog(@"p1-%p",p3);
    }
    return 0;
}
