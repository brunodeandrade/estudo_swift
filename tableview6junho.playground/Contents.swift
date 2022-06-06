//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    let tableView = UITableView()

    var characters = ["Link", "Zelda", "Ganondorf", "Midna"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func loadView() {
        super.loadView()
        
        setupTableView()
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.delegate = self

        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "customTableViewCell")
    }
}

extension MyViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "customTableViewCell", for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        
        cell.usernameLabel.text = characters[indexPath.row]

        
        return cell
    }


}

extension MyViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}




class CustomTableViewCell: UITableViewCell {
    let imgUser: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit

        return imageView
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
                
        contentView.addSubview(imgUser)
        contentView.addSubview(usernameLabel)
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        let constraints = [
            imgUser.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            imgUser.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imgUser.heightAnchor.constraint(equalToConstant: 10),
            imgUser.trailingAnchor.constraint(equalTo: usernameLabel.leadingAnchor, constant: -10),
            imgUser.widthAnchor.constraint(equalToConstant: 10),
            usernameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
}



// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
