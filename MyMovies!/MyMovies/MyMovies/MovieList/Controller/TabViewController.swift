//
//  TabViewController.swift
//  MyMovies
//
//  Created by Daniel de Andrade Souza on 15/06/22.
//

import UIKit

class TabViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        self.delegate = self
        let movieListVC = UINavigationController(rootViewController: MovieListViewController())
        let favoritesVC = UINavigationController(rootViewController: FavoritesViewController())

        movieListVC.title = "Popular Movies"
        favoritesVC.title = "My Movies"

        self.setViewControllers([movieListVC, favoritesVC], animated: false)

        guard let items = self.tabBar.items else { return }
        let images = ["house", "star"]
        for i in 0..<items.count {
            items[i].image = UIImage(systemName: images[i])
        }
    }
}
