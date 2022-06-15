//
//  ViewController.swift
//  lecture2
//
//  Created by 여정화 on 2022/06/15.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    let titileLabel : UILabel = {
       let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 70)
        label.text = "메인화면"
        return label
    }()
    
    let animationView : AnimationView = {
        let animView = AnimationView(name : "96002-cute-froggy-looking-around")
        animView.frame = CGRect(x : 0 , y :0, width : 400, height: 400)
        animView.contentMode = .scaleAspectFill //크기에 맞도록 이미지 확대
        
        return animView
    }()
    
    //뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        
        //에니메이션 실행
        animationView.play{(finish) in
            print("에니메이션이 끝났다.")
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview()
            
            self.view.addSubview(self.titileLabel)
            self.titileLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titileLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
            self.titileLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive=true
            
        }
        
        
    }


}

