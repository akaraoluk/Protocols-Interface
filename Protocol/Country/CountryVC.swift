//
//  CountryVC.swift
//  Protocol
//
//  Created by Abdurrahman Karaoluk on 24.05.2024.
//

import UIKit

class CountryVC: UIViewController {

    @IBOutlet private weak var table: UITableView!
    
    let viewModel = CountyVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        table.register(UINib(nibName: "\(ListCell.self)", bundle: nil), forCellReuseIdentifier: "\(ListCell.self)")
        viewModel.configureList()
        
    }
    



}

extension CountryVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.listItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(ListCell.self)") as! ListCell
        cell.configure(data: viewModel.listItems[indexPath.row])
        return cell
    }
    
    
}
