//
//  ViewController.swift
//  W2M3
//
//  Created by Рауль on 2/3/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var idTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func button(_ sender: Any) {
        if idTextField?.text?.isEmpty ?? true{
            idTextField.layer.borderWidth = 3
            idTextField.layer.borderColor = UIColor.red.cgColor
            idTextField.placeholder = "Заполните "
        } else {
            idTextField.layer.borderWidth = 0
            idTextField.layer.borderColor = UIColor.white.cgColor
        }
        if  passwordTextField.text?.isEmpty ?? true{
            passwordTextField.layer.borderWidth = 3
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.placeholder = "Заполните "
        } else {
            passwordTextField.layer.borderWidth = 0
            passwordTextField.layer.borderColor = UIColor.white.cgColor
        }
        if idTextField.text?.isEmpty == false {
            let vc = SecondViewController ()
            vc.storyboard?.instantiateViewController(withIdentifier: "vc")
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}



