//: A UIKit based Playground for presenting user interface

// MyViewController: 1
// BrunoViewController: 1


import UIKit
import PlaygroundSupport


class MyViewController {
    let vc = BrunoViewController()
}


class BrunoViewController {
    let delegate = MyViewController()
}




