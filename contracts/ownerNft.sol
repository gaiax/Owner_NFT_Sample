// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "hardhat/console.sol";

contract ownerNft is ERC721 {
	constructor() ERC721("ownerNft", "ONT") {
		console.log("test");
	}

	
}
