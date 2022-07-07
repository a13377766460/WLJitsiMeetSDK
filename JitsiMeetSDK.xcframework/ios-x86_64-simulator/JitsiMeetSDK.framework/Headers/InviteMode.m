//
//  InviteMode.m
//  JitsiMeetSDK
//
//  Created by 王路 on 2022/7/7.
//  Copyright © 2022 Jitsi. All rights reserved.
//

#import "InviteMode.h"
#import <React/RCTLog.h>
#import <React/RCTBridgeModule.h>
#import "LogUtils.h"
#import "JitsiMeet.h"

NSString *const INVITE_PARTICIPANT_NAME = @"INVITE_PARTICIPANT";
#define kStr(x)    [NSString stringWithFormat:@"%@", x == nil ? @"" : x]

@interface InviteMode ()<RCTBridgeModule>

@end
@implementation InviteMode

RCT_EXPORT_MODULE();


/// 添加人员
RCT_EXPORT_METHOD(addPeople) {
    NSLog(@"添加人员");
    [[NSNotificationCenter defaultCenter] postNotificationName:INVITE_PARTICIPANT_NAME object:nil userInfo:nil];
}

//设置房间名称
RCT_EXPORT_METHOD(getSubject:(RCTResponseSenderBlock)callback)
{
    if (callback) {
        NSDictionary *config =[JitsiMeet sharedInstance].defaultConferenceOptions.config;
        NSString *name = kStr(config[@"subject"]);
        if (name.length) {
            callback(@[name]);
        }
    }
}

@end
