//
//  IPAPatchEntry.m
//  IPAPatch
//
//  Created by wutian on 2017/3/17.
//  Copyright © 2017年 Weibo. All rights reserved.
//

#import "IPAPatchEntry.h"
#import <UIKit/UIKit.h>
#import "IPAPatchFramework/IPAPatchFramework-Swift.h"

@implementation IPAPatchEntry

+ (void)load
{
    [IPAPatchEntrySwift enter];
}

@end
