//
//  ViewController.swift
//  PickerDateSwift
//
//  Created by MAEDAHAJIME on 2015/07/05.
//  Copyright (c) 2015年 MAEDA HAJIME. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // デートピッカー値変更時
    @IBAction func changeDate(sender: UIDatePicker) {
        
        // 表示書式の設定
        let df:NSDateFormatter = NSDateFormatter()
        df.dateFormat = "yyyy年MM月dd日 HH時mm分"

        // 選択日時の表示
        let mySelectedDate: NSString = df.stringFromDate(sender.date)
        self.lbDate.text = mySelectedDate as String
        
    }
    
}

