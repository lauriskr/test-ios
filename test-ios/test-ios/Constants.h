//
//  Constants.h
//  test-ios
//
//  Created by lauris on 4/24/14.
//  Copyright (c) 2014 greenhouse. All rights reserved.
//

#if DEBUG
#define MSLog(s, ...) NSLog( @"<%p %@:(%d)> %@", self, [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#else
#define MSLog(s, ...) //
#endif