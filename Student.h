//
//  Student.h
//  BlocksPractice
//
//  Created by Alexey Sergeev on 4/14/20.
//  Copyright © 2020 Alexey Sergeev. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^checkingAge)(bool);
typedef BOOL (^checkingEducation)(NSString* university) ;

@interface Student : NSObject

@property(nonatomic, strong) NSString * Name;
@property(nonatomic, strong) NSString * surname;
@property(nonatomic, strong) NSString * education;

@property(nonatomic, assign) float temperature;
@property(nonatomic, assign) NSInteger age;


-(void)studentFeels: (void (^)(Student*))howAreYou;

-(void)studentAge: (NSNumber*)age howOldAreYou:(checkingAge)info;

-(void)education:(checkingEducation)studentHasEducation;

@end


