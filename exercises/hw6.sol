pragma solidity ^0.8.4;

contract HW6 {

    function gotETH() external payable returns (uint256)  {
        uint256 eth = msg.value;

        assembly {
            mstore(0x0, eth)
            return(0x0, 0x20)
        }
    }
}
