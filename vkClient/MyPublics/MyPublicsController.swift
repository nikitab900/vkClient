//
//  MyPublicsController.swift
//  vkClient
//
//  Created by Никита Абакумов on 20.11.2021.
//

import UIKit

class MyPublicsController: UITableViewController {

    //метод для добавления нового паблика в список личных пабликов через обратный переход
    @IBAction func addPublic(segue: UIStoryboardSegue) {
        if (segue.identifier == "AddPublic") { //если перешли с segue с id "AddPublic"
            guard let _allPublicController = segue.source as? AllPublicController else { return } //копируем контроллер с которого перешли для доступа к элементам
            if let _indexPath = _allPublicController.tableView.indexPathForSelectedRow { //берем индекс нажатой ячейки
                let _public = allPublicList[_indexPath.row] //копируем в память содержимое нажатой ячейки
                if !myPublicList.contains(_public) { //можно добавить новый паблик если такого еще нет в списке "моих"
                    myPublicList.append(_public) //добавляем содержимое ячейки в конец массива, где хранятся "Мои паблики"
                    tableView.reloadData() //обновляем таблицу, чтобы увидеть изменения
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myPublicList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //получаем ячейку из пула и приводим ее тип к нашему классу ячеек
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyPublicCell", for: indexPath) as! MyPublicsCell

        //записываем паблик в lable ячейки
        cell.myPublicName.text = myPublicList[indexPath.row]._name
        cell.myPublicAvatar.image = UIImage(named: myPublicList[indexPath.row]._avatar)
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view. //переопределение метода для удаления элементов из таблицы
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myPublicList.remove(at: indexPath.row) //удаляем из массива
            tableView.deleteRows(at: [indexPath], with: .fade)
        }    
    }
    

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
