//
//  RotateViewController.swift
//  MovieRotate
//
//  Created by tax_k on 08/10/2018.
//  Copyright © 2018 tax_k. All rights reserved.
//

import UIKit

class RotateViewController: UIViewController {
    
    
    enum UserDetailError: Error {
        case noValidName
        case noValidAge
    }
    
    
    func userTest(age: Int, name: String) throws {
        
        guard age > 0 else{
            throw UserDetailError.noValidAge
        }
        
        guard name.count > 0 else{
            throw UserDetailError.noValidName
        }
    }


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
        
        do{
            try userTest(age: -1, name: "")
        } catch let error {
            print("Error: \(error)")
            if let url = URL(string: "https://www.stackoverflow.com/search?q=[swift]+\(error)"), UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
            }
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    override var shouldAutorotate: Bool {
        return true
    }

}
