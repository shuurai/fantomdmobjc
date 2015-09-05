//
// FTHeader.h
//
// Created by Shane Fan Di on 5/09/15.
// This file is part of the fantomdmobjc package.
// (c) Fantom Digital (Shuurai) <hyperfan@hotmail.com>
//
// For the full copyright and license information, please view the LICENSE
// file that was distributed with this source code.
//

#import <TargetConditionals.h>
#import <Foundation/Foundation.h>

#ifdef __OBJC_GC__
#error FTDownloadManager does not support Objective-C Garbage Collection
#endif

#if __IPHONE_OS_VERSION_MIN_REQUIRED != 20000 && __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_5_0
#error FTDownloadManager doesn't support Deployment Target version < 5.0
#endif

#ifndef NS_ENUM
#define NS_ENUM(_type, _name) enum _name : _type _name; enum _name : _type
#endif

#ifndef NS_OPTIONS
#define NS_OPTIONS(_type, _name) enum _name : _type _name; enum _name : _type
#endif

#if OS_OBJECT_USE_OBJC
#undef FTDispatchQueueRelease
#undef FTDispatchQueueSetterSementics
#define FTDispatchQueueRelease(q)
#define FTDispatchQueueSetterSementics strong
#else
#undef FTDispatchQueueRelease
#undef FTDispatchQueueSetterSementics
#define FTDispatchQueueRelease(q) (dispatch_release(q))
#define FTDispatchQueueSetterSementics assign
#endif

typedef void(^FTDownloadManagerNoParamsBlock)();

extern NSString *const FTDownloadManagerErrorDomain;

#define dispatch_main_sync_safe(block)\
    if ([NSThread isMainThread]) {\
        block();\
    } else {\
        dispatch_sync(dispatch_get_main_queue(), block);\
    }

#define dispatch_main_async_safe(block)\
    if ([NSThread isMainThread]) {\
        block();\
    } else {\
        dispatch_async(dispatch_get_main_queue(), block);\
    }
