// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

interface IAMVMinterV2 {
    function isMinter(address) view external returns(bool);
    function amountAMVToMint(uint bnbProfit) view external returns(uint);
    function amountAMVToMintForAMVBNB(uint amount, uint duration) view external returns(uint);
    function withdrawalFee(uint amount, uint depositedAt) view external returns(uint);
    function performanceFee(uint profit) view external returns(uint);
    function mintFor(address flip, uint _withdrawalFee, uint _performanceFee, address to, uint depositedAt) external payable;
    function mintForAMVBNB(uint amount, uint duration, address to) external;

    function amvPerProfitBNB() view external returns(uint);
    function WITHDRAWAL_FEE_FREE_PERIOD() view external returns(uint);
    function WITHDRAWAL_FEE() view external returns(uint);

    function setMinter(address minter, bool canMint) external;

    // V2 functions
    function mint(uint amount) external;
    function safeAMVTransfer(address to, uint256 amount) external;
    function mintGov(uint amount) external;
}