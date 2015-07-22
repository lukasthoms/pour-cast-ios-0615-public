//
//  FISViewController.m
//  pour-cast
//
//  Created by Joe Burgess on 11/19/14.
//  Copyright (c) 2014 The Flatiron School. All rights reserved.
//

#import "FISViewController.h"
#import "ForcastAPIClient.h"
#import "FISDailyForecast.h"
#import "FISForeCaseView.h"

@interface FISViewController ()
@property (weak, nonatomic) IBOutlet FISForeCaseView *view1;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *forecastViews;

@end

@implementation FISViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

    [ForcastAPIClient getForecastForCoordinate:CLLocationCoordinate2DMake(37.8267, -122.423) Completion:^(NSArray *dailyForecastModels) {

        for (NSInteger i = 0; i<5; i++) {
            [self.forecastViews[i] setLabelsWithForecast:dailyForecastModels[i+1]];
        }
        [self.view1 setLabelsWithForecast:dailyForecastModels[0]];
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



@end
