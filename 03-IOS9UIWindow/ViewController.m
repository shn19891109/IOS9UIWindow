//
//  ViewController.m
//  03-IOS9UIWindow
//
//  Created by 苏浩楠 on 16/2/1.
//  Copyright © 2016年 苏浩楠. All rights reserved.
//

#import "ViewController.h"

#import "SHNTopWindowViewController.h"

@interface ViewController ()

/**状态来样式*/
@property (nonatomic,assign) UIStatusBarStyle statusBarStyle;
/**状态栏是否隐藏*/
@property (nonatomic,assign) BOOL statusBarHidden;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    
}

#pragma mark---只有一个UIWindow的时候设置状态栏样式----
//- (IBAction)change1:(UISegmentedControl *)sender {
//    
//    if (sender.selectedSegmentIndex == 0) {
//        self.statusBarHidden = YES;
//    } else {
//        self.statusBarHidden = NO;
//    }
//    //更新状态栏
//    [self setNeedsStatusBarAppearanceUpdate];
//
//}
//- (IBAction)change2:(UISegmentedControl *)sender {
//    if (sender.selectedSegmentIndex == 0) { //黑色
//        self.statusBarStyle = UIStatusBarStyleDefault;
//    } else {//白色
//        self.statusBarStyle = UIStatusBarStyleLightContent;
//    }
//    //更新状态栏
//    [self setNeedsStatusBarAppearanceUpdate];
//}
//
//- (UIStatusBarStyle)preferredStatusBarStyle {
//    return self.statusBarStyle;
//}
//- (BOOL)prefersStatusBarHidden {
//    return self.statusBarHidden;
//}

#pragma mark ----添加 topWindow 后设置状态栏样式
- (IBAction)change1:(UISegmentedControl *)sender {
    
    if (sender.selectedSegmentIndex == 0) {

        [SHNTopWindowViewController sharedInstance].statusBarHidden = YES;
        
    } else {
        [SHNTopWindowViewController sharedInstance].statusBarHidden = NO;
    }
}
- (IBAction)change2:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) { //黑色
        [SHNTopWindowViewController sharedInstance].statusBarStyle = UIStatusBarStyleDefault;;
    } else {//白色
        [SHNTopWindowViewController sharedInstance].statusBarStyle = UIStatusBarStyleLightContent;;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
