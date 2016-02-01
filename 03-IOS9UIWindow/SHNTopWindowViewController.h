//
//  SHNTopWindowViewController.h
//  03-IOS9UIWindow
//
//  Created by 苏浩楠 on 16/2/1.
//  Copyright © 2016年 苏浩楠. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SHNTopWindowViewController : UIViewController

+ (instancetype)sharedInstance;

/**
 *  通过外面传入的样式控制状态栏的样式
 */
@property (nonatomic,assign) UIStatusBarStyle statusBarStyle;
@property (nonatomic,assign) BOOL statusBarHidden;
@end
