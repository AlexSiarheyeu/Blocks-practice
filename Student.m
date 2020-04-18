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

- (void)education:(NSString*)education checkEd:(checkingEducation)university {
    self.education = education;
    if ([education isEqualToString:@"BSU"] ||
        [education isEqualToString:@"BNTU"] ||
        [education isEqualToString:@"BSEU"]) {
        university(@"yes");
    } else {
        university(@"no");
    }
}
    
    
    
   
    


@end
