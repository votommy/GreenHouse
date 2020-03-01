//
//  PlantInfoViewController.swift
//  GreenHouse
//
//  Created by Student on 2/28/20.
//  Copyright © 2020 S531823. All rights reserved.
//

import UIKit

class PlantInfoViewController: UIViewController {
    
    var plant: Plant!
    
    @IBOutlet weak var editNameTF: UITextField!
    @IBOutlet weak var editSpeciesTF: UITextField!
    @IBOutlet weak var editWaterFrequencyTF: UITextField!
    @IBOutlet weak var editWaterTimes: UITextField!
    @IBOutlet weak var editSunLightFrequencyTF: UITextField!
    @IBOutlet weak var editSunlightHoursTF: UITextField!

    @IBAction func save(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if plant.name == "" { // If the plant doesn't have a name, only display species
            navigationItem.title = plant.species
        }
        else if plant.species == "" {  // If the plant doesn't have a specified species, only display name
            navigationItem.title = plant.name
        }
        else { // If the plant has both, combine both with "the" in between
            navigationItem.title = plant.name + " the " + plant.species
        }

        editNameTF.placeholder = plant.name
        editSpeciesTF.placeholder = plant.species
        editWaterFrequencyTF.placeholder = plant.waterTimeFrame
        editWaterTimes.placeholder = String(plant.waterFrequency)
        editSunLightFrequencyTF.placeholder = plant.sunlightTimeFrame
        editSunlightHoursTF.placeholder = String(plant.sunlightFrequency)
    }
    
    @IBAction func cancel(sender:Any){
        self.dismiss(animated: true, completion: nil)
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
