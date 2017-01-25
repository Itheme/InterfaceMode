//
//  InterfaceMode.m
//  EventGridManager
//
//  Created by Danila Parkhomenko on 16/06/16.
//  Copyright © 2016 Entech Solutions. All rights reserved.
//

#import "InterfaceMode.h"

@implementation InterfaceMode

static InterfaceMode *interface = nil;

+ (InterfaceMode *) instance
{
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        interface = [[self alloc] init];
    });
    return interface;
}

+ (void) overrideWith:(InterfaceMode *)interfaceMode
{
    interface = interfaceMode;
}

- (BOOL) isIPadFullScreen
{
    return UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
}

- (BOOL) isIPhoneFullScreen
{
    return UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone;
}

+ (BOOL)iPadFullScreen
{
    return [[self instance] isIPadFullScreen];
}

+ (BOOL)iPhoneFullScreen
{
    return [[self instance] isIPhoneFullScreen];
}

- (BOOL) isIPhone5 {
    return [UIScreen mainScreen].bounds.size.height > 480;
}

+ (BOOL)iPhone5
{
    return [[self instance] isIPhone5];
}

- (BOOL)retina
{
    return [[UIScreen mainScreen] respondsToSelector:@selector(scale)] && [[UIScreen mainScreen] scale] > 1.0;
}

+ (BOOL)isRetina
{
    return [[self instance] retina];
}

+ (BOOL) isRunningTests
{
    NSDictionary* environment = [[NSProcessInfo processInfo] environment];
    return (environment[@"XCInjectBundleInto"] != nil);
}

@end
