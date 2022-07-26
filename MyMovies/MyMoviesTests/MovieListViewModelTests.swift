//
//  MovieListViewModelTestss.swift
//  MyMovies
//
//  Created by Bruno Andrade on 2022-07-25.
//

import Foundation
import XCTest
@testable import MyMovies

class MovieListViewModelTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }
    
    func testUpdateMovies() throws {
        let mock = MockMovieManager()
        let viewModel = MovieListViewModel(movieManager: mock)
        let expectation = XCTestExpectation(description: "Expectation")

        
        viewModel.fetchMovies {
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 2.0)

        
        XCTAssertEqual(viewModel.movies.count, 1)
    }
    
}
