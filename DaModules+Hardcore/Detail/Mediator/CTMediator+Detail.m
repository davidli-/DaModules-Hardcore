//
//  CTMediator+Detail.m
//  DaModules+Hardcore
//
//  Created by Macmafia on 2019/9/2.
//  Copyright © 2019 Macmafia. All rights reserved.
//

#import "CTMediator+Detail.h"
#import "Defines.h"

@implementation CTMediator (Detail)

- (UIViewController *)CTDetail:(NSDictionary *)paramDic{
    
    /* 调用CTMediator库的“performTarget”方法;
    使用字符串，结合反射机制，从而避免直接引用目标类，减少依赖
    */
    return [self performTarget:k_Target_DetailViewController
                        action:k_SEL_showDetail
                        params:paramDic
             shouldCacheTarget:NO];
}

@end
