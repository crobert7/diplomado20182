//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Roberto Garcia on 6/11/18.
//  Copyright © 2018 Roberto Garcia. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var mapView: MKMapView!
    
    override func loadView() {
//        Create the map view
        mapView = MKMapView()
        
//        set it as the view of this view controller
        view = mapView
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(MapViewController.mapTypeChanged(_:)), for: .valueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        let topContraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
//        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor)
//        let trailingAnchor = segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        
        let margins = view.layoutMarginsGuide
        
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingAnchor = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        
        topContraint.isActive = true
        leadingConstraint.isActive = true
        trailingAnchor.isActive = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MapViewController loaded its view.")
    }
    
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        
        switch segControl.selectedSegmentIndex {
            case 0:
                mapView.mapType = .standard
            case 1:
                mapView.mapType = .hybrid
            case 2:
                mapView.mapType = .satellite
            default:
                break
        }
    }
    
}
