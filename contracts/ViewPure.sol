// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract View {

//  USING VIEW KEYWORD IN OR FUNCTION THEN WE CANNOT CHANGE THE STATE VARIABLE INSIDE THE FUNCTION
    
    uint256 num1 = 2;
    uint256 num2 = 7;

    function getResult() public view returns(uint256, uint256) {
        return(num1, num2);
    }

    function getResults() public view returns(uint product, uint total) {
        // uint Num1 = 20;
        // uint Num2 = 30;

        product = num1 * num2;
        total = num1 + num2;

    }
}

contract Pure {
    
//  Function declared as pure, So this function cannot read the data from the state variables.


    uint num1 = 4;
    uint num2 = 10;

    function getData() public pure returns(uint256, uint256) {
        return (num1, num2);
    }

}