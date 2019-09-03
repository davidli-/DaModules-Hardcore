//
//  DetailViewController.m
//  DaModules+Hardcore
//
//  Created by Macmafia on 2019/9/2.
//  Copyright © 2019 Macmafia. All rights reserved.
//

#import "DetailViewController.h"
#import "Defines.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *mIconImv;

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, copy) DetailCallback callBack; // 回调block

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 获取参数
    self.mIconImv.image = self.params[k_Key_Image];
    self.callBack = self.params[k_Key_Block];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onBackWithBlock) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
}


- (void)dealloc{
    NSLog(@"+++%@ dealloced~",[self class]);
}

- (void)onBackWithBlock{
    self.callBack(); //回传信息
    [self.navigationController popViewControllerAnimated:YES];
}

@end
