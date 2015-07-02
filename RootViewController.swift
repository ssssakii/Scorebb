//
//  RootViewController.swift
//  Scorebb
//
//  Created by 高田早記 on 2015/07/02.
//  Copyright (c) 2015年 高田早記. All rights reserved.
//

import UIKit

var selectedLabel: UILabel!

class RootViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var tableView : UITableView?
    
    let imgArray: NSArray =
    ["ball.gifg","ball.gif","ball.gif","ball.gif","ball.gif","ball.gif",
    "ball.gifg","ball.gif","ball.gif","ball.gif","ball.gif","ball.gif",
    "ball.gifg","ball.gif","ball.gif","ball.gif","ball.gif","ball.gif",
    "ball.gifg","ball.gif","ball.gif","ball.gif","ball.gif","ball.gif",
    "ball.gifg","ball.gif","ball.gif","ball.gif","ball.gif","ball.gif",
    "ball.gifg","ball.gif","ball.gif","ball.gif","ball.gif","ball.gif",
    "ball.gifg","ball.gif","ball.gif","ball.gif","ball.gif","ball.gif",
    "ball.gifg","ball.gif","ball.gif","ball.gif","ball.gif","ball.gif"
    //"ball.gifg","ball.gif","ball.gif","ball.gif","ball.gif","ball.gif"
    ]
    
    let label1Array: NSArray =
    ["アウト",
    "悪送球",
    "アシスト",
    "アピール",
    "歩かせる",
    "安打",
    "イレギュラーバウンド",
    "ウィニングボール",
    "エラー",
    "送りバント",
    "押し出し",
    "カーブ",
    "カット",
    "空振り",
    "完全試合",
    "犠牲バント",
    "犠牲フライ",
    "クロスプレー",
    "敬遠",
    "ゲッツー",
    "牽制",
    "降板",
    "コールドゲーム",
    "ゴロ",
    "残塁",
    "シートノック",
    "ストレート",
    "スライダー",
    "スラッガー",
    "セーフティスクイズ",
    "セーフティバント",
    "代走",
    "代打",
    "タイムリーヒット",
    "タッチアップ",
    "デッドボール",
    "盗塁",
    "ネクストバッターズボックス",
    "ノック",
    "バックネット",
    "バッテリー",
    "フォアボール",
    "フォーク",
    "野手",
    "4-6-3",
    "ランニングホームラン",
    "ルーキー",
    "ワイルドピッチ"]
    
    let label2Array: NSArray =
    ["打者・走者が打席・塁にいる権利を失うこと。",
    "到底野手がとれそうにない送球をすること。",
    "野手が送球し走者の刺殺を助けること。間接的にアウトをとること。捕殺。",
    "守備側のチームがルール違反をした攻撃側選手に対して審判に主張すること。",
    "四球等で打者走者を1塁へ進ませること。",
    "打者の打ったフェアボールで1つ以上の塁に進塁すること。ヒット。",
    "何らかの原因でボールが不規則になったバウンド。失策にはならない。",
    "勝利を決めたときの球のこと。",
    "ふつうに守備をすれば処理できるボールを失敗して、打者を生かしてしまうこと。失策。",
    "0アウトまたは1アウト時に打者がバントして自らアウトになる代わりに、ランナーを進塁させること。犠牲バント。犠打。",
    "満塁のときに投手が四球・死球・ボークなどで走者を生還させてしまうこと。",
    "変化球のひとつ。下へ大きく曲がりながら落ちていくボール。",
    "打者が打ちにくい球に対して意識的にファールにすること。送球を別の選手が途中でさえぎること。",
    "打撃のときバットにボールがあたらないこと。",
    "味方がエラーせずに相手チームに安打・四死球を与えず、走者を出すことなく投手が完投した試合。パーフェクトゲーム。",
    "0アウトまたは1アウト時に打者がバントして自らアウトになる代わりに、ランナーを進塁させること。送りバント。犠打。",
    "0アウトまたは1アウト時に打者がフライを放ち自らアウトになる代わりに、野手の捕球後3塁ランナーが得点を得ること。犠飛。",
    "セーフかアウトか判別しにくいきわどいプレーのこと。",
    "打者との勝負を避けて故意に四球にすること。",
    "連続したプレーで1度に2人からアウトを奪うこと。ダブルプレー。併殺。",
    "投手または捕手が盗塁を防ぐ為に内野手に向かって投げること。また投げるまねをすること。",
    "投手が別の投手との交代の為マウンドを離れること。",
    "天候や得点の大差等の理由で試合続行が難しくなり主審が試合終了を宣言した試合。",
    "打者が打つことによって地面をころがった打球のこと。",
    "3アウト時点で走者が塁に残っていること。",
    "野手が守備について捕球や送球の練習をすること。",
    "変化しないまっすぐのボール。打者の手元でホップする。直球。フォーシーム。",
    "変化球のひとつ。右打者から見て大きく外角へ逃げていくボール。",
    "強打者のこと。",
    "0アウトまたは1アウトで打者のバントでの打球を見極めて3塁ランナーが進塁または残塁を判断する戦術。",
    "守備の不意をつきバントによって1塁へ進塁すること。",
    "攻撃において、同じチームのメンバー走者に代わって走る人。ピンチランナー。",
    "攻撃において、同じチームのメンバー打者に代わって打つ人。ピンチヒッター。",
    "塁上の走者を生還させるヒット。タイムリー。",
    "打者の打ったフライを野手が捕球後に、塁にリタッチして次の塁に進むこと。",
    "投球が打者に当たること。ただし打者がよける動作、ストライクゾーン以外であたることが条件。死球。",
    "走者が野手のすきをついて次の塁をへ進むこと。スチール。",
    "次の打者が待つ為のサークル。ウェイティングサークル。",
    "守備の際にボールを打つこと。",
    "本塁側後方のネット。",
    "投手と捕手のこと。",
    "四球のこと。ボールが4つになり打者は安全に一塁へ進める。",
    "変化球のひとつ。深く沈んで落ちていくボール。",
    "守備をしている選手のこと。",
    "ダブルプレイのこと。数字は守備番号を表しており、セカンド→ショート→ファーストの送球順でダブルプレーにしたということ。",
    "外野フェンスを超えることはなかったがホームまで帰って得点したこと。",
    "新人選手のこと。",
    "捕手が捕らえることができないような球を投げること。暴投。"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Table Viewのセルの数を指定
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    //各セルの要素を設定する
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // tableCell の ID で UITableViewCell のインスタンスを生成
        var cell = tableView.dequeueReusableCellWithIdentifier("Table View Cell", forIndexPath: indexPath) as! UITableViewCell
        
        //var img = UIImage(named:"\(imgArray[indexPath.row])")
        
        
        // Tag番号 1 で UIImageView インスタンスの生成
        var imageView = tableView.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named:"\(imgArray[indexPath.row])")
        
        // Tag番号 ２ で UILabel インスタンスの生成
        let label1 = tableView.viewWithTag(2) as! UILabel?
        label1!.text = "\(label1Array[indexPath.row])"
        
        // Tag番号 ３ で UILabel インスタンスの生成
        var label2 = tableView.viewWithTag(3) as! UILabel?
        label2!.text = "\(label2Array[indexPath.row])"
        
        
        return cell
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
