//
//  Target_DetailViewController.m
//  DaModules+Hardcore
//
//  Created by Macmafia on 2019/9/2.
//  Copyright © 2019 Macmafia. All rights reserved.
//

#import "Target_DetailViewController.h"
#import "DetailViewController.h" // 服务类可依赖组件原类
#import "Defines.h"

@implementation Target_DetailViewController

- (UIViewController *)Action_showDetail:(NSDictionary *)paramDic{

    // 当前为业务实现层 属于组件的一部分，可以引用目标VC
    DetailViewController *controller = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]
                                          instantiateViewControllerWithIdentifier:@"DetailViewController"];
    // 给目标传值
    controller.params = paramDic;
    
    return controller;
}
@end
