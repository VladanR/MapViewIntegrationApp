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
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    location.latitude = 43.320886;
    location.longitude = 21.9290811;
    
    region.span = span;
    region.center = location;
    
    [self.mapView setRegion:region animated:YES];
    
    MapPin *annotation = [[MapPin alloc] init];
    annotation.coordinate = location;
    [self.mapView addAnnotation:annotation];
    
    locationManager.delegate = self;
    self.mapView.delegate = self;
    locationManager = [[CLLocationManager alloc] init];
    
}


- (IBAction)directions:(id)sender {
    
    
    
}

- (IBAction)locate:(id)sender {
    
    [locationManager requestWhenInUseAuthorization];
    [locationManager requestAlwaysAuthorization];
    
    [locationManager startUpdatingLocation];
    
    self.mapView.showsUserLocation = YES;
    
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
