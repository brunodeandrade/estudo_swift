//
//  MovieListViewModel.swift
//  MyMovies
//
//  Created by Bruno Andrade on 2022-07-04.
//

import Foundation

class MovieListViewModel {
    
    // MARK: - Atributes

    var movies: [Movie] = []
    
    let movieManager: MovieManager
    
    var page = 1
    
    weak var delegate: MovieListViewController?
    
    init(movieManager: MovieManager = MovieManager()) {
        self.movieManager = movieManager

        setupDelegates()
    }
    
    func setupDelegates() {
        movieManager.delegate = self
    }
    
    func fetchMovies() {
        movieManager.fetchMovie(String(page))
    }
    
//    func fetchImage(url: URL) {
//        movieManager.fetchImage(url: URL(fileURLWithPath: "www.google.com")) { image in
//            delegate.image = image
//        }
//    }
}


extension MovieListViewModel: MovieManagerDelegate {
    func updateMovies(movie: [Movie]) {
        DispatchQueue.main.async {
            self.movies += movie
            self.delegate?.myCollectionView.reloadData()
            print(self.movies[0].title)
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}
