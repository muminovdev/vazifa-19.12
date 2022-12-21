//
//  TabBarViewController.swift
//  vazifa 19.12
//
//  Created by Mac on 22/12/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tab1 = FirstViewController()
        let tab2 = SecondViewController()
        tab1.tabBarItem = UITabBarItem(title: "collect", image: UIImage(systemName: "house.fill"), selectedImage: UIImage(systemName: "house"))
        tab2.tabBarItem = UITabBarItem(title: "Table", image: UIImage(systemName: "house.fill"), selectedImage: UIImage(systemName: "house"))
        let viewControllerList = [ tab1, tab2]
        viewControllers = viewControllerList.map {
            UINavigationController(rootViewController: $0)
        }
        tabBarController?.tabBar.delegate = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
