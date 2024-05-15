// SPDX-License-Identifier: MIT
pragma solidity >0.7 <0.9;

contract simpleCounter {
    uint256 number = 1;
    string sutractError = "Number cannot be less than 0";

    function add(uint256 _add) public {
        number = number + _add;
    }

    function subtract(uint256 _subtract) public {
        if (number < _subtract) {
            revert(sutractError);
        } else {
            number = number - _subtract;
        }
    }

    function valueOfNumber() public view returns (uint256) {
        return number;
    }
}
