//
//  ViewController.m
//  RzKeyboard
//
//  Created by Yogesh Raj on 12/28/17.
//  Copyright © 2017 Yogesh Raj. All rights reserved.
//

#import "ViewController.h"
#import "RzToolbar.h"

@interface ViewController ()


@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) IBOutlet UITextField *textField1;
@property (strong, nonatomic) IBOutlet UITextField *textField2;
@property (strong, nonatomic) IBOutlet UITextField *textField3;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UITextField *textFieldDatePicker;
@property (strong, nonatomic) IBOutlet UITextField *textFieldPickerView;

@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;
@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.datePicker addTarget:self action:@selector(datePickerValueChanged:) forControlEvents:UIControlEventValueChanged];
    self.textFieldPickerView.inputView = self.pickerView;
    self.textFieldDatePicker.inputView = self.datePicker;
    
    RzToolbar *toolbar = [RzToolbar defaultToolbar];
    toolbar.navigationButtonsTintColor = [UIColor blackColor];
    toolbar.mainScrollView = self.scrollView;
    toolbar.inputFields = @[self.textField1, self.textField2, self.textField3, self.textView, self.textFieldDatePicker, self.textFieldPickerView];
}

#pragma mark - UIDatePicker methods

- (void)datePickerValueChanged:(UIDatePicker *)datePicker {
    
    self.textFieldDatePicker.text = datePicker.date.description;
}


#pragma mark - UIPickerViewDataSource methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return 10;
}

#pragma mark - UIPickerViewDelegate methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    return [@(row).stringValue stringByAppendingString:@". Current Row"];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    self.textFieldPickerView.text = [@(row).stringValue stringByAppendingString:@". Current Row"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
