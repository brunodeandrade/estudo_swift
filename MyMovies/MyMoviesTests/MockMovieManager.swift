//
//  MockMovieManager.swift
//  MyMoviesTests
//
//  Created by Bruno Andrade on 2022-07-25.
//

import Foundation
@testable import MyMovies

class MockMovieManager: MovieManaging {
    var delegate: MovieManagerDelegate?
    
    func fetchMovie(_ page: String, completion: @escaping ([Movie]) -> Void) {
        let movie = Movie(id: 1, title: "Star Wars", releaseDate: "2022", genreIds: [0], overview: "Action movie from George Lucas", backdropPath: "", posterPath: "")
        
        completion([movie])
    }
    
    
}
