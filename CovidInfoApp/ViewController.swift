//
//  ViewController.swift
//  CovidInfoApp
//
//  Copyright © Dimitri Gevers. All rights reserved. Created on 27/05/2021.
//

/// https://epistat.sciensano.be/Data/COVID19BE_CASES_AGESEX.json -> cases
/// https://epistat.sciensano.be/Data/COVID19BE_MORT.json -> death count
/// https://epistat.sciensano.be/Data/COVID19BE_VACC.json -> administered vaccins

import UIKit
import CoreData
import Charts

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func getAdministeredVaccins() -> Void {
        let url = URL(string:  = "https://epistat.sciensano.be/Data/COVID19BE_VACC.json")!
        
        let task = URLSession.shared.dataTask(with: url) {
            (data: Data?, response: URLResponse?, error:Error?) -> Void in
            if let datafromJson  = data{
                
                let jsonDecoder = JSONDecoder();
                
                do {
                    try jsonDecoder.decode(self, from datafromJson)
                }
                
                catch {
                    print(error)
                }
                
            }
            self.getData();
            self.updateCharts();
        }
        
        task.resume()
    }
    
    
    
    func getNumberOfDeaths() -> Void {
        let url = URL(string:  = "https://epistat.sciensano.be/Data/COVID19BE_MORT.json")!
        
        let task = URLSession.shared.dataTask(with: url) {
            (data: Data?, response: URLResponse?, error:Error?) -> Void in
            if let datafromJson  = data{
                
                let jsonDecoder = JSONDecoder();
                
                do {
                    try jsonDecoder.decode(self, from datafromJson)
                }
                
                catch {
                    print(error)
                }
                
            }
            self.getData();
            self.updateCharts();
        }
        
        task.resume()
    }
    func getNumberOfInfections() -> Void {
        let url = URL(string:  "https://epistat.sciensano.be/Data/COVID19BE_CASES_AGESEX.json")!
        
        let task = URLSession.shared.dataTask(with: url) {
            (data: Data?, response: URLResponse?, error:Error?) -> Void in
            if let datafromJson  = data{
                
                let jsonDecoder = JSONDecoder();
                
                do {
                    try jsonDecoder.decode(self, from: datafromJson)
                }
                
                catch {
                    print(error)
                }
                
            }
            self.getData();
            self.updateCharts();
        }
        
        task.resume()
    }
    
    
    
    func
    getData() -> Void {
    // try.self.context.fetch();
   }
    
    func updateCharts() {
        
    }
   
   
}


ac
