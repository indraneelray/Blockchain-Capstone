// migrating the appropriate contracts

var Verifier = artifacts.require("./Verifier.sol");
var SolnSquareVerifier = artifacts.require("./SolnSquareVerifier.sol");
const NEELERC721Token = artifacts.require("NEELERC721Token");

module.exports = function(deployer) {
  deployer.deploy(NEELERC721Token, {gas:6500000});
  deployer.deploy(Verifier) .then(() => {
    return deployer.deploy(SolnSquareVerifier,Verifier.address);
  })
};