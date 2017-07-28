//
//  ViewController.m
//  NGTTextFieldDelegateDemo
//
//  Created by JoeXu on 2017/7/28.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import "ViewController.h"

#import "UITextField+NGTDelegate.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextField *txf = [[UITextField alloc] initWithFrame:(CGRect){10,100,100,30}];
    txf.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:txf];
    
    NGTTextFieldDelegate *delegate = [[NGTTextFieldDelegate alloc] init];
    txf.ngtDelegate = delegate;
    [delegate setShouldChangeCharacters:^BOOL(UITextField *txf1, NSRange range, NSString *str, NSString *willStr) {
        NSLog(@"%@",willStr);
        return willStr.length < 8;
    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
