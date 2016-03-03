# GroupProject2

import UIKit
import SQLite
class ViewController: UIViewController {
    let db = try? Connection("\(NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0])/sqlitedb.sql")

    let item = Table("item")

    let id = Expression<Int64>("id")
    let name = Expression<String>("name")
    let price = Expression<Double>("Price")
    let desc = Expression<String>("Desc")
    let menu = Expression<Int64>("menu")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createTable(){
        do{
           try db!.run( item.create {t in
                t.column(id, primaryKey: true)
                t.column(name)
                t.column(price)
                t.column(desc)
                t.column(menu)
            })
        } catch {
            print(error)
        }
        let insert = item.insert(name <- "pasta", price <- 15.99, desc <- "yummy", menu <- 8)
        print(insert)
        do {
            try db!.run(insert)
        } catch {
            print(error)
        }
    }
    
    func getData() {
        func getData() {
            do {
                for _ in try! db!.prepare(item.select(id,name)) {
                    print("id: \(item[id]), name: \(item[name])")
                    
                }
                    let q = try! db!.prepare(item.select(id,name))
                    for _ in q {
                   " print(Row)"
            }
        }
        }



}

}
