//
//  CTMediator+Detail.h
//  DaModules+Hardcore
//
//  Created by Macmafia on 2019/9/2.
//  Copyright © 2019 Macmafia. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (Detail)

/**
 通信层对外提供的接口

 @param paramDic 参数
 @return 返回值
 */
- (UIViewController*)CTDetail:(NSDictionary*)paramDic;

@end

NS_ASSUME_NONNULL_END
