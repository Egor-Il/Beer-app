//
//  ViewController.swift
//  HW-4
//
//  Created by Egor Ilchenko on 3/28/24.
//

import UIKit

class ViewController: UIViewController {
    // lables
    @IBOutlet weak var firstBeer: UILabel!
    @IBOutlet weak var secondBeer: UILabel!
    @IBOutlet weak var thirdBeer: UILabel!
    @IBOutlet weak var someBigLable: UILabel!
    @IBOutlet weak var countFirstBeer: UILabel!
    @IBOutlet weak var countSecondBeer: UILabel!
    @IBOutlet weak var countThirdBeer: UILabel!
    // butons
    @IBOutlet weak var minusFirstCount: UIButton!
    @IBOutlet weak var plusFirstCount: UIButton!
    @IBOutlet weak var minusSecondCount:UIButton!
    @IBOutlet weak var plusSecondCount: UIButton!
    @IBOutlet weak var minusThirdCount: UIButton!
    @IBOutlet weak var plusThirdCount: UIButton!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var end: UIButton!
    @IBOutlet weak var sell: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstBeer.text = Manager.shared.beerArray[0].name
        secondBeer.text = Manager.shared.beerArray[1].name
        thirdBeer.text = Manager.shared.beerArray[2].name
        minusFirstCount.isEnabled = false
        plusFirstCount.isEnabled = false
        minusSecondCount.isEnabled = false
        plusSecondCount.isEnabled = false
        minusThirdCount.isEnabled = false
        plusThirdCount.isEnabled = false
        end.isEnabled = false
        sell.isEnabled = false
        start.isEnabled = true
    }
    // Action buttons for Guinness
    @IBAction func minusActionFirst(_ sender: UIButton) {
        if Manager.shared.beerStartFirst > 0 {
            Manager.shared.beerStartFirst -= 1
            countFirstBeer.text = "\(Manager.shared.beerStartFirst)"
        } else {
        }
    }
    @IBAction func plusActionFirst(_ sender: UIButton) {
        if Manager.shared.beerStartFirst < Manager.shared.beerArray[0].count {
            Manager.shared.beerStartFirst += 1
            countFirstBeer.text = "\(Manager.shared.beerStartFirst)"
        } else {
        }
    }
    // Action buttons for Blue Moon
    @IBAction func minusActionSecond(_ sender: UIButton) {
        if Manager.shared.beerStartSecond > 0 {
            Manager.shared.beerStartSecond -= 1
            countSecondBeer.text = "\(Manager.shared.beerStartSecond)"
        } else {
        }
    }
    @IBAction func plusActionSecond(_ sender: UIButton) {
        if Manager.shared.beerStartSecond < Manager.shared.beerArray[1].count {
            Manager.shared.beerStartSecond += 1
            countSecondBeer.text = "\(Manager.shared.beerStartSecond)"
        } else {
        }
    }
    // Action buttons for Blue Paulaner
    @IBAction func minusActionThird(_ sender: UIButton) {
        if Manager.shared.beerStartThird > 0 {
            Manager.shared.beerStartThird -= 1
            countThirdBeer.text = "\(Manager.shared.beerStartThird)"
        } else {
        }
    }
    @IBAction func plusActionThird(_ sender: UIButton) {
        if Manager.shared.beerStartThird < Manager.shared.beerArray[2].count {
            Manager.shared.beerStartThird += 1
            countThirdBeer.text = "\(Manager.shared.beerStartThird)"
        } else {
        }
    }
    @IBAction func startAction(_ sender: UIButton) {
        sender.isEnabled = false
        minusFirstCount.isEnabled = true
        plusFirstCount.isEnabled = true
        minusSecondCount.isEnabled = true
        plusSecondCount.isEnabled = true
        minusThirdCount.isEnabled = true
        plusThirdCount.isEnabled = true
        end.isEnabled = true
        sell.isEnabled = true
        Manager.shared.setInitialBeerState()
        Manager.shared.totalSum = 0
        countFirstBeer.text = "\(Manager.shared.totalSum)"
        countSecondBeer.text = "\(Manager.shared.totalSum)"
        countThirdBeer.text = "\(Manager.shared.totalSum)"
        // Manager.shared.countFirstBeer.text = "\(beerCount)"
        someBigLable.text = "\(Manager.shared.beerArray[0].name) = \(Manager.shared.beerArray[0].count) \n\(Manager.shared.beerArray[1].name) = \(Manager.shared.beerArray[1].count)\n\(Manager.shared.beerArray[2].name) = \(Manager.shared.beerArray[2].count)"
    }
    @IBAction func endAction(_ sender: UIButton) {
        sender.isEnabled = true
        minusFirstCount.isEnabled = false
        plusFirstCount.isEnabled = false
        minusSecondCount.isEnabled = false
        plusSecondCount.isEnabled = false
        minusThirdCount.isEnabled = false
        plusThirdCount.isEnabled = false
        end.isEnabled = false
        sell.isEnabled = false
        start.isEnabled = true
        countFirstBeer.text = "0"
        countSecondBeer.text = "0"
        countThirdBeer.text = "0"
        someBigLable.text = "Good nigth \nTotal daily revenue: \(Manager.shared.totalSum) $"
    }
    @IBAction func sellAction(_ sender: UIButton) {
        Manager.shared.sellBeer(name: "Guinness", count: Manager.shared.beerStartFirst)
        Manager.shared.sellBeer(name: "Blue Moon", count: Manager.shared.beerStartSecond)
        Manager.shared.sellBeer(name: "Paulaner", count: Manager.shared.beerStartThird)
        countFirstBeer.text = "0"
        countSecondBeer.text = "0"
        countThirdBeer.text = "0"
        Manager.shared.setInitialCount()
        someBigLable.text = "\(Manager.shared.beerArray[0].name) = \(Manager.shared.beerArray[0].count) \n\(Manager.shared.beerArray[1].name) = \(Manager.shared.beerArray[1].count)\n\(Manager.shared.beerArray[2].name) = \(Manager.shared.beerArray[2].count)"
    }
    
    
    
    
    
    
    
    
    
    
}
