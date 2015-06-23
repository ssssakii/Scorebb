//
//  scrollerViewController.swift
//  Scorebb
//
//  Created by 高田早記 on 2015/06/22.
//  Copyright (c) 2015年 高田早記. All rights reserved.
//

import UIKit

class scrollerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //UIImageに画像の名前を指定します
        let img1 = UIImage(named:"rainappu2.png");
        let img2 = UIImage(named:"rainappu2.png");
        let img3 = UIImage(named:"rainappu2.png");
        
        //UIImageViewにUIIimageを追加
        let imageView1 = UIImageView(image:img1)
        let imageView2 = UIImageView(image:img2)
        let imageView3 = UIImageView(image:img3)
        
        //UIScrollViewを作成します
        let scrView = UIScrollView()
        
        //UIScrollViewの1ページ分のサイズ + 表示位置
        scrView.frame = CGRectMake(-30, 50, 450 , 600)
        
        //全体のサイズ
        scrView.contentSize = CGSizeMake(450, 600*3)  //変更箇所
        
        //UIImageViewのサイズと位置を決めます
        imageView1.frame = CGRectMake(0, 0, 450, 600)
        imageView2.frame = CGRectMake(0, 600, 450, 600)  //変更箇所
        imageView3.frame = CGRectMake(0, 1200, 450, 600)  //変更箇所
        
        //viewに追加します
        self.view.addSubview(scrView)
        
        //UIImageViewをScrollViewに追加します
        scrView.addSubview(imageView1)
        scrView.addSubview(imageView2)
        scrView.addSubview(imageView3)
        
        //scrView.pagingEnabled = true  //コメントアウト
//        scrView.pagingEnabled = false   //もしくはfalseを返す
    }

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
