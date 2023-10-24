// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Interfaces {

    uint public count;

    function increment() external {
        count += 1;
    }
}

interface ICounter {
    
    function count() external view returns (uint);

    function increment() external;

}

contract MyContract {
    
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }

    function getCount(address _counter) external view returns(uint) {
        return ICounter(_counter).count();
    }
}

interface UniswapV2Factory {
    function getPairs(address tokenA, address tokenB) external view returns(address pair);
}

interface UniSwapV2Pair {
    function getReserves() external view returns(uint112 reserve0, uint112 reserve1, uint32 blockTimeStamp);
}

