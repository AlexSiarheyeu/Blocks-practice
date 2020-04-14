//
//  Student.m
//  BlocksPractice
//
//  Created by Alexey Sergeev on 4/14/20.
//  Copyright © 2020 Alexey Sergeev. All rights reserved.
//

#import "Student.h"

@implementation Student


- (void)performSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay {
    [self performSelector:@selector(takePill) withObject:self.Name afterDelay:5.f];
}

- (void)studentFeels:(void (^)(Student*))howAreYou{
    NSLog(@"%@, temrerature is %f", self.Name, self.temperature);
    howAreYou(self);
}

-(void)takePill{
    NSLog(@"take a pill");
}
@end
