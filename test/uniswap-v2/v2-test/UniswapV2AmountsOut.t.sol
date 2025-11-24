// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../BaseTest.t.sol";

contract UniswapV2Swaps is BaseTest {
    function setUp() public override {
        super.setUp();
    }

    function test_getAmountsOut() public view {
        address[] memory path = new address[](3);
        path[0] = WETH;
        path[1] = DAI;
        path[2] = MKR;

        uint256 amountIn = 1 ether;
        uint256[] memory amounts = router.getAmountsOut(amountIn, path);

        console2.log("WETH : ", amounts[0]);
        console2.log("DAI  : ", amounts[1]);
        console2.log("MKR  : ", amounts[2]);
    }

    function test_getAmountsIn() public view {
        address[] memory path = new address[](2);
        path[0] = WETH;
        path[1] = DAI;

        uint256 amountOut = 1 ether;
        uint256[] memory amounts = router.getAmountsIn(amountOut, path);
        console2.log("DAI  : ", amounts[1]);
        console2.log("WETH needed as input for 1 DAI output : ", amounts[0]);
    }
}
