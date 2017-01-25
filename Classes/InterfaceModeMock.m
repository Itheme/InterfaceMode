//
//  InterfaceModeMock.m
//  EventGridManager
//
//  Created by Danila Parkhomenko on 16/06/16.
//  Copyright © 2016 Entech Solutions. All rights reserved.
//

#import "InterfaceModeMock.h"

@implementation InterfaceModeMock

- (BOOL)isIPhoneFullScreen {
    return self.forceIPhone;
}

- (BOOL)isIPadFullScreen {
    return self.forceIPad;
}

@end
