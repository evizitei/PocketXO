//
//  XoBoard.swift
//  PocketXO
//
//  Created by Ethan Vizitei on 10/31/14.
//  Copyright (c) 2014 Ethan Vizitei. All rights reserved.
//

import Foundation

public class XoBoard {
    var turn : String
    var state : Array<Array<String>>
    
    public init() {
        turn = "X"
        state = [["","",""],["","",""],["","",""]]
    }
    
    public func whosTurn() -> (String) {
        return turn
    }
    
    public func play(row:Int, column:Int){
        state[row][column] = turn
        toggleTurn()
    }
    
    public func getState() -> (Array<Array<String>>) {
        var copiedState = state
        return copiedState
    }
    
    private func toggleTurn(){
        if(turn == "X"){
            turn = "O"
        }else{
            turn = "X"
        }
    }
}