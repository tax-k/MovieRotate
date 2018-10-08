//
//  RotateViewController.swift
//  MovieRotate
//
//  Created by tax_k on 08/10/2018.
//  Copyright © 2018 tax_k. All rights reserved.
//

import UIKit

class RotateViewController: UIViewController {

    @IBAction func closeAction(_ sender: Any) {
        let value = UIInterfaceOrientation.landscapeRight.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")

    }
    @IBAction func rotateBackAction(_ sender: Any) {
        let value = UIInterfaceOrientation.portrait.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    override var shouldAutorotate: Bool {
        return true
    }

}
