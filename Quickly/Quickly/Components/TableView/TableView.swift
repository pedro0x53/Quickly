//
//  TableView.swift
//  Quickly
//
//  Created by Beatriz Carlos on 15/05/20.
//  Copyright © 2020 Quickly. All rights reserved.
//

import UIKit

extension UITableView: UITableViewDelegate, UITableViewDataSource, DefaultProtocol {
    
    public func configureTableView(rowHeigth: CGFloat, superview: UIView) {
        setTableViewDelegate()
        self.rowHeight = rowHeigth
        tableview(to: superview)
    }
    
    private func setTableViewDelegate() {
        delegate = self
        dataSource = self
    }
    
    func reset() {
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func numberOfRows(_ numberOfRows: Int = 10) -> Int {
        return numberOfRows
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRows()
    }
        
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
