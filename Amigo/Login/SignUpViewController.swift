//
//  SignUpViewController.swift
//  Amigo
//
//  Created by Yongjae Kwon on 2017. 11. 30..
//  Copyright © 2017년 Yongjae Kwon. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissBtnClicked(_ sender: Any) {
        dismiss(animated: true) {
            print("Dismissing Loader view Controller")
        }
    }
    
    @IBAction func signUpBtnClicked(_ sender: Any) {
        guard let url = URL(string: "http://dev.amigotrip.co.kr/users") else {
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let post = SignUp(email: emailTextField.text!, name: nameTextField.text!, password: passwordTextField.text!)
        do {
            let jsonBody = try JSONEncoder().encode(post)
            request.httpBody = jsonBody
        } catch {}
        
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, _, _) in
            guard let data = data else {
                return
            }
            do {
                let sentPost = try JSONDecoder().decode(SignUp.self, from: data)
                print(sentPost)
//                print(response)
            } catch {}
        }
        task.resume()
    }
    
    @IBAction func emailConfirmBtnClicked(_ sender: Any) {

        let jsonURLString = "http://dev.amigotrip.co.kr/users?email=" + "\(emailTextField.text!))"
        
        guard let url = URL(string: jsonURLString) else { print("URL is invalid"); return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        request.addValue("2", forHTTPHeaderField: "x-api-version")
        request.addValue("application/json", forHTTPHeaderField: "accept")
        request.addValue("application/json", forHTTPHeaderField: "content-type")
        
        URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) in
            guard let data = data, error == nil, response != nil else {
                print("Something went wrong")
                return
            }
            
            do {
                let emailConfirm = try JSONDecoder().decode(EmailConfirm.self, from: data)
                print(emailConfirm)
            } catch {
                print(error)
            }
        }).resume()
    }
}
