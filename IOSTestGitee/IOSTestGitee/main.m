//
//  main.m
//  IOSTestGitee
//
//  Created by yoyo on 2022/3/1.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World! Or Eat Shit!!!");
        NSLog(@"Let's go!!!");
        
        MyClass *classOne = [[MyClass alloc] init];
        [classOne sayHello];
        
        MyClass *classTwo = [[MyClass alloc] init];
        classTwo.strName = @"classTwo";
        classTwo.nAge = 10;
        [classTwo sayHello];
    }
    return 0;
}
