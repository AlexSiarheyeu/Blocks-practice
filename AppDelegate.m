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
@property(nonatomic,strong) NSArray *students;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    Student *AlexBibov = [Student new];
    AlexBibov.Name = @"Alex";
    AlexBibov.surname = @"Bibov";
    AlexBibov.temperature = 36.6;
    AlexBibov.age = 17;
    AlexBibov.education = @"BSU";
    
    Student *GrishaSergeev = [Student new];
    GrishaSergeev.Name = @"Grisha";
    GrishaSergeev.surname = @"Sergeev";
    GrishaSergeev.age = 19;
    GrishaSergeev.temperature = 38.2;
    GrishaSergeev.education = @"BSU";

    
    Student *JohnBibov = [Student new];
    JohnBibov.Name = @"John";
    JohnBibov.surname = @"Bibov";
    JohnBibov.age = 22;
    JohnBibov.temperature = 39.4;
    JohnBibov.education = @"BNTU";

    
    Student *PolHeriks = [Student new];
    PolHeriks.Name = @"Pol";
    PolHeriks.surname = @"Heriks";
    PolHeriks.age = 34;
    PolHeriks.education = @"BNTU";


    Student *TrampBibov = [Student new];
    TrampBibov.Name = @"Tramp";
    TrampBibov.surname = @"Bibov";
    TrampBibov.age = 2;
    PolHeriks.education = @"school";

    

  
    
#pragma mark - sorting students
    
    self.students = [NSArray arrayWithObjects: AlexBibov,  GrishaSergeev,
                                                   JohnBibov,  PolHeriks, TrampBibov, nil];
        
    
    self.students = [self.students sortedArrayUsingComparator:
                  ^NSComparisonResult(id object1, id object2) {
        
       if ([[object1 surname] isEqualToString: [object2 surname]]) {
            return [[object1 Name] compare:[object2 Name]];
        } else  {
            return [[object1 surname] compare:[object2 surname]];
        
        }
    }];

    for(Student *student in self.students) {
        NSLog(@"%@ %@", student.Name, student.surname);
    }
#pragma mark - checking temperature

    BlockForStudents howDoYouFeel = ^(Student *anyStudent) {
        if (anyStudent.temperature >=36 && anyStudent.temperature <=38) {
            NSLog(@"%@ feels great", anyStudent.Name);
        } else {
            NSLog(@"%@ feels bad", anyStudent.Name);
        }
    };
    
    [AlexBibov studentFeels:howDoYouFeel];
    [GrishaSergeev studentFeels:howDoYouFeel];
    [JohnBibov studentFeels:howDoYouFeel];
    
    
#pragma mark - checking age
        
    for (Student *student in self.students) {
        NSNumber *ageToNumber = [NSNumber numberWithInteger:student.age];
        [student studentAge:ageToNumber howOldAreYou:^(bool check) {
            if (check) {
                NSLog(@"Thank you %@, you can go", student.Name);
            } else {
                NSLog(@"Thank you %@, where is your parents?", student.Name);
            }
        }];
    }
    
#pragma mark - checking education
    
    for (Student *student in self.students) {

        [student education: student.education checkEd:^BOOL(NSString * univer) {
            if (univer.boolValue) {
                NSLog(@"%@ finished %@", student.Name, student.education);
            } else {
                NSLog(@"%@ doing self study", student.Name);
            }
            return false;
        }];
          
        
    }


    
    

    

    
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
