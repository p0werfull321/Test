// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "src/FundMe.sol";

contract FundMeTest is Test {
        uint256 number= 1;
        FundMe fundMe;

    function setUp() external {
        // us -> FundMeTest -> FundMe
        fundMe= new FundMe();
    }

    function testMinimumDollarIsFive() public {
       assertEq(fundMe.MINIMUM_USD(), 5e18);

    }

    function testOwnerIsMsgSender() public{
        console.log (fundMe.i_owner());
        console.log (address(this));
        assertEq(fundMe.i_owner(), address(this));
    }
}
