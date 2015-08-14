//
//  ViewController.m
//  单例模式
//
//  Created by 洪峰 on 15/8/13.
//  Copyright (c) 2015年 洪峰. All rights reserved.
//

#import "ViewController.h"
#import "MySingletonClass.h"
#import "MySingletonClassb.h"
#import "MySingletonClassC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
    
    MySingletonClass* singleton = [[MySingletonClass alloc] init];
    MySingletonClass* singleton2 = [MySingletonClass sharedMySingletonClass];
    MySingletonClass* singleton3 = [[MySingletonClass alloc] init];
    MySingletonClass* singleton4 = [MySingletonClass sharedMySingletonClass];
    NSLog(@"\n %@\n %@\n %@\n %@",singleton,singleton2,singleton3,singleton4);
     
     
    MySingletonClassb* singleton = [[MySingletonClassb alloc] init];
    MySingletonClassb* singleton2 = [MySingletonClassb sharedMySingletonClassb];
    MySingletonClassb* singleton3 = [[MySingletonClassb alloc] init];
    MySingletonClassb* singleton4 = [MySingletonClassb sharedMySingletonClassb];
    NSLog(@"\n %@\n %@\n %@\n %@",singleton,singleton2,singleton3,singleton4);
     
     */
    
    MySingletonClassC* singleton = [[MySingletonClassC alloc] init];
    MySingletonClassC* singleton2 = [MySingletonClassC sharedMySingletonClassC];
    MySingletonClassC* singleton3 = [[MySingletonClassC alloc] init];
    MySingletonClassC* singleton4 = [MySingletonClassC sharedMySingletonClassC];
    NSLog(@"\n %@\n %@\n %@\n %@",singleton,singleton2,singleton3,singleton4);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
