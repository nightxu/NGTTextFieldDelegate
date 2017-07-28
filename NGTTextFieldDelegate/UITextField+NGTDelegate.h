//
//  UITextField+NGTDelegate.h
//  NGTTextFieldDelegateDemo
//
//  Created by JoeXu on 2017/7/28.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NGTTextFieldDelegate.h"

@interface UITextField (NGTDelegate)

@property (nonatomic,strong) NGTTextFieldDelegate *ngtDelegate;

@end
