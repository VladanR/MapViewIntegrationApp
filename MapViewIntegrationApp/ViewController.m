//
//  ViewController.m
//  MapViewIntegrationApp
//
//  Created by Vladan Randjelovic on 26/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)directions:(id)sender {
}

- (IBAction)locate:(id)sender {
}

- (IBAction)hybrid:(id)sender {
    self.mapView.mapType = MKMapTypeHybrid;
}

- (IBAction)satelite:(id)sender {
    self.mapView.mapType = MKMapTypeSatellite;
}

- (IBAction)standard:(id)sender {

    self.mapView.mapType = MKMapTypeStandard;
    
}


@end
