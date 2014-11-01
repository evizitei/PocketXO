//
//  BoardTests.swift
//  PocketXO
//
//  Created by Ethan Vizitei on 10/31/14.
//  Copyright (c) 2014 Ethan Vizitei. All rights reserved.
//

import XCTest
import PocketXO

class BoardTests: XCTestCase {
    let board = XoBoard()
    
    func testXsTurnFirst() {
        assert(board.whosTurn() == "X", "X should go first")
    }
    
    func testTurnsAlternate() {
        board.play(1, column:1)
        assert(board.whosTurn() == "O", "Players should alternate")
    }
    
    func testDefaultBoardState(){
        let defaultState = [["","",""],["","",""],["","",""]]
        assert(board.getState() == defaultState, "game should start all blank")
    }
    
    func testBoardStateModulatesWithPlay(){
        board.play(1, column:1)
        board.play(0, column:0)
        board.play(2, column:2)
        board.play(0, column:2)
        let gameState = [["O","", "O"],
                         ["", "X",""],
                         ["", "", "X"]]
        assert(board.getState() == gameState, "game should track state as plays happen")
    }
}