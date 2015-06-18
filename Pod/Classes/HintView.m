//
//  HintView.m
//  docbasePatient
//
//  Created by Alex Chan on 6/17/15.
//  Copyright (c) 2015 Time Creation Limited. All rights reserved.
//

#import "HintView.h"

@implementation HintView
- (void)showWithContent:(UIView *)contentView {
  if (contentView != nil) {
    [self addSubview:contentView];
    contentView.center = self.center;
  }
  [[[UIApplication sharedApplication] delegate].window addSubview:self];

  UITapGestureRecognizer *singleTap =
      [[UITapGestureRecognizer alloc] initWithTarget:self
                                              action:@selector(closeHint)];

  [self addGestureRecognizer:singleTap];
}

- (void)closeHint {
  [self removeFromSuperview];
}

+ (instancetype)sharedManager {
  static HintView *sharedMyManager = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    sharedMyManager =
        [[HintView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    if (sharedMyManager) {
      sharedMyManager.opaque = NO;
      sharedMyManager.backgroundColor =
          [[UIColor blackColor] colorWithAlphaComponent:0.5f];
      sharedMyManager.userInteractionEnabled = TRUE;
    }

  });
  return sharedMyManager;
}

@end
