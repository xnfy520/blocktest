//
//  NextViewController.h
//  BlockTest
//
//  Created by 雪念飞叶 on 15/11/5.
//  Copyright © 2015年 雪念飞叶. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ReturnTextBlock)(NSString *showText);

@interface NextViewController : UIViewController

@property (nonatomic, copy)ReturnTextBlock returnTextBlock;

- (void)returnText:(ReturnTextBlock)block;

@end
