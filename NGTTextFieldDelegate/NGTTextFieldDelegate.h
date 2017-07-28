//
//  NGTTextFieldDelegate.h
//  NGTTextFieldDelegateDemo
//
//  Created by JoeXu on 2017/7/28.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NGTTextFieldDelegate : NSObject<UITextFieldDelegate>

@property (nonatomic,copy) BOOL(^shouldBeginEditing)(UITextField *);

@property (nonatomic,copy) void(^didBeginEditing)(UITextField *);

@property (nonatomic,copy) BOOL(^shouldEndEditing)(UITextField *);

@property (nonatomic,copy) void(^didEndEditing)(UITextField *);

@property (nonatomic,copy) BOOL(^shouldChangeCharacters)(UITextField *,NSRange inRange,NSString *string,NSString *willString);

@property (nonatomic,copy) BOOL(^shouldClear)(UITextField *);

@property (nonatomic,copy) BOOL(^shouldReturn)(UITextField *);



@end
