//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let redView = UIView()
        redView.backgroundColor = .red
//        redView.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        view.addSubview(redView)

        
        
        
        
        let constraints = [
                            redView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
                           redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                           redView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
                           redView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
//                           redView.heightAnchor.constraint(equalToConstant: 50.0)
        ]
        
        NSLayoutConstraint.activate(constraints)
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        
        
//        let blueView = UIView()
//        blueView.backgroundColor = .blue
//        blueView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//
//        view.addSubview(blueView)
//
        

//        let label = UILabel()
//        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
//        label.text = "Hello World!"
//        label.textColor = .black
//
//        view.addSubview(label)
        self.view = view
    }
    
     
}


// Present the view controller in the Live View window
let viewController = MyViewController()
//viewController.view.frame = CGRect(x: 0, y: 0, width: 320, height: 568)
PlaygroundPage.current.liveView = viewController




// Consumir uma API (ex: IMDB)
// JSON retorna titulo, descricao, imagem
// Home: TableView, scrollable, nas celulas: titulos com imagens
// QUando pressionar uma celular, te direciona para outra tela, com detalhes do item
// Utilize MVVM
// Para requisicao REST, utilizar: Alamofire e URLSession
// Para gestao de dependencia, utilizar: Cocoapods, Carthage

// Primeira iteracao:
// URLSession, GET, TableView, Detalhes do item

// Segunda iteracao:
// Adicionar imagens

// Terceira iteracao:
// Utilizar MVVM

// Quarta iteracao:
// Utilizar Cocoapods ou Carthage para instalar Alamofire
// Implementar requisicoes com Alamofire

// Bonus:
// Implementar utilizando SwiftUI, UIKit (View code e Interface Builder)
