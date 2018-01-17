//
//  ViewController.swift
//  homeworkOmikuji
//
//  Created by 嘉数涼夏 on 2018/01/16.
//  Copyright © 2018年 Suzuka Kakazu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //イメージビューの名前
    @IBOutlet weak var myImageView: UIImageView!
    //一言を入れたいラベルの名前
    @IBOutlet weak var handsomeText: UILabel!
    var omikuji = ["竹野内豊","窪塚洋介","菅田将暉","高橋一生","坂口健太郎","岡田将生","松田翔太"]
    
    var hitokoto = ["気持ちには答えられないけどお前は絶対俺だと思う、笑","お前は特別","結婚したいタイプ","お前、本当はいい奴だよな、笑","付き合ってあげてもいいよ、笑","ブスだけど、可愛くはなった","お前、俺のこと大好きだよな、笑"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    //占うボタンを押した時に発動
    @IBAction func tapUranai(_ sender: UIButton) {
        //占いの結果をランダムに選ぶための数字を作成
        //omikuji.countで配列のリストの数がでる(今は6つ)
        //例)71(ランダムな数)を7で割った余り→1なので、吉を表示する
        let r = Int(arc4random()) % omikuji.count
        let h = Int(arc4random()) % hitokoto.count
       
        print(omikuji[r])
        print(hitokoto[h])
        
        //TODO:アラートに運勢を表示した上で、画面上に表示
        let alert = UIAlertController (title: "今日のイケメン", message: "\(omikuji[r])：\(hitokoto[h])", preferredStyle: .alert)
        
        //TODO:画像をおみくじの運勢ぶん用意してOKが押されたら対応する画像を表示する
        alert.addAction(UIAlertAction(title: "満足", style: .default, handler: {action in
            print("このイケメンで満足しました")
            if r == 0{
                self.myImageView.image = UIImage(named:"yutaka_T.png")
                self.handsomeText.text = self.hitokoto[h]
            }
            if r == 1{
                self.myImageView.image = UIImage(named:"yosuke_K.png")
                self.handsomeText.text = self.hitokoto[h]
            }
            if r == 2{
                self.myImageView.image = UIImage(named:"masaki_S.png")
                self.handsomeText.text = self.hitokoto[h]
            }
            if r == 3{
                self.myImageView.image = UIImage(named:"issei_K.png")
                self.handsomeText.text = self.hitokoto[h]
            }
            if r == 4{
                self.myImageView.image = UIImage(named:"kentaro_S.png")
                self.handsomeText.text = self.hitokoto[h]
            }
            if r == 5{
                self.myImageView.image = UIImage(named:"masaki_O.png")
                self.handsomeText.text = self.hitokoto[h]
            }
            if r == 6{
                self.myImageView.image = UIImage(named:"syota_M.png")
                self.handsomeText.text = self.hitokoto[h]
            }

        }))
        
        alert.addAction(UIAlertAction(title: "もう一回", style: .default, handler: {action in
            print("このイケメンの気分じゃないようです")
            self.myImageView.image = UIImage(named:"")
            self.handsomeText.text = "もう一回どうぞ"
        }))
        
        present(alert,animated: true,completion: nil)
        //TODO:出来上がったらGithubにコミットプッシュ
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

