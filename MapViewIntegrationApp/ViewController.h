//
//  ViewController.h
//  MapViewIntegrationApp
//
//  Created by Vladan Randjelovic on 26/05/2020.
//  Copyright © 2020 Vladan Randjelovic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *mapView;


- (IBAction)standard:(id)sender;
- (IBAction)satelite:(id)sender;
- (IBAction)hybrid:(id)sender;
- (IBAction)locate:(id)sender;
- (IBAction)directions:(id)sender;

@end

