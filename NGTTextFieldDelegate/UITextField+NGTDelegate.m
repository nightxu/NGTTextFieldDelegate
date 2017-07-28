//
//  UITextField+NGTDelegate.m
//  NGTTextFieldDelegateDemo
//
//  Created by JoeXu on 2017/7/28.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import "UITextField+NGTDelegate.h"
#import <objc/runtime.h>

@implementation UITextField (NGTDelegate)

- (void)setNgtDelegate:(NGTTextFieldDelegate *)ngtDelegate{
    objc_setAssociatedObject(self, @selector(ngtDelegate), ngtDelegate, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.delegate = ngtDelegate;
}
- (NGTTextFieldDelegate *)ngtDelegate{
    return objc_getAssociatedObject(self, _cmd);
}


@end
