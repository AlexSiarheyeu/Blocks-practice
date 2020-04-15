//
//  Student.m
//  BlocksPractice
//
//  Created by Alexey Sergeev on 4/14/20.
//  Copyright © 2020 Alexey Sergeev. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)studentFeels:(void (^)(Student*))howAreYou  {
    NSLog(@"%@'s temrerature is %f", self.Name, self.temperature);
    howAreYou(self);
}



@end
