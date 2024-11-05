//
//  ViewController.swift
//  AppPetProject
//
//  Created by pereguda on 05.11.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }

    private func setUpTabs() {
        let charactersVC = CharacterViewController()
        let episodesVC = EpisodeViewController()
        let locationsVC = LocationViewController()
        let settingsVC = SettingsViewController()

        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic

        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: episodesVC)
        let nav3 = UINavigationController(rootViewController: locationsVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)

        nav1.tabBarItem = UITabBarItem(
            title: "Characters",
            image: UIImage(systemName: "person.3"),
            tag: 1)
        nav2.tabBarItem = UITabBarItem(
            title: "Episodes",
            image: UIImage(systemName: "play.tv"),
            tag: 2)
        nav3.tabBarItem = UITabBarItem(
            title: "Locations",
            image: UIImage(systemName: "globe.europe.africa.fill"),
            tag: 3)
        nav4.tabBarItem = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "gear"),
            tag: 4)

        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }

        setViewControllers(
            [nav1, nav2, nav3, nav4],
            animated: true)
    }


}

