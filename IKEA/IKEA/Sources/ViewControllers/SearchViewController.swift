//
//  SearchViewController.swift
//  IKEA
//
//  Created by Mijoo Kim on 2022/10/12.
//

import UIKit

class SearchViewController: UIViewController {
  
  // MARK: - Properties
  
  let searchController = UISearchController(searchResultsController: nil)

  // MARK: - View Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setNavigationBar()
    setSearchBarInNavigationBar()
  }

  func setNavigationBar(){
    navigationController?.hidesBarsOnSwipe = true
    navigationController?.navigationBar.largeTitleTextAttributes =
            [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24, weight: .bold)]
  }
  
  func setSearchBarInNavigationBar(){
    self.navigationItem.searchController = searchController
    
    searchController.searchBar.updateHeight(height: 48)
    searchController.searchBar.searchTextPositionAdjustment = UIOffset(horizontal: 6, vertical: 0)
    searchController.searchBar.setPositionAdjustment(UIOffset(horizontal: 10, vertical: 0), for: .search)
    
    let cancelButton = UIBarButtonItem.appearance(whenContainedInInstancesOf: [UISearchBar.self])
    let offset = UIOffset(horizontal: 0, vertical: 7)
    cancelButton.setTitlePositionAdjustment(offset, for: .default)
    searchController.searchBar.setValue("취소", forKey: "cancelButtonText")
  
    let placeholder = NSAttributedString(string: "무엇을 찾고 있나요?", attributes: [.foregroundColor: UIColor.gray, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .regular)])
    searchController.searchBar.searchTextField.attributedPlaceholder = placeholder
    searchController.searchBar.searchTextField.borderStyle = .none
    searchController.searchBar.searchTextField.layer.borderWidth = 1.0
    searchController.searchBar.searchTextField.layer.borderColor = UIColor.lightGray.cgColor
    searchController.searchBar.searchTextField.layer.cornerRadius = 22.0
    searchController.searchBar.searchTextField.clipsToBounds = true
  }

}

