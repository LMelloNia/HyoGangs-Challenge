//
//  SecondViewController.swift
//  HyoGangs Challenge
//
//  Created by 김시훈 on 2022/09/26.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource {

    
    
    @IBOutlet weak var tableView1: UITableView!
    
    let tb2 = UITableView()
    let tableViewData1 = ["한놈","두식이","석삼"]
//    let tableViewData2 = ["one","two","three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTableView()
        tableView1.dataSource = self
        tableView1.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func makeTableView() {
        view.addSubview(tb2)
        tb2.layer.borderWidth = 1
        tb2.backgroundColor = .green
        tb2.translatesAutoresizingMaskIntoConstraints = false
        tb2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        tb2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        tb2.topAnchor.constraint(equalTo: tableView1.bottomAnchor, constant: 30).isActive = true
        tb2.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView1.dequeueReusableCell(withIdentifier: "examp", for: indexPath)
        cell.textLabel?.text = tableViewData1[indexPath.row]
        return cell
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
extension SecondViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row+1)
    }
}
