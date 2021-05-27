//
//  InfectiesViewController.swift
//  CovidInfoApp
//
//  Copyright © Dimitri Gevers. All rights reserved. Created on 27/05/2021.
//

import UIKit
import 


class InfectiesViewController: UIViewController {

    var infecties : [CovidCases]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNrOfCovidCasesFromSciensana()
        /// https://epistat.sciensano.be/Data/COVID19BE_CASES_AGESEX.json -> cases

        // Do any additional setup after loading the view.
    }
    
    func getNrOfCovidCasesFromSciensana() -> Void {
        let url = URL(string: "https://epistat.sciensano.be/Data/COVID19BE_CASES_AGESEX.json")!
        
        let task = URLSession.shared.dataTask(with: url) {
        (data: Data?, response: URLResponse?, error: Error?) -> Void in
            
            if let jsonData = data
            {
                let decoder = JSONDecoder()

                do {
                    self.infecties = try
                        decoder.decode([CovidCases].self, from: jsonData)
                    
                } catch {
                    print(error.localizedDescription)
                }
            }
         /*   DispatchQueue.main.async {
                self.addAnnotations()
            } */
        }
        task.resume()
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
