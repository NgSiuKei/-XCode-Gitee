//
//  MyClass.m
//  IOSTestGitee
//
//  Created by yoyo on 2022/3/1.
//

#import "MyClass.h"

@implementation MyClass

-(void)sayHello {
    self.strName = ((nil==self.strName)?(@"NULL"):(self.strName));
    self.nAge = ((0<self.nAge)?(self.nAge):(-1));
    NSLog(@"Hello! My name is %@! I'm %ld years old!", self.strName, self.nAge);
}

@end
