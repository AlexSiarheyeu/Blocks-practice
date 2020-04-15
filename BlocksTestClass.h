//
//  BlocksTestClass.h
//  BlocksPractice
//
//  Created by Alexey Sergeev on 4/15/20.
//  Copyright © 2020 Alexey Sergeev. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef void (^BlocksTesting)(void);

@interface BlocksTestClass : NSObject

@property(nonatomic, copy) BlocksTesting block;


@end

NS_ASSUME_NONNULL_END
