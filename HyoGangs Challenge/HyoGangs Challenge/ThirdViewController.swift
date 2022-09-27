//
//  ThirdViewController.swift
//  HyoGangs Challenge
//
//  Created by 김시훈 on 2022/09/27.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    let tableViewData2 = ["one","two","three"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "examp", for: indexPath)
        cell.textLabel?.text = tableViewData2[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        tableView.dataSource = self
        tableView.delegate = self
//        view.addSubview(tableView)
        setupUI()
        autoLayout()
        
        // Do any additional setup after loading the view.
    }

    func setupUI() {
        let button = makeButton()
        
        [tableView,button
        ].forEach{self.view.addSubview($0)}
        
    }
    
    
    
//MARK: 테이블뷰 및 버튼생성 코드
    lazy var tableView: UITableView = {
       let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "examp")
        return tv
    }()
    
    var button = UIButton()
    
    func makeButton() -> UIButton{
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .green
        btn.setTitle("뒤로가기", for: .normal)
        btn.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return btn
    }
    
    @objc func buttonTapped() {
       dismiss(animated: true)
    }
    
    func autoLayout() {

        NSLayoutConstraint.activate([
            tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tableView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            tableView.widthAnchor.constraint(equalToConstant: 300),
            tableView.heightAnchor.constraint(equalToConstant: 150),
//            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 220),
//            button.widthAnchor.constraint(equalToConstant: 70),
//            button.heightAnchor.constraint(equalToConstant: 70)
        ])
        
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
