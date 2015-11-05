//
//  NextViewController.m
//  BlockTest
//
//  Created by 雪念飞叶 on 15/11/5.
//  Copyright © 2015年 雪念飞叶. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController
{
    UITextField *tf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    tf = [[UITextField alloc] initWithFrame:CGRectMake(50, 200, 200, 50)];
    tf.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:tf];
    
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [bt setTitle:@"submit" forState:UIControlStateNormal];
    bt.frame = CGRectMake(50, 300, 200, 50);
    [bt addTarget:self action:@selector(submits) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];
    
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [tf resignFirstResponder];
}

- (void)submits
{
    if (self.returnTextBlock != nil) {
        NSLog(@"aa");
        self.returnTextBlock(tf.text);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)returnText:(ReturnTextBlock)block
{
    NSLog(@"bb");
    self.returnTextBlock = block;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
