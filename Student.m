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

- (void)studentAge:(NSNumber *)age howOldAreYou:(checkingAge)info {
    if (age.intValue > 18 ) {
        info(true);
    } else {
        info(false);
    }
}

- (void)education:(checkingEducation)studentHasEducation {
    //NSArray<NSString*> *universities = @[@"BSU", @"BSEU", @"BNTU"];
    if ([self.education isEqualToString:@"BSU"]) {
        if ([self.education isEqualToString:@"BSEU"]) {
            if ([self.education isEqualToString:@"BNTU"]) {
                NSLog(@"%@ has education - %@", self.Name, self.education);
        } else {
        NSLog(@"%@ does not has education", self.Name);
        studentHasEducation(@"");
        }
        }
    }
    }


@end
