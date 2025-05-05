# 002-Solidity-Data-Type-Integers
Solidity Data Type Integers


## Integers

In Solidity, integers are divided into two categories: signed integers and unsigned integers.
Unsigned integers can only represent non-negative values.

```solidity
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
```
```solidity
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
```


```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;
 contract typeIntegers{
    // sign negative and positive value 
    int8 a= -1;
    int16 b = 1;
    int32 c= 2 ;
    int64 d =  3  ;
    int128 e = 4;
    int256 f= 5;
    int g = -50;  // like int256

    // unsign only positive value
    uint8 A = 0;
    uint16 B=1 ;
    uint32 C=2;
    uint64 D=3;
    uint128 E=4;
    uint256 F= 5;
    uint G =  50 ;  // like  uint256     

 }
```









```solidity
// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract IntegerExamples {
    uint256 count = 100;
    uint countAlias = 100;  // Same as uint256
    uint8 smallCount = 255;  // Maximum value for uint8
    uint16 mediumCount = 65535;  // Maximum value for uint16
    int256 temperature = -20; //Signed integers can negative and positive values
    int temperatureAlias = -20;  // Same as int256
    int8 smallTemp = -128;  // Minimum value for int8
    int16 mediumTemp = 32767;  // Maximum value for int16
}
```

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IntegerExample {
    // Unsigned integer variables
    uint256 public maxUint = 2**256 - 1; //maximum possible value.
    uint8 public smallUint = 255; //maximum value for an 8-bit unsigned integer.

    // Signed integer variables
    int256 public minInt = -(2**255);
    int16 public smallInt = 32767;

    // Function to add two unsigned integers
    function addUint(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Function to subtract two signed integers
    function subtractInt(int256 a, int256 b) public pure returns (int256) {
        return a - b;
    }
}
```

```solidity

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IntegerComparisons {
    int public a = 10;
    int public b = -5;

    // Function to compare integers
    function compareIntegers() public view returns (bool, bool, bool, bool, bool, bool) {
        bool isEqual = (a == b);        // هل a تساوي b؟
        bool isNotEqual = (a != b);     // هل a لا تساوي b؟
        bool isGreater = (a > b);       // هل a أكبر من b؟
        bool isLess = (a < b);          // هل a أصغر من b؟
        bool isGreaterOrEqual = (a >= b); // هل a أكبر من أو تساوي b؟
        bool isLessOrEqual = (a <= b);    // هل a أصغر من أو تساوي b؟

        return (isEqual, isNotEqual, isGreater, isLess, isGreaterOrEqual, isLessOrEqual);
    }
}
```
```solidity
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract CompareValues {   
    function getMax(uint a, uint b) public pure returns (uint) {
        return a >= b ? a : b;
    }    
}
```


```solidity

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract IntegerExample {
    int8 public signedInt8;
    uint8 public unsignedInt8;

    // Assigning values to signed and unsigned integers
    function setValues() public {
        signedInt8 = -5;
        unsignedInt8 = 10;
    }

    // Performing arithmetic operations on integers
    function performOperations() public view returns (int8, uint8,uint8,int8) {
        int8 result1 = signedInt8 + 2;
        uint8 result2 = unsignedInt8 - 3;
        uint8 result3 = unsignedInt8 * 5;
        int8 result4 = signedInt8 / 2;

        return (result1, result2,result3 , result4) ;
    }
}
```

```solidity

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IntegerOperators {
    uint public num1 = 10;
    uint public num2 = 5;
    int public num3 = -3;
    int public num4 = 8;

    // Function to perform arithmetic operations
    function performOperations() public view returns (uint, uint, int, int,uint,uint) {
        uint addition = num1 + num2; // Addition
        uint subtraction = num1 - num2; // Subtraction
        uint multiplication = num1 * num2; // Multiplication
        uint division = num1 / num2; // Division

        int negation = -num3; // Negation
        int modulus = num4 % num3; // Modulus

        return (addition, subtraction, negation, modulus,multiplication,division);
    }
}
```

``` solidity

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract ComparisonOperators {
    uint public num1 = 10;
    uint public num2 = 5;
    int public num3 = -3;
    int public num4 = 8;

    // Function to perform comparison operations
    function performComparisons() public view returns (bool, bool, bool, bool) {
        bool equal = (num1 == num2); // Equal to
        bool notEqual = (num1 != num2); // Not equal to
        bool greaterThan = (num1 > num2); // Greater than
        bool lessThan = (num1 < num2); // Less than

        return (equal, notEqual, greaterThan, lessThan);
    }
}
```

```solidity
pragma solidity ^0.8.0;

contract BitwiseOperators {
    uint public num1 = 10; // Binary representation of 10
    uint public num2 = 5; // Binary representation of 5

    // Function to perform bitwise operations
    function performBitwiseOperations() public view returns (uint, uint, uint, uint) {
        uint andOperation = num1 & num2; // Bitwise AND
        uint orOperation = num1 | num2; // Bitwise OR
        uint xorOperation = num1 ^ num2; // Bitwise XOR
        uint notOperation = ~num1; // Bitwise NOT

        return (andOperation, orOperation, xorOperation, notOperation);
    }
}
```

```solidity

pragma solidity ^0.8.0;

contract ShiftOperators {
    uint public num1 = 10; // Binary representation of 10
    uint public num2 = 5; // Binary representation of 5

    // Function to perform shift operations
    function performShiftOperations() public view returns (uint, uint, uint, uint) {
        uint leftShift = num1 << 2; // Left shift by 2 bits
        uint rightShift = num1 >> 1; // Right shift by 1 bit
        uint arithmeticRightShift = num2 >> 1; // Arithmetic right shift by 1 bit

        return (leftShift, rightShift, arithmeticRightShift, num1);
    }
}
```
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BitwiseExample {
    uint8 public num1 = 10; // 10 بالثنائي
    uint8 public num2 = 5; // 5 بالثنائي

    // Perform bitwise AND
    function bitwiseAnd() public view returns (uint8) {
        return num1 & num2;
    }

    // Perform bitwise OR
    function bitwiseOr() public view returns (uint8) {
        return num1 | num2;
    }

    // Perform bitwise XOR
    function bitwiseXor() public view returns (uint8) {
        return num1 ^ num2;
    }

    // Perform bitwise NOT (on num1)
    function bitwiseNot() public view returns (uint8) {
        return ~num1;
    }

    // Perform left shift (<<)
    function leftShift(uint8 shiftBy) public view returns (uint8) {
        return num1 << shiftBy;
    }

    // Perform right shift (>>)
    function rightShift(uint8 shiftBy) public view returns (uint8) {
        return num1 >> shiftBy;
    }
}
```
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IntegerLimits {
    // Max and Min for uint8
    uint8 public maxUint8 = type(uint8).max;
    uint8 public minUint8 = type(uint8).min;

    // Max and Min for int8
    int8 public maxInt8 = type(int8).max;
    int8 public minInt8 = type(int8).min;

    // Max and Min for uint256
    uint256 public maxUint256 = type(uint256).max;
    uint256 public minUint256 = type(uint256).min;

    // Max and Min for int256
    int256 public maxInt256 = type(int256).max;
    int256 public minInt256 = type(int256).min;
}
```


### Fixed Point Numbers

In Solidity, the statement "Fixed point numbers are not fully supported by Solidity yet.
```solidity

// SPDX-License-Identifier: MIT
   pragma solidity  ^0.8.20;
  contract FixedPointExample {
    
    fixed256x18 a; // Signed fixed-point number with 18 decimal places
    ufixed256x18 b; // Unsigned fixed-point number with 18 decimal places

    function setValues() public {
        // These lines will cause an error because assignment is not supported
       // a = fixed256x18(1.5); 
        //b = ufixed256x18(2.5);
    }
 }
```
### Workaround Using Integer Arithmetic
Since fixed-point arithmetic isn't fully supported, you can use integer arithmetic to emulate fixed-point numbers.
 You do this by scaling your values. For instance, if you want to represent numbers with 2 decimal places,
 you multiply all values by 100 (the scaling factor).

```solidity

 // SPDX-License-Identifier: MIT
   pragma solidity  ^0.8.20;

contract EmulatedFixedPoint {
    uint256 constant SCALE = 100; // Scaling factor for 2 decimal places

    function add(uint256 x, uint256 y) public pure returns (uint256) {
        return (x + y);
    }

    function subtract(uint256 x, uint256 y) public pure returns (uint256) {
        require(x >= y, "Underflow error");
        return (x - y);
    }

    function multiply(uint256 x, uint256 y) public pure returns (uint256) {
        return (x * y) / SCALE;
    }

    function divide(uint256 x, uint256 y) public pure returns (uint256) {
        require(y != 0, "Division by zero error");
        return (x * SCALE) / y;
    }

    function toFixed(uint256 x) public pure returns (uint256) {
        return x * SCALE;
    }

    function fromFixed(uint256 x) public pure returns (uint256) {
        return x / SCALE;
    }
}
```
مثال: فحص صلاحيات باستخدام Bitwise
هنفترض إن عندنا نظام صلاحيات (permissions) كل واحدة منهم بنمثلها ببت معين:

الصلاحية	القيمة
القراءة (read)	0001 = 1
الكتابة (write)	0010 = 2
المسح (delete)	0100 = 4
التعديل (update)	1000 = 8

يعني لو عندك رقم 5 (0101) يبقى معاك صلاحيات: قراءة و مسح.


```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BitwiseExample {
    // Constants for permissions
    uint constant READ = 1;   // 0001
    uint constant WRITE = 2;  // 0010
    uint constant DELETE = 4; // 0100
    uint constant UPDATE = 8; // 1000

    // تخزين صلاحيات كل مستخدم
    mapping(address => uint) public permissions;

    // إعطاء صلاحيات للمستخدم
    function grantPermission(address user, uint permission) external {
        permissions[user] |= permission; // استخدام OR لإضافة صلاحية جديدة
    }

    // إلغاء صلاحية من المستخدم
    function revokePermission(address user, uint permission) external {
        permissions[user] &= ~permission; // استخدام AND مع NOT لإزالة الصلاحية
    }

    // التحقق هل للمستخدم صلاحية معينة
    function hasPermission(address user, uint permission) external view returns (bool) {
        return (permissions[user] & permission) != 0;
    }
}
```
