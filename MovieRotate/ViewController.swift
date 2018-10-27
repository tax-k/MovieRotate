//
//  ViewController.swift
//  MovieRotate
//
//  Created by tax_k on 05/10/2018.
//  Copyright © 2018 tax_k. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func goAction(_ sender: Any) {
        let nextView = storyboard?.instantiateViewController(withIdentifier: "rotate")
        navigationController?.pushViewController(nextView!, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

