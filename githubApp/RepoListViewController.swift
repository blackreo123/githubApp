//
//  RepoListViewController.swift
//  githubApp
//
//  Created by JIHA YOON on 2022/08/10.
//

import Foundation
import UIKit

class RepoListViewController: UITableViewController {
    private let organization = "blackreo123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = organization + " Repositories"
        
        self.refreshControl = UIRefreshControl()
        let refreshControl = self.refreshControl
        refreshControl?.backgroundColor = .white
        refreshControl?.tintColor = .darkGray
        refreshControl?.attributedTitle = NSAttributedString(string: "refresh")
        refreshControl?.addTarget(self, action: #selector(refresh), for: .valueChanged)
        
        tableView.register(RepoListCell.self, forCellReuseIdentifier: "RepoListCell")
        tableView.rowHeight = 140
    }
    
    @objc func refresh() {
        
    }
}

extension RepoListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RepoListCell", for: indexPath) as? RepoListCell else {return UITableViewCell()}
        return cell
    }
}
