pragma solidity >=0.5.6 <0.6.5;

// define a contract call to the zokrates generated solidity contract <Verifier> or <renamedVerifier>
import "./ERC721Mintable.sol";
import "./Verifier.sol";

// define another contract named SolnSquareVerifier that inherits from your ERC721Mintable class
contract SolnSquareVerifier is NEELERC721Token {
    // verifier contract - define variable
	Verifier verifierContract;

	// define a solutions struct that can hold an index & an address
	struct Solution {
		uint tokenId;
		address owner;
	}

    // define an array of the above struct
	Solution[] private solutionsList;

    // define a mapping to store unique solutions submitted
	mapping(bytes32 => Solution) solutionsDict;

    // create an event to emit when a solution is added
	event SolutionAdded(address owner, uint tokenId);

    // create a function to add the solutions to the array and emit the event
	function addSolution(bytes32 solnHash, uint tokenId, address user) internal {
		// create and add a new solution
		Solution memory newSolution = Solution({tokenId: tokenId, owner: user});
		solutionsDict[solnHash] = newSolution;
		// emit the event
		emit SolutionAdded(user, tokenId);
	}

    constructor(address verifierAddress) public {
		verifierContract = Verifier(verifierAddress);
	}

    // TODO Create a function to mint new NFT only after the solution has been verified
    //  - make sure the solution is unique (has not been used before)
    //  - make sure you handle metadata as well as tokenSuplly
    function mintAfterVerification(
		address newTokenOwner,
		uint tokenId,
		uint[2] memory a,
        uint[2][2] memory b,
        uint[2] memory c,
        uint[2] memory inputs) public {

		// hash the solution inputs
		bytes32 key = keccak256(abi.encodePacked(a, b, c, inputs));
		// no previous solution available
		require(solutionsDict[key].owner == address(0), "Solution already exists");
		// verify the given solution input
		bool verified = verifierContract.verifyTx(a, b, c, inputs);
		require(verified, "Solution could not be verified");

		// store the solution in the mapping
		addSolution(key, tokenId, newTokenOwner);

		// mint the tokenId
		super.mint(newTokenOwner, tokenId);

	}

}

























