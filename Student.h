//
//  Student.h
//  BlocksPractice
//
//  Created by Alexey Sergeev on 4/14/20.
//  Copyright © 2020 Alexey Sergeev. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN



@interface Student : NSObject

@property(nonatomic, strong) NSString * Name;
@property(nonatomic, strong) NSString * surname;
@property(nonatomic, assign) float temperature;


-(void)studentFeels: (void (^)(Student*))howAreYou;

- (void)performSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay;
@end

NS_ASSUME_NONNULL_END
