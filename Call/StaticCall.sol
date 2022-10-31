// STATIC CALL
// This allows contracts to make calls that are clearly non-state-changing,
// Example: Accessing struct data from an external contract generated an error that only staticCall could fix.
// https://eips.ethereum.org/EIPS/eip-214

 function parseEditionFromTokenId(address collectionAddress, uint256 tokenId)
        internal
        view
        returns (uint256 editionId, uint256 tokenNumber)
    {
        (, bytes memory result) = collectionAddress.staticcall(
            abi.encodeWithSignature("parseEditionFromTokenId(uint256)", tokenId)
        );

        (editionId, tokenNumber) = abi.decode(result, (uint256, uint256));
    }
