//
//  ViewController.swift
//  HyoGangs Challenge
//
//  Created by 김시훈 on 2022/09/25.
//

import UIKit

class ViewController: UIViewController {
    let bt = UIButton()
    let secondVC = PopViewController()
    @IBOutlet weak var pushButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeButton()
        self.navigationItem.prompt = "ViewController"
        bt.addTarget(self, action: #selector(btTapped), for: .touchUpInside)
    }
    
    @IBAction func pushButtonTapped(_ sender: UIButton) {
        print("버튼을 눌렀습니다")
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        
    }
    
    func makeButton() {
        view.addSubview(bt)
        bt.setTitle("버튼입니다", for: .normal)
        bt.backgroundColor = .green
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        bt.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        bt.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        bt.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
    
    @objc func btTapped() {
        print("bt버튼이 눌렸다")
    }
    
    
    func pushView() {
       let vc = PopViewController()
        let naviC = UINavigationController(rootViewController: vc)
        
        // 화면 띄우기
        self.present(naviC, animated: true)

        present(vc, animated: true)
     }
    func showPush() {
           let secondVC = PopViewController()
           self.navigationController?.pushViewController(secondVC, animated: true)
       }

}

