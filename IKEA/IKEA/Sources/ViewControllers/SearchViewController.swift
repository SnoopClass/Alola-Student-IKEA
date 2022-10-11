//
//  SearchViewController.swift
//  IKEA
//
//  Created by Mijoo Kim on 2022/10/12.
//

import UIKit

class SearchViewController: UIViewController {
  
  // MARK: - Properties
  
  let searchController = UISearchController()

  // MARK: - View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setNavigationBar()
    setNavigationItem()
  }

  func setNavigationBar(){
    navigationController?.hidesBarsOnSwipe = true
  }
  
  func setNavigationItem(){
    self.navigationItem.searchController = searchController
    searchController.searchBar.placeholder = "무엇을 찾고 있나요?"
  }

}

