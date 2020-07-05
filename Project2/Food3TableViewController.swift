//
//  Food3TableViewController.swift
//  Project2
//
//  Created by SWUCOMPUTER on 2020/07/04.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class Food3TableViewController: UITableViewController {

    var name: String?
    var buildingName: String?
    var food: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        if buildingName == "50주년기념관" {
            if name == "스타벅스" {
                food = ["아직 추가중입니다"]
            } else if name == "뚜레쥬르" {
                food = ["아메리카노 HOT 3000원", "아메리카노 ICE 3500원", "카페라떼 HOT 3500원", "카페라떼 ICE 4000원", "과일스무디(청포도/망고/딸기) 4500원"]
            } else if name == "감탄떡볶이" {
                food = ["쌀떡볶이 3000원", "밀떡볶이 3000원", "찰순대 3500원", "바삭튀김 5개 3000원", "허브탕수육 5000원", "찰순대 3500원", "칠리탕수육 5500원"]
            } else if name == "오니기리와이규동" {
                food = ["가츠동 5900원", "얼큰해물짬뽕 5900원", "치킨데리야끼동 5900원", "차슈데리야끼동 5900원", "해물야끼우동 5900원"]
            }
        } else if buildingName == "대강당" {
            if name == "팬도로시" {
                food = ["아메리카노 HOT 1500원", "아메리카노 ICE 1800원", "카페라떼 HOT 2400원", "카페라떼 ICE 2700원", "청포도에이드 2800원"]
            }
        } else if buildingName == "학생누리관" {
            if name == "에땅" {
                food = ["햄치즈 샌드위치(세모) 1300원", "햄치즈 샌드위치(네모) 1850원", "그린샌드위치 2550원", "크랩샌드위치 2700원"]
            } else if name == "만권화밥" {
                food = ["마약계란덮밥 4500원", "직화닭고기화밥 4900원", "직화돈육화밥 5500원", "두루치기화밥 5500원"]
            } else if name == "최고당돈가스" {
                food = ["치즈돈가스 6500원", "수제생등심돈가스 4500원", "크림돈가스 6500원", "옛날돈가스 5500원", "매운칠리돈가스 6500원"]
            }
        }
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food3 Cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = food[indexPath.row]
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        }
    */
    
}
