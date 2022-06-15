//
//  ViewController.swift
//  MyFirstIOS
//
//  Created by 여정화 on 2022/06/15.
//

import UIKit

class ViewController: UIViewController {
    //제목
    var titleLabel : UILabel = {
       
        let label = UILabel()
        label.text = "헬로우 월드!1"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .white
        
        return label
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(titleLabel) //우리가 만든 titleLabel 넣는다
        
        view.backgroundColor = .red
        
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true //x축을 정 가운데 두겠다.
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true//y축을 정 가운데 두겠다.
    
    }
    

}

