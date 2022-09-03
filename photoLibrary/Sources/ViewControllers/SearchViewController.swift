//
//  SearchViewController.swift
//  photoLibrary
//
//  Created by User on 03.09.2022.
//

import UIKit

class SearchViewController: UIViewController {

    private lazy var searchCont: UISearchController = {
        let search = UISearchController()
        search.searchBar.placeholder = "Search"
        return search
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Поиск"
        setupNavigationBar()
    }

    private func setupNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.searchController = searchCont
    }

}
