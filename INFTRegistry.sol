// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

struct Token {
    address collectionAddress;
    uint256 tokenId;
}

// Enums
enum NamingCurrency {
    Ether,
    RNM,
    NamingCredits
}

interface INFTRegistry {
   
    function changeName(address nftAddress, uint256 tokenId, string calldata newName, NamingCurrency namingCurrency) external payable;
    function namingPriceEther() external view returns (uint256);
    function namingPriceRNM() external view returns (uint256);
    function tokenByName(string memory name) external view returns (Token memory);
    function tokenName(address collectionAddress, uint256 tokenId) external view returns (string memory);
    function transferName(
        address nftAddressFrom,
        uint256 tokenIdFrom,
        address nftAddressTo,
        uint256 tokenIdTo
    ) external;   


}