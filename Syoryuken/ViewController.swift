//
//  ViewController.swift
//  Syoryuken
//
//  Created by H M on 2022/10/17.
//

//https://qiita.com/tomoyuki_HAYAKAWA/items/65f8fecfbb5ac0f610e9
import UIKit

class ViewController: UIViewController {
    //1.初期設定
    let imageNameArray = [
        "attak1","attak2","attak3","attak4","attak5","attak6","attak7","attak8","attak9","attak10","attak11","attak12","attak13","attak14","attak15","attak16","attak17","attak18","attak19","attak20"
    ]
    var dispImageNo = 0  //追加! 現在表示されてる画像の(配列における)番号
    // 配列
    var imageArrayAttack : Array<UIImage> = []
    
    //2.紐付け
    @IBOutlet var imageView: UIImageView!
    @IBAction func button(_ sender: Any) {
        // アニメーションの適用
        imageView.animationImages = imageArrayAttack
        // 2.0秒間隔
        imageView.animationDuration = 2.0
        // 1回繰り返し
        imageView.animationRepeatCount = 1
        // アニメーションを開始
        imageView.startAnimating()
    }
    
    
    //3.自動的に呼び出す関数
    override func viewDidLoad() {
        super.viewDidLoad()
        // 立ち攻撃の画像を配列に格納
        // ポイントは、画像を入れる配列を作っておき、
        //viewDidLoad() でループを利用してまとめて配列に格納
        while let attackImage = UIImage(named: "attak\(imageArrayAttack.count+1)") {
            imageArrayAttack.append(attackImage)
        }
        //画面の最初と最後に画像が表示される
        displayImage()
    }
    //4.その他関数
    func displayImage() {
        let name = imageNameArray[dispImageNo] //表示する画像の名前を決定
        let image = UIImage(named: name) //画像を変数に読み込む
        imageView.image = image // imageViewに読み込んだ画像をセット
    }
}
