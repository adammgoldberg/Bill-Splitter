//
//  ViewController.m
//  Bill Splitter
//
//  Created by Adam Goldberg on 2015-10-11.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *billAmount;

@property (strong, nonatomic) IBOutlet UISlider *numberOfPeople;

@property (strong, nonatomic) IBOutlet UILabel *amountToPay;

@property (strong, nonatomic) IBOutlet UILabel *numberLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)provideValue:(id)sender {
    int numppl = self.numberOfPeople.value;
    self.numberLabel.text = [NSString stringWithFormat:@"Number of people splitting: %d", numppl];
    
    
}


- (IBAction)calculateAmount:(id)sender {
    float amount = [self.billAmount.text floatValue];
    float people = self.numberOfPeople.value;
    float result = (amount / people);
    self.amountToPay.text = [NSString stringWithFormat:@"%f", result];
}

                            






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
