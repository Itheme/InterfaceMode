//
//  InterfaceMode.h
//  EventGridManager
//
//  Created by Danila Parkhomenko on 16/06/16.
//  Copyright © 2016 Entech Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InterfaceMode : NSObject

@property (nonatomic, readonly, getter = isIPadFullScreen) BOOL iPadFullScreen;
@property (nonatomic, readonly, getter = isIPhoneFullScreen) BOOL iPhoneFullScreen;
@property (nonatomic, readonly, getter = isIPhone5) BOOL iPhone5;
@property (nonatomic, readonly, getter = retina) BOOL retina;

+ (InterfaceMode *) instance;
+ (BOOL)iPadFullScreen;
+ (BOOL)iPhoneFullScreen;
+ (BOOL)iPhone5;
+ (BOOL)isRetina;

+ (UIColor *)barTintColor;

+ (void)overrideWith:(InterfaceMode *)interfaceMode;
+ (BOOL) isRunningTests;

@end
