//
//  ViewController.m
//  BlockTest
//
//  Created by 雪念飞叶 on 15/11/5.
//  Copyright © 2015年 雪念飞叶. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

const NSString *WCode = @"hohohhoho";

@interface ViewController ()

@end

@implementation ViewController
{//ssssss
    UIButton *bt;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //sfsfsf
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    bt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    NSLog(@"hahhohohsssssefsfsf");
    bt.frame = CGRectMake(100, 100, 100, 100);
    
    [bt setTitle:@"next" forState:UIControlStateNormal];
    
    [self.view addSubview:bt];
    NSLog(@"---sssssssssssefsfsefsfesfs");
    [bt addTarget:self action:@selector(nextView:) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)nextView:(id)sender
{

    NextViewController *nv = [[NextViewController alloc] init];
    [self.navigationController pushViewController:nv animated:YES];
    
    
    [nv returnText:^(NSString *showText) {
        NSLog(@"????sefsfsefsf");
        [UIColor whiteColor];
        [UIImage imageNamed:@"<#string#>"];
        NSLog(@"what are you doing sefsefesfsef");
        [bt setTitle:showText forState:UIControlStateNormal];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
