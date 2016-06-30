//
//  ViewController.m
//  Calculator
//
//  Created by ilabadmin on 6/29/16.
//  Copyright (c) 2016 softikoda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)no7:(id)sender {
    answer.text=[NSString stringWithFormat:@"%@7",answer.text];

}

- (IBAction)no8:(UIButton *)sender {
    answer.text=[NSString stringWithFormat:@"%@8",answer.text];

}

- (IBAction)no9:(UIButton *)sender {
    answer.text=[NSString stringWithFormat:@"%@9",answer.text];

}

- (IBAction)divide:(UIButton *)sender {
    operation = Divide;
    storage = answer.text;
    answer.text=@"";

}

- (IBAction)no4:(UIButton *)sender {
    answer.text=[NSString stringWithFormat:@"%@4",answer.text];

}

- (IBAction)no5:(UIButton *)sender {
    answer.text=[NSString stringWithFormat:@"%@5",answer.text];

}

- (IBAction)no6:(UIButton *)sender {
    answer.text=[NSString stringWithFormat:@"%@6",answer.text];

}

- (IBAction)multiply:(UIButton *)sender {
    operation = Multiply;
    storage = answer.text;
    answer.text=@"";

}

- (IBAction)no1:(UIButton *)sender {
    answer.text=[NSString stringWithFormat:@"%@1",answer.text];

}

- (IBAction)no2:(UIButton *)sender {
    answer.text=[NSString stringWithFormat:@"%@2",answer.text];

}

- (IBAction)no3:(UIButton *)sender {
    answer.text=[NSString stringWithFormat:@"%@3",answer.text];

}

- (IBAction)minus:(id)sender {
    operation = Minus;
    storage = answer.text;
    answer.text=@"";

}

- (IBAction)no0:(UIButton *)sender {
    answer.text=[NSString stringWithFormat:@"%@0",answer.text];

}

- (IBAction)dot:(UIButton *)sender {
    answer.text=[NSString stringWithFormat:@"%@.",answer.text];

}

- (IBAction)plus:(UIButton *)sender {
    operation = Plus;
    storage = answer.text;
    answer.text=@"";

}

- (IBAction)equalsSign:(UIButton *)sender {
    NSString *val = answer.text;
    switch(operation) {
        case Plus :
            answer.text= [NSString stringWithFormat:@"%qi",[val longLongValue]+[storage longLongValue]];
            break;
        case Minus:
            answer.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]-[val longLongValue]];
            break;
        case Divide:
            answer.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]/[val longLongValue]];
            break;
        case Multiply:
            answer.text= [NSString stringWithFormat:@"%qi",[val longLongValue]*[storage longLongValue]];
            break;
    }
}

- (IBAction)btnClear:(UIButton *)sender {
    answer.text = @"";
}
@end
