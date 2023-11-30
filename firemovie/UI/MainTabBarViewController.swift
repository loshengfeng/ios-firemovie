//
//  MainTabBarViewController.swift
//  firemovie
//
//  Created by Arvin on 2023/11/30.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let movieViewController = UINavigationController(rootViewController: MovieViewController())
        let tvSeriesViewController = UINavigationController(rootViewController: TvSeriesViewController())
        
        movieViewController.title = "Movies"
        tvSeriesViewController.title = "TvSeries"
        
        movieViewController.tabBarItem.image = UIImage(systemName: "house")
        movieViewController.tabBarItem.image = UIImage(systemName: "play.circle")
        
        tabBar.tintColor = .label
        
        setViewControllers([movieViewController, tvSeriesViewController], animated: true)
    }
}
