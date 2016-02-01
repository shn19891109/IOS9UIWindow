//
//  SHNTopWindowViewController.m
//  03-IOS9UIWindow
//
//  Created by 苏浩楠 on 16/2/1.
//  Copyright © 2016年 苏浩楠. All rights reserved.
//

#import "SHNTopWindowViewController.h"

@interface SHNTopWindowViewController ()

@end

@implementation SHNTopWindowViewController

#pragma mark ---单例

static id instanceVC;

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instanceVC = [[self alloc] init];
    });
    return instanceVC;
}
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instanceVC = [super allocWithZone:zone];
    });
    return instanceVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:[[UISwitch alloc] init]];
}

#pragma mark - 状态栏控制
- (BOOL)prefersStatusBarHidden
{
    return self.statusBarHidden;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return self.statusBarStyle;
}

#pragma mark---根据外面传入的样式改变转态栏样式
- (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle {
    _statusBarStyle = statusBarStyle;
    [self setNeedsStatusBarAppearanceUpdate];
}
- (void)setStatusBarHidden:(BOOL)statusBarHidden {
    _statusBarHidden = statusBarHidden;
    [self setNeedsStatusBarAppearanceUpdate];
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
