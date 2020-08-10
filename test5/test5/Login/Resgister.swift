//
//  Resgister.swift
//  test5
//
//  Created by Huy on 3/22/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class Resgister: UIViewController {
    let imageCT : UIImageView = {
        let imageCT = UIImageView()
        imageCT.translatesAutoresizingMaskIntoConstraints = false
        imageCT.image = UIImage(named: "login")
        imageCT.contentMode = .scaleToFill
        return imageCT
    }()
    let Logintk : UITextField = {
        let Logintk = UITextField()
        Logintk.translatesAutoresizingMaskIntoConstraints = false
        Logintk.backgroundColor = .white
        Logintk.placeholder = "👤 Nhập tài khoản"
        Logintk.textAlignment = .center
        Logintk.font = .boldSystemFont(ofSize: 18)
        return Logintk
        
    }()
    let Label1 : UILabel = {
        let Label1 = UILabel()
        Label1.translatesAutoresizingMaskIntoConstraints = false
        Label1.text = "Trip Way"
        
        Label1.textColor = UIColor.init(named: "xanhdam")
        Label1.textAlignment = .center
        Label1.font = .boldSystemFont(ofSize: 90)
        Label1.alpha = 0.7
        return Label1
    }()
    let Loginmk : UITextField = {
        let Logintk = UITextField()
        Logintk.translatesAutoresizingMaskIntoConstraints = false
        Logintk.backgroundColor = .white
        Logintk.placeholder = "🔓 Mật khẩu"
        Logintk.textAlignment = .center
        Logintk.font = .boldSystemFont(ofSize: 18)
        return Logintk
        
    }()
    let buttonlogin : UIButton = {
        let buttonFind = UIButton()
        buttonFind.translatesAutoresizingMaskIntoConstraints = false
        buttonFind.setTitle("Đăng nhập", for: .normal)
        buttonFind.contentHorizontalAlignment = .center
        buttonFind.backgroundColor = UIColor.init(named: "xanh")
        return buttonFind
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
