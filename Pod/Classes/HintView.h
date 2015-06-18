//
//  HintView.h
//  docbasePatient
//
//  Created by Alex Chan on 6/17/15.
//  Copyright (c) 2015 Time Creation Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HintView : UIView

- (void) showWithContent: (UIView *) contentView;
- (void) closeHint;
+ (instancetype)sharedManager;

@end
