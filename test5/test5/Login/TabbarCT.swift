//
//  ViewController1.swift
//  test5
//
//  Created by Huy on 3/13/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class TabbarCT: UITabBarController {
    var home21: Home21 = Home21()
    var fly31: Fly31 = Fly31()
    var order4: Order4 = Order4()
    var me5: Me5 = Me5()
    
    var subViewController : [UIViewController] = []
    override func viewDidLoad() {
        super.viewDidLoad()
//        home21.tabBarItem = UITabBarItem(title: "Phòng", image: UIImage(named: "phongmau"), selectedImage: UIImage(named: "phong"))
//        let navigation1 = UINavigationController(rootViewController: home21)
//        home21.tabBarItem.tag = 0
//        home21.tabBarItem = UITabBarItem(title: "Phòng", image: UIImage(named: ""), selectedImage: UIImage(named: "phongmau"))
//        let navigation1 = UINavigationController(rootViewController: home21)
//        home21.tabBarItem.tag = 0
        
        home21.tabBarItem = UITabBarItem(title: "Phòng", image: UIImage(named: "Phongmoi"), selectedImage: UIImage(named: "Phongsua"))
        let navigation1 = UINavigationController(rootViewController: home21)
               fly31.tabBarItem.tag = 0
        //fly31
        fly31.tabBarItem = UITabBarItem(title: "Chuyến bay", image: UIImage(named: "baymau"), selectedImage: UIImage(named: "bay"))
        let navigation2 = UINavigationController(rootViewController: fly31)
               fly31.tabBarItem.tag = 1
        //order
        order4.tabBarItem = UITabBarItem(title: "Đơn đặt", image: UIImage(named: "datmau"), selectedImage: UIImage(named: "dat"))
               order4.tabBarItem.tag = 2
        //me5
        me5.tabBarItem = UITabBarItem(title: "Tôi", image: UIImage(named: "toimau"), selectedImage: UIImage(named: "toi"))
        me5.tabBarItem.tag = 3
 
        subViewController.append(navigation1)
        subViewController.append(navigation2)
        subViewController.append(order4)
        subViewController.append(me5)
        
        self.setViewControllers(subViewController, animated: true)
        self.selectedIndex = 0
        self.tabBar.barTintColor = UIColor.init(named: "xanh")
    }

}
