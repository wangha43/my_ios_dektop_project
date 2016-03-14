//
//  main.m
//  ex2
//
//  Created by wxc on 15/10/9.
//  Copyright © 2015年 wxc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        /*
         *add something of argc
         */
//        int a=3,b=5,c=8;
        //oc c字符串转换
         char *s = "hello c->oc";
//        NSString *str = @"hello world";
        NSString *str1 = [NSString stringWithUTF8String:s];
//
        NSLog(@"%@",str1);
        NSString *str2 = [[NSString alloc] initWithFormat:@"%d + %d = %d",3,5,3+5];
        NSLog(@"str2 = %s",[str2 UTF8String]);
        //创建字符串
        NSString *str3 = @"ios";
     
        NSString *str4 = [[NSString alloc] init];
        str4 = @"ooo";
        int a = 10;
        int b = 20;
        NSString *str5 = [NSString stringWithFormat:@"a=%d b=%d",a,b];
        NSLog(@"str5=%@",str5);
        //++
        NSString *str6 = [[str5 stringByAppendingString:@"love wxc"]stringByAppendingString:str3];
        NSLog(@"str6=%@",str6);
        
        NSString * str10 = @"www.wxc.com";
        BOOL hasprefix = [str10 hasPrefix:@"www"];
        if(hasprefix){
            NSLog(@"hasprefix");
        }else{
            NSLog(@"not has a prefix");
        }
        
//        [str1 release];
        
//        int a,b;
//        int result;
//                a=rand()%10;
//            b=rand()%10;
//            result = a+b;
//            NSLog(@"%d",result);
//            
//            NSLog(@"%d",result);
//            NSLog(@"Hello, World!");
//            NSLog(@"Hello wxc!");
        }
    return 0;
}
