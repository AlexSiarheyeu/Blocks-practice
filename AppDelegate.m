//
//  AppDelegate.m
//  BlocksPractice
//
//  Created by Alexey Sergeev on 4/14/20.
//  Copyright © 2020 Alexey Sergeev. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

typedef void (^BlockForStudents)(Student*);


@interface AppDelegate ()
@property(nonatomic, strong) Student *student;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    

    Student *AlexBibov = [Student new];
    AlexBibov.Name = @"Alex";
    AlexBibov.surname = @"Bibov";
    
    Student *GrishaSergeev = [Student new];
    GrishaSergeev.Name = @"Grisha";
    GrishaSergeev.surname = @"Sergeev";
    
    Student *JohnBibov = [Student new];
    JohnBibov.Name = @"John";
    JohnBibov.surname = @"Bibov";
    
    Student *PolHeriks = [Student new];
    PolHeriks.Name = @"Pol";
    PolHeriks.surname = @"Heriks";
    
    Student *TrampBibov = [Student new];
    TrampBibov.Name = @"Tramp";
    TrampBibov.surname = @"Bibov";
    
    Student *VladNosov  = [Student new];
    VladNosov.Name = @"Vlad";
    VladNosov.surname = @"Nosov";
    
    Student *PeteKolos = [Student new];
    PeteKolos.Name = @"Pete";
    PeteKolos.surname = @"Kolos";
    
    Student *DrewDember = [Student new];
    DrewDember.Name = @"Drew";
    DrewDember.surname = @"Drew";
    
    Student *KolidHuio = [Student new];
    KolidHuio.Name = @"Kolid";
    KolidHuio.surname = @"Huio";
    
    Student *YutefOposum = [Student new];
    YutefOposum.Name = @"Yutef";
    YutefOposum.surname = @"Oposum";
    
    Student *BavBib = [Student new];
    BavBib.Name = @"Bav";
    BavBib.surname = @"b";
    
  
    
    NSArray *students = [NSArray arrayWithObjects:
                         AlexBibov,  GrishaSergeev,
                         JohnBibov,  PolHeriks,
                         TrampBibov, VladNosov,
                         PeteKolos,  DrewDember,
                         KolidHuio,  YutefOposum,
                         BavBib, nil];
        
   students = [students sortedArrayUsingComparator:
                  ^NSComparisonResult(id object1, id object2) {
        
       if ([[object1 surname] isEqualToString: [object2 surname]]) {
            return [[object1 Name] compare:[object2 Name]];
        } else  {
            return [[object1 surname] compare:[object2 surname]];
        
        }
    }];

    for(Student *student in students) {
        NSLog(@"Student name - %@ %@", student.Name, student.surname);
    }


    
   
    
//    BlockForStudents bko = ^(Student *anyStudent) {
//        if (anyStudent.temperature >=36 && anyStudent.temperature <=38) {
//            NSLog(@"%@ feels great", anyStudent.Name);
//        } else {
//            NSLog(@"%@ feels bad", anyStudent.Name);
//        }
//    };
//    
//    [student3 studentFeels:bko];
//    [student2 studentFeels:bko];
//    [student1 studentFeels:bko];
    

    
    return YES;
}



#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
