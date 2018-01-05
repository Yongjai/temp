//
//  LocalsViewController.swift
//  Amigo
//
//  Created by Yongjae Kwon on 2017. 11. 30..
//  Copyright © 2017년 Yongjae Kwon. All rights reserved.
//

import UIKit

class LocalsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var localsTableView: UITableView!
    @IBOutlet weak var searchBar: UIView!
    @IBOutlet weak var profileImage: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.layer.shadowColor = UIColor.black.cgColor
        searchBar.layer.shadowOpacity = 1
        searchBar.layer.shadowOffset = CGSize.zero
        searchBar.layer.shadowRadius = 10
        
        localsTableView.separatorStyle = .none

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = localsTableView.dequeueReusableCell(withIdentifier: "localCell") as! LocalsTableViewCell
        
        cell.profileImage?.layer.cornerRadius = (cell.profileImage?.frame.size.width)! / 2
        cell.profileImage?.layer.masksToBounds = true
        cell.profileImage.layer.borderColor = UIColor.white.cgColor
        
        return cell
    }
}
