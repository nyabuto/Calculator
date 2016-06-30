//
//  ViewController.h
//  Calculator
//
//  Created by ilabadmin on 6/29/16.
//  Copyright (c) 2016 softikoda. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{ Plus,Minus,Multiply,Divide} CalcOperation;


@interface ViewController : UIViewController{
NSString *storage;
CalcOperation operation;
    IBOutlet UITextField *answer;
}

- (IBAction)no7:(UIButton *)sender;
- (IBAction)no8:(UIButton *)sender;
- (IBAction)no9:(UIButton *)sender;
- (IBAction)divide:(UIButton *)sender;
- (IBAction)no4:(UIButton *)sender;
- (IBAction)no5:(UIButton *)sender;
- (IBAction)no6:(UIButton *)sender;
- (IBAction)multiply:(UIButton *)sender;
- (IBAction)no1:(UIButton *)sender;
- (IBAction)no2:(UIButton *)sender;
- (IBAction)no3:(UIButton *)sender;
- (IBAction)minus:(UIButton *)sender;
- (IBAction)no0:(UIButton *)sender;
- (IBAction)dot:(UIButton *)sender;
- (IBAction)plus:(UIButton *)sender;
- (IBAction)equalsSign:(UIButton *)sender;
- (IBAction)btnClear:(UIButton *)sender;

@end

