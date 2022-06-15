//
//  MyCollectionView.swift
//  MyMovies
//
//  Created by Bruno Andrade on 2022-06-09.
//

import UIKit

class MyCollectionView: UICollectionView {
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        setupCollectionView()
        adicionarConstraints()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCollectionView() {
        register(MovieCollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        backgroundColor = UIColor.blue
    }
    
    func adicionarConstraints(){
        guard let superview = superview else { return }
        
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo:  superview.safeAreaLayoutGuide.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.bottomAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
}
