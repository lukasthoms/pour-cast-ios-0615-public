//
//  FISForeCaseView.h
//  pour-cast
//
//  Created by Lukas Thoms on 7/22/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISDailyForecast.h"

@interface FISForeCaseView : UIView

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (strong, nonatomic) IBOutlet FISForeCaseView *view;
@property (strong, nonatomic) FISDailyForecast *forecast;

-(void) setLabelsWithForecast: (FISDailyForecast *)forecast;

@end
