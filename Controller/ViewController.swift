//
//  ViewController.swift
//  MVC_tableViewStroryboard
//
//  Created by Srikanth Kyatham on 11/27/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var users: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 72
        
        fetchData()
    }
    func fetchData(){
        users = User.staticData
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as? UserCell else { return UITableViewCell() }
        let user = users[indexPath.row]
        cell.config(with: user)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let user = users[indexPath.row]
            print("Selected user: \(user.name)")
            tableView.deselectRow(at: indexPath, animated: true)
        }
}

