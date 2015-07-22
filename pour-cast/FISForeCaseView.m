//
//  FISForeCaseView.m
//  pour-cast
//
//  Created by Lukas Thoms on 7/22/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISForeCaseView.h"
#import <Masonry.h>

@implementation FISForeCaseView


-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self) {
        [self commonInit];
    }
    
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self) {
        [self commonInit];
    }
    
    return self;
}

-(void) commonInit {
    
    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self.class)
                                  owner:self
                                options:nil];
    [self addSubview:self.view];
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];

}

-(void) setLabelsWithForecast: (FISDailyForecast *)forecast {
    self.forecast = forecast;
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"MM/dd"];
    NSString *maxTemp = [NSString stringWithFormat:@"High: %.1fF", self.forecast.temperatureMax];
    NSString *minTemp = [NSString stringWithFormat:@"Low: %.1fF", self.forecast.temperatureMin];
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        self.label2.text = maxTemp;
        self.label3.text = minTemp;
        self.label1.text = [format stringFromDate:self.forecast.date];
    }];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
