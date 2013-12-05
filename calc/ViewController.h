//
//  ViewController.h
//  calc
//
//  Created by 篠原　明日香 on 13/11/21.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    int currentNumber;
    int exNumber;
}


- (IBAction)inputNumber0:(id)sender;
- (IBAction)inputNumber1:(id)sender;
- (IBAction)inputNumber2:(id)sender;
- (IBAction)inputNumber3:(id)sender;
- (IBAction)inputNumber4:(id)sender;
- (IBAction)inputNumber5:(id)sender;
- (IBAction)inputNumber6:(id)sender;
- (IBAction)inputNumber7:(id)sender;
- (IBAction)inputNumber8:(id)sender;
- (IBAction)inputNumber9:(id)sender;
- (IBAction)addition:(id)sender;
- (IBAction)subtraction:(id)sender;
- (IBAction)multiplication:(id)sender;
- (IBAction)division:(id)sender;
- (IBAction)equal:(id)sender;
- (IBAction)plus_or_minus:(id)sender;
- (IBAction)AC:(id)sender;
- (IBAction)dot:(id)sender;

@property enum {add,sub,mul,div} state;

@property (weak, nonatomic) IBOutlet UILabel *numberOutput;

@end
