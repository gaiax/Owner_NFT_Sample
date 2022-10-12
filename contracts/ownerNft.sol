// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract ownerNft is ERC721, Ownable {

	using Counters for Counters.Counter;
	Counters.Counter private _tokenIds;

	constructor() ERC721("ownerNft", "ONT") {
		console.log("test");
	}

	function safeMint(address _to) public {
		_safeMint(_to, _tokenIds.current());
		console.log("mint");
		_tokenIds.increment();
	}
}
