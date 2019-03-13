//
//  Sound.h
//  test3
//
//  Created by yu shuhui on 2019/3/13.
//  Copyright © 2019 http://www.risecenter.com. All rights reserved.
//


#import <Foundation/Foundation.h>

#import <OpenAL/al.h>

@interface Sound : NSObject {
@private
    ALenum _format;
    ALuint _buffer;
    unsigned long _rate;
    float _duration;
}

+(void)playSound:(NSString *)filename volume:(float)volume pitch:(float)pitch;
+(void)playSound:(NSString *)filename;

+(ALuint)playLoop:(NSString *)filename volume:(float)volume pitch:(float)pitch;
+(void)stopLoop:(ALuint)loopSource;

@end
