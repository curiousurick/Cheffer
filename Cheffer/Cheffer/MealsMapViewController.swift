//
//  MealsMapViewController.swift
//  Cheffer
//
//  Created by George Urick on 1/24/15.
//  Copyright (c) 2015 ChefferCo. All rights reserved.
//

import UIKit
import MapKit


class MealsMapViewController: UIViewController {


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            var location = CLLocationCoordinate2D(
                latitude: 47.60,
                longitude: -122.31
            )
            
            var span = MKCoordinateSpanMake(0.03, 0.03)
            var region = MKCoordinateRegion(center: location, span: span)
            
            map.setRegion(region, animated: true)
            
            var annotation = MKPointAnnotation()
            annotation.setCoordinate(location)
            annotation.title = "Naan"
            annotation.subtitle = "Chef Sindhu"
            
            map.addAnnotation(annotation)
        }
    }


