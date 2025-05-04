// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.9.0;
contract integersOpertion{

    /*  
    1- comperation operation == , >=  , <=  , <  , > , !=
    2- Bit operation
    
     - and  يطلع 1 بس لو الاتنين 1
     - or   بيطلع 1 لو فيه على الأقل واحد من البتين هو 1
     - xor ^ exclusive or بيطلع 1 لو البتين مختلفين، يعني واحد 0 والتاني 1
     - not(~) بيقلب كل بت، 0 تبقى 1، و1 تبقى 0

    3- shift operation  >>  , >>    ينقل كل البتات  
    x << n    = x*n^2
    x >> n    = x/n^2

    4- Arithmetics operation S
    + , - , *, / , % , **


    */

    int8 a = 5;
    int8 b = 6 ;
    int256  c = 2;
    uint256  d = 3;

    //     1- comperation operation == , >=  , <=  , <  , > , !=


    function comperationOperation() public view returns(bool,bool,bool,bool,bool,bool,bool){
        return (a == b,a > b,a < b, a >= b , a <=b ,a != b,a==5);
    }

    // 2- Bit operation

    function bitOperationAnd() public view returns(int8){
        /* decimal  =  binary
            5       = 00000101
            6       = 00000110
            4       = 00000100
        */
        return (a & b);
    }
    
    function bitOperationOr() public view returns(int8){
        /* decimal  =  binary
            5       = 00000101
            6       = 00000110
            7       = 00000111
        */
        return (a | b);

    }

    function bitOperationXor() public view returns(int8){
        /* decimal  =  binary
            5       = 00000101
            2       = 00000110
            3       = 00000011
        */
        return (a ^ b);

    
        }

    function bitOperationNegation() public view returns(int){
        /* decimal  =  binary
            5       = 00000101
           -6      = 11111010
        */
        return (~a);    
        }

    function ShiftOperationLeft() public view returns(int256){
        /* decimal  =  binary    x*2^y
            2  = 00000010
           16  = 00010000  
        */
        return (c<<d);     //2*2^3 =16
        }

        function ShiftOperationRight() public view returns(int256){
        /* decimal  =  binary    x*2^y
            2  = 00000010
           16  = 00010000  
        */
        return (c>>d);     //2/2^3 = 0
        }
     /*
     النوع  بتاع النتيجة هو نفس نوع الطرف الشمال 
     الطرف اليمين لازم يكون من نوع الموجب

     */



        }