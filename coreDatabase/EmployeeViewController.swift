//
//  EmployeeViewController.swift
//  coreDatabase
//
//  Created by R & W on 13/02/23.
//

import UIKit

class EmployeeViewController: UIViewController {

    var arrEmployee: [EmployeeDetails] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension EmployeeViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrEmployee.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell()
        let employee = arrEmployee[indexPath.row]
        cell.textLabel?.text = "\(employee.name)"
        return cell
    }
}
