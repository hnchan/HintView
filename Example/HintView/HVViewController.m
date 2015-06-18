//
//  HVViewController.m
//  HintView
//
//  Created by Alex Chan on 06/17/2015.
//  Copyright (c) 2014 Alex Chan. All rights reserved.
//

#import "HVViewController.h"
#import <HintView/HintView.h>

@interface HVViewController ()

@end

@implementation HVViewController

- (void)viewDidLoad {
  [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    
  //Setup a view as whatever you want, it will place to the middle of the Hintview automatically
  UIImageView *image =
      [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"minions"]];

  image.layer.cornerRadius = image.frame.size.width / 2;
  image.layer.masksToBounds = YES;
  image.layer.borderWidth = 0;
    
  [[HintView sharedManager] showWithContent:image];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
