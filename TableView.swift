//
//  TableView.swift
//  Scorebb
//
//  Created by 高田早記 on 2015/06/24.
//  Copyright (c) 2015年 高田早記. All rights reserved.
//

import UIKit

class TableView: UIViewController //,UITableViewDataSource,UITableViewDelegate
{
    
    
   // @IBOutlet var tableView : UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    
    /*
    // Cell が選択された場合
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath!) {
        // [indexPath.row] から画像名を探し、UImage を設定
        selectedImage = UIImage(named:"\(imgArray[indexPath.row])")
        
        // SubViewController へ遷移するために Segue を呼び出す
        performSegueWithIdentifier("toSubViewController",sender: nil)
    }
    
    // Segue 準備
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "toSubViewController") {
            let subVC: SubViewController = segue.destinationViewController as SubViewController
            // SubViewController のselectedImgに選択された画像を設定する
            subVC.selectedImg = selectedImage
        }
    }
*/
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
        
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
