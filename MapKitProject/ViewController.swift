//
//  ViewController.swift
//  MapKitProject
//
//  Created by Gilang Ramadhan on 16/01/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.mapType = .hybrid
        
        let localtion = CLLocationCoordinate2D(latitude: -6.8957422, longitude: 107.6337998)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: localtion, span: span)
        
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = localtion
        annotation.title = "Dicoding Space"
        annotation.subtitle = "Tempat Ngumpulnya Developer Bandung"
        mapView.addAnnotation(annotation)
    }
}

