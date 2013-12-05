//
//  ViewController.m
//  calc
//
//  Created by 篠原　明日香 on 13/11/21.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)inputNumber0:(id)sender {
    currentNumber = currentNumber * 10;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}
- (IBAction)inputNumber1:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 1;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}
- (IBAction)inputNumber2:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 2;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}
- (IBAction)inputNumber3:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 3;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}
- (IBAction)inputNumber4:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 4;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}
- (IBAction)inputNumber5:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 5;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}
- (IBAction)inputNumber6:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 6;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}
- (IBAction)inputNumber7:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 7;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}
- (IBAction)inputNumber8:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 8;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}
- (IBAction)inputNumber9:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 9;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)addition:(id)sender {
    exNumber = exNumber + currentNumber;
    currentNumber = 0;
    [self setState:add];
    _numberOutput.text = [NSString stringWithFormat:@"%d",exNumber];
}

- (IBAction)subtraction:(id)sender {
    exNumber = exNumber - currentNumber;
    currentNumber = 0;
    [self setState:sub];
    _numberOutput.text = [NSString stringWithFormat:@"%d",exNumber];
}

- (IBAction)multiplication:(id)sender {
    exNumber = exNumber * currentNumber;
    currentNumber = 0;
    [self setState:mul];
    _numberOutput.text = [NSString stringWithFormat:@"%d",exNumber];
}

- (IBAction)division:(id)sender {
    exNumber = exNumber / currentNumber;
    currentNumber = 0;
    [self setState:div];
    _numberOutput.text = [NSString stringWithFormat:@"%d",exNumber];
}

- (IBAction)equal:(id)sender {
    switch (self.state) {
        case add:
            currentNumber = exNumber + currentNumber;
            _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
            exNumber = currentNumber;
            currentNumber = 0;
            break;
        case sub:
            currentNumber = exNumber - currentNumber;
            _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
            exNumber = currentNumber;
            currentNumber = 0;
            break;
        case mul:
            currentNumber = exNumber * currentNumber;
            _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
            exNumber = currentNumber;
            currentNumber = 0;
            break;
        case div:
            currentNumber = exNumber / currentNumber;
            _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
            exNumber = currentNumber;
            currentNumber = 0;
            break;
    }
}

- (IBAction)plus_or_minus:(id)sender {
    currentNumber = currentNumber * (-1);
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)AC:(id)sender {
    currentNumber = 0;
    exNumber = 0;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)dot:(id)sender {
}
@end
