//
//  HomeViewController.m
//  DaModules+Hardcore
//
//  Created by Macmafia on 2019/9/2.
//  Copyright © 2019 Macmafia. All rights reserved.
//

#import "HomeViewController.h"
#import "CTMediator+Detail.h"
#import "Defines.h"

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)onShowDetail:(id)sender {
    UIButton *btn = sender;
    
    // 声明回调 从头像页面返回当前页面时更新标题
    DetailCallback block = ^(){
        self.title = @"Info Checked";
    };
    
    // 通过中间层调用别的组件，传递参数
    NSDictionary *params = @{k_Key_Image : btn.currentBackgroundImage, k_Key_Block : block};
    UIViewController *controller = [[CTMediator sharedInstance] CTDetail:params];
    if (controller) {
        [self.navigationController pushViewController:controller animated:YES];
    }
}

@end
