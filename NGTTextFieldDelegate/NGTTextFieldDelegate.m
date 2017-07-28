//
//  NGTTextFieldDelegate.m
//  NGTTextFieldDelegateDemo
//
//  Created by JoeXu on 2017/7/28.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import "NGTTextFieldDelegate.h"

@implementation NGTTextFieldDelegate



- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return self.shouldBeginEditing ? self.shouldBeginEditing(textField) : YES;
}


- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if(self.didBeginEditing){self.didBeginEditing(textField);}
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    return self.shouldEndEditing ? self.shouldEndEditing(textField) : YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    if(self.didEndEditing){self.didEndEditing(textField);}
}



- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    if(self.shouldChangeCharacters){
        NSString *willString = [textField.text stringByReplacingCharactersInRange:range withString:string];
        return self.shouldChangeCharacters(textField,range,string,willString);
    }
    
    return YES;
}



- (BOOL)textFieldShouldClear:(UITextField *)textField{
    return self.shouldEndEditing ? self.shouldEndEditing(textField) : YES;
}




- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(self.shouldReturn){
        return self.shouldReturn(textField);
    }
    [textField resignFirstResponder];
    return YES;
}



@end
