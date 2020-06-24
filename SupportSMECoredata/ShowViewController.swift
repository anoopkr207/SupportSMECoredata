//
//  ShowViewController.swift
//  SupportSMECoredata
//
//  Created by daffolapmac146 on 24/06/20.
//  Copyright © 2020 daffolapmac146. All rights reserved.
//

import UIKit

class ShowViewController: UIViewController {

    var arrData = [DataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrData = DatabaseHelper.shareInstance.getStudentData()
    }
}

extension ShowViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constant.storyboardConstant.cell, for: indexPath) as! TableViewCell
        cell.textLabel?.text = arrData[indexPath.row].email
        cell.detailTextLabel?.text = arrData[indexPath.row].password
        return cell
    }
}
