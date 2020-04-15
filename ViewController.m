//
//  ViewController.m
//  BlocksPractice
//
//  Created by Alexey Sergeev on 4/14/20.
//  Copyright © 2020 Alexey Sergeev. All rights reserved.
//

#import "ViewController.h"
#import "BlocksTestClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self howToAvoidRetainCycle];
    
}

-(void)howToAvoidRetainCycle {

    BlocksTestClass* testing = [[BlocksTestClass alloc]init];
    
    __weak  BlocksTestClass *weakTesting = testing;
    
    testing.block = ^{
        NSLog(@"I am a block -%@", weakTesting);
    };
    testing.block();

      }



@end
