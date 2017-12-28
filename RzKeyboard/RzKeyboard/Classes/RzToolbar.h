//
//  RzToolbar.h
//  RzKeyboard
//
//  Created by Tarun Nagar on 12/28/17.
//  Copyright © 2017 Yogesh Raj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RzToolbar : UIToolbar

@property (strong, nonatomic) UIScrollView *mainScrollView;


/**
 *  Array of input fields for which you want to provide Prev, Next, Done behaviour. Input fields are switched from first in this array to last.
 */
@property (strong, nonatomic) NSArray *inputFields;


/**
 *  Array of delegates of input fields. `RzToolbar` provides default behaviour with input fileds. If you still need to do some work in delegate methods, set your delegates here.
 */
@property (strong, nonatomic) NSArray *inputFieldsDelegates;


/**
 *  Change default color of buttons in `RzToolbar`.
 */
@property (strong, nonatomic) UIColor *navigationButtonsTintColor;


/**
 *  Hide Prev, Next buttons in navigation. Handy in situation when `RzToolbar` is `inputAccessoryView` of only one input view.
 */
@property (assign, nonatomic) BOOL shouldHideNavigationButtons;


/**
 *  Creates `RzToolbar` instance
 *
 *  @return `RzToolbar` instance with default settings.
 */
+ (RzToolbar *)defaultToolbar;
@end
