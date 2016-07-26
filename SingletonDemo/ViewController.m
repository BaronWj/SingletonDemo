//
//  ViewController.m
//  SingletonDemo
//
//  Created by 潘伟杰 on 16/7/13.
//  Copyright © 2016年 潘伟杰. All rights reserved.
//

#import "ViewController.h"
#import "testSingleton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    testSingleton * objct1 =  [testSingleton sharedInstance];
    NSLog(@"%@",objct1);
    testSingleton *objc2 = [[testSingleton alloc] init];
    NSLog(@"%@",objc2);
    testSingleton *objc3 = [testSingleton new];
    NSLog(@"%@",objc3);
    
    NSLog(@"description__%@",[testSingleton sharedInstance].description);
    
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
  
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
