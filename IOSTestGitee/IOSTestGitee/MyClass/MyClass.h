//
//  MyClass.h
//  IOSTestGitee
//
//  Created by yoyo on 2022/3/1.
//

#import <Foundation/Foundation.h>

#ifndef MyClass_h
#define MyClass_h

@interface MyClass : NSObject

@property(nonatomic, strong) NSString *strName;
@property(nonatomic, assign) NSInteger nAge;

-(void)sayHello;

@end

#endif /* MyClass_h */
