//
//  TabBarViewController.swift
//  photoLibrary
//
//  Created by User on 03.09.2022.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupTabBarController()
        setupTabBarViewControllers()
    }

    private func setupTabBarController() {
        tabBar.tintColor = .systemBlue
        tabBar.isTranslucent = true
    }

    private func setupTabBarViewControllers() {
        let mediaNavController = UINavigationController(rootViewController: MediaViewController())
        let mediaVC = mediaNavController
        let mediaVCIcon = UITabBarItem(title: "Медиатека",
                                       image: UIImage(systemName: "photo.on.rectangle"),
                                       selectedImage: UIImage(systemName: "photo.fill.on.rectangle.fill"))
        mediaVC.tabBarItem = mediaVCIcon
        let forYouNavController = UINavigationController(rootViewController: ForYouViewController())
        let forYouVC = forYouNavController
        let forYouVCIcon = UITabBarItem(title: "Для Вас",
                                       image: UIImage(systemName: "heart.text.square"),
                                       selectedImage: UIImage(systemName: "heart.text.square.fill"))
        forYouVC.tabBarItem = forYouVCIcon
        let albumsNavController = UINavigationController(rootViewController: AlbumsViewController())
        let albumsVC = albumsNavController
        let albumsVCIcon = UITabBarItem(title: "Альбомы",
                                       image: UIImage(systemName: "folder"),
                                       selectedImage: UIImage(systemName: "folder.fill"))
        albumsVC.tabBarItem = albumsVCIcon
        let searchNavController = UINavigationController(rootViewController: SearchViewController())
        let searchVC = searchNavController
        let searchVCIcon = UITabBarItem(title: "Поиск",
                                       image: UIImage(systemName: "magnifyingglass"),
                                       selectedImage: UIImage(systemName: "magnifyingglass"))
        searchVC.tabBarItem = searchVCIcon
        let viewControllers = [mediaVC, forYouVC, albumsVC, searchVC]
        self.setViewControllers(viewControllers, animated: true)
    }
}
