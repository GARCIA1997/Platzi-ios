//
//  ViewController.swift
//  learning
//
//  Created by Alejandro Garcia on 31/01/22.
//

import UIKit

class ViewController: UIViewController {
        //MARK: - Referencias UI
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtonAction() {
//        Obtener valores de textField
        let email = emailTextField.text
        let password = passwordTextField.text
        
        if email == "agalvarez@concredito.com.mx", password == "123456"{
            navigationController?.pushViewController(HelpViewController(), animated: true)
        }
        else{
            print("Credenciales invalidas")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   

}

class HelpViewController: UIViewController{
        override func viewDidLoad() {
            performSegue(withIdentifier: "home_segue", sender: nil)
        }
    }
