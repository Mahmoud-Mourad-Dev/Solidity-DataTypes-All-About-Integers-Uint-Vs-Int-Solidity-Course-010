// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.9.0;
contract integersOpertionArth{

    /*
    1- Arthimitic Operation
    division rounds towards zero
    2- range 2**n -1
    3- wrapping unchecked
    4- automatic check
    5- overflow and underflow
    6-two's complement   how solidity store negative number
     decimal   = binary  
        5      = 00000101
               = 11111010 +1 
       -5      = 11111011
    7- %   result = a-(n*(a/n)
     x**y  y must be positive uint
     result type must be same type x
     0**0 = 1 

    */

    int a = 5;
    int b = 2 ;

    function add() public view returns(int){
      return a + b;
    }
    function sub() public view returns(int){
        return a - b;
    }
    function mul () public view returns(int) {
        return a * b;
      
    }

    function div() public view returns (int) {
      unchecked{ return  (a / b );}
    }

    function range() public pure returns(uint8 min){   //uncheck
        min = type(uint8).min;
        
    }
    
    
        }