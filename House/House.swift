//
//  House.swift
//  House
//
//  Created by Alireza Karimi on 2023-03-08.
//

import Foundation

class House {
  var border: Character
  var fill: Character
  var size: Int
    init(size : Int ,border : Character = "X" , fill : Character = "*") {
        
        if size >= 3 && size <= 37 {
            self.size = size
        }
        else if size > 37 {
            self.size = 37
        }
        else {
            self.size = 3
        }
        
        if fill.asciiValue! >= 3 && fill.asciiValue! <= 125 {
            self.fill = fill
            
        }
        else {
            self.fill = "&"
        }
        if border.asciiValue! >= 3 && border.asciiValue! <= 125 {
            self.border = border
        }
        else {
            self.fill = "*"
        }
        self.fill = "*"
        self.border = "X"
    }
  
  var perimeter: Int {
    (size*3) + ((size+2)*2) + 2
      
  }
  
  var area: Double {
      let side : Double = Double(size)
      let triangle: Double = Double(size + 2 )
      return (((triangle * triangle ) * 3.squareRoot()) / 4 ) + (side * side)
      //(size+2) * (size+2) * (3.squareRoot()) / 4 + (size*size)
  }
  
  func grow() {
      if size < 37 && size > 3 {
          
          size += 1
      }
  }
  
  func shrink() {
      if size < 37 && size > 3 {
          
          size -= 1
      }
  }
  
  func draw() {
      for i in 0..<(size + size + 1 ) {
          
          if i > 0 {
              if i < size + 2 {
                  if size >= i {
                      for _ in 0..<size - i + 1{
                          print(" ", terminator: "")
                      }
                  }
                  print(border , terminator: " ")
                  for _ in 0..<i - 1 {
                      print(fill , terminator: " ")
                  }
                  print(border)
              }
              else {
                  print("  ",terminator: "")
                  print(border,terminator: " ")
                  for _ in 0..<size - 2 {
                      if i == size * 2{
                          print(border,terminator: " ")
                      }
                      else {
                          print(fill,terminator: " ")
                      }
                  }
                  print(border)
              }
          }
          else {
              if size % 2 == 0 {
                  print(" ",terminator: "")
    
              }
              for j in 0..<size {
                  if j < size - (size / 2){
                      print(" ",terminator: "")
                  }
                  else {
                      print(border)
                      break
                  }
                  print(" ",terminator: "")
              }
              
              
          }
      }
      print()
  }
}
