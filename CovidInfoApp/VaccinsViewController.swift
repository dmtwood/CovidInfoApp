//
//  VaccinsViewController.swift
//  CovidInfoApp
//
//  Copyright © Dimitri Gevers. All rights reserved. Created on 27/05/2021.
//

import UIKit

class VaccinsViewController: UIViewController {

    var gevaccineerden = [CovidVaccinated]?
    override func viewDidLoad() {
        super.viewDidLoad()
        getNrOfVaccinatedFromSciensana()
        /// https://epistat.sciensano.be/Data/COVID19BE_VACC.json -> administered vaccins

        // Do any additional setup after loading the view.
    }
    

    func getNrOfVaccinatedFromSciensana() -> Void {
        let url = URL(string: "https://epistat.sciensano.be/Data/COVID19BE_VACC.json")!
        
        let task = URLSession.shared.dataTask(with: url) {
        (data: Data?, response: URLResponse?, error: Error?) -> Void in
            
            if let jsonData = data
            {
                let decoder = JSONDecoder()

                do {
                    self.infecties = try
                        decoder.decode([CovidVaccinated].self, from: jsonData)
                    
                } catch {
                    print(error.localizedDescription)
                }
            }
         /*   DispatchQueue.main.async {
                self.addAnnotations()
            } */
        }
        task.resume()
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
