//
//  MovieListViewModel.swift
//  MyMovies
//
//  Created by Bruno Andrade on 2022-06-09.
// 

import Foundation

class MovieListViewModel {
    var movies: [Movie] = []
    
    var movieManager = MovieManager()
    
    weak var delegate: MovieListViewController?
    
    init() {
        movieManager.delegate = self
    }
    
}

extension MovieListViewModel: MovieManagerDelegate {
    func didUpdateMovie(_ movieManager: MovieManager, movie: [Movie]) {
        DispatchQueue.main.async {
            self.movies = movie
            self.delegate!.myCollectionView?.reloadData()
            print(self.movies[0].title)
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}
