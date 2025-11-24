// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test, console2} from "forge-std/Test.sol";
import {IERC20} from "src/interfaces/IERC20.sol";
import {IERC20} from "src/interfaces/IWETH.sol";
import {IUniswapV2Router02} from
    "src/interfaces/uniswap-v2/IUniswapV2Router02.sol";

import {
    WETH,
    USDC,
    USDT,
    DAI,
    MKR,
    WBTC,
    UNISWAP_V2_ROUTER_02,
    UNISWAP_V2_FACTORY,
    UNISWAP_V2_PAIR_DAI_WETH,
    UNISWAP_V2_PAIR_DAI_MKR,
    SUSHISWAP_V2_FACTORY,
    SUSHISWAP_V2_ROUTER_02,
    SUSHISWAP_V2_PAIR_DAI_WETH,
    UNISWAP_V3_FACTORY,
    UNISWAP_V3_NONFUNGIBLE_POSITION_MANAGER,
    UNISWAP_V3_SWAP_ROUTER_02,
    UNISWAP_V3_POOL_DAI_USDC_100,
    UNISWAP_V3_POOL_DAI_WETH_3000,
    UNISWAP_V3_POOL_DAI_WETH_500,
    UNISWAP_V3_POOL_USDC_WETH_500,
    CURVE_3POOL,
    CURVE_3CRV,
    CURVE_TRI_CRYPTO
} from "src/Constants.sol";

abstract contract BaseTest is Test {
    IUniswapV2Router02 internal constant router =
        IUniswapV2Router02(UNISWAP_V2_ROUTER_02);

    function setUp() public virtual {
        uint256 forkId = vm.createSelectFork("https://1rpc.io/eth");
        console2.log("Fork Chain ID:", block.chainid);
        vm.selectFork(forkId);
    }
}
