//
//  ViewController.swift
//  MapView
//
//  Created by DSC07 on 2023/04/27.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate{
    
    @IBOutlet weak var myMap: MKMapView!
    
    @IBOutlet weak var lblLocationInfo1: UILabel!
    
    @IBOutlet weak var lblLocationInfo2: UILabel!
    
    let locationManager =  CLLocationManager()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        lblLocationInfo1.text = ""
        lblLocationInfo2.text = ""
        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.startUpdatingLocation()
        myMap.showsUserLocation = true
    }
    
    func goLocation(latitudeValue: CLLocationDegrees, longitudeValue : CLLocationDegrees, delta span :Double) -> CLLocationCoordinate2D {
        //위도 및 경도 값을 좌표 데이터 구조 형식으로 지정
        let pLocation = CLLocationCoordinate2DMake(latitudeValue, longitudeValue)
        // 델타 값을 사용하여 지도의 원하는 확대/축소 수준을 나타내며 델타 값이 작을수록 확대/축소 수준이 높아집니다.
        let spanValue = MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
        let pRegion = MKCoordinateRegion(center: pLocation, span: spanValue)
        myMap.setRegion(pRegion, animated: true)
        return pLocation
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations : [CLLocation]) {
        let pLocation = locations.last
        goLocation(latitudeValue: (pLocation?.coordinate.latitude)!,longitudeValue: (pLocation?.coordinate.longitude)!, delta: 0.002)
        // 지정된 위치에 대한 지오코딩 요청
        CLGeocoder().reverseGeocodeLocation(pLocation!, completionHandler: {(placemarks, error) -> Void in
            // 대부분의 지오코딩 요청의 경우 placemarks 배열에는 하나의 항목만 포함.
                        // 그러나 지정된 주소를 단일 위치로 확인할 수 없는 상황에서 여러 장소 표시 객체를 반환할 수 있기 때문에 [CLPlacemark] 배열 타입
            let pm = placemarks!.first
            let country = pm!.country
            var address:String = country!
            if pm!.locality != nil {
                address +=  " "
                address += pm!.thoroughfare!
            }
            
            self.lblLocationInfo1.text = "현재 위치"
            self.lblLocationInfo2.text = address
        })
        locationManager.stopUpdatingLocation()
    }
    func setAnnotation(latitudeValue: CLLocationDegrees, longitudeValue : CLLocationDegrees, delta span :Double, title strTitle: String, subtitle strSubtitle:String) {
        // 지도의 지정된 지점에 제목 문자열을 표시
        let annotation = MKPointAnnotation()
        annotation.coordinate =  goLocation(latitudeValue: latitudeValue, longitudeValue: longitudeValue, delta: span)
        annotation.title = strTitle
        annotation.subtitle = strSubtitle
        myMap.addAnnotation(annotation)
    }
    
    @IBAction func sgChangeLocation(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
                    self.lblLocationInfo1.text = ""
                    self.lblLocationInfo2.text = ""
                    locationManager.startUpdatingLocation()
                } else if sender.selectedSegmentIndex == 1 {
                    setAnnotation(latitudeValue: 35.848174, longitudeValue: 128.58285, delta: 0.002, title: "미래관", subtitle: "대구 남구 현충로 170")
                    self.lblLocationInfo1.text = "보고 계신 위치"
                    self.lblLocationInfo2.text = "영남이공대학교 미래관"
                } else if sender.selectedSegmentIndex == 2 {
                    setAnnotation(latitudeValue: 35.847550, longitudeValue: 128.580856, delta: 0.002, title: "희망관", subtitle: "대구 남구 현충로 170")
                    self.lblLocationInfo1.text = "보고 계신 위치"
                    self.lblLocationInfo2.text = "영남이공대학교 희망관"
                } else if sender.selectedSegmentIndex == 3 {
                    setAnnotation(latitudeValue: 35.8469137, longitudeValue: 128.5828285, delta: 0.002, title: "본관", subtitle: "대구 남구 현충로 170")
                    self.lblLocationInfo1.text = "보고 계신 위치"
                    self.lblLocationInfo2.text = "영남이공대학교 본관"
                }
    }
    
}

