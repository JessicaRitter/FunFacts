//
//  ViewController.swift
//  FunFacts
//
//  Created by Jessica Ritter on 7/22/16.
//  Copyright © 2016 Jessica Ritter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLable: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factModel = FactModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLable.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLable.text = factModel.getRandomFact()
        
    }

}

