# Udacity Blockchain Capstone

The tokens are minted via using ZkSNARKs and the minted tokens are put on sale on OpenSea. 

# Requirements

Truffle
```
truffle -v
Truffle v5.1.26 - a development framework for Ethereum
```
Ganache
```
Ganache CLI v6.9.1 (ganache-core: 2.10.2)
```
Solc compiler version
```
solc-compiler v^0.5.6
```

# Getting Started

1. Clone or unzip this repository.

2. Install dependencies

```
npm install
```

3. In a another terminal start ganache cli inside eth-contracts/
```
ganache-cli
```

3. Inside eth-contracts/ compile the contracts
```
 truffle compile  
```

4. Run truffle tests
```
truffle test ./test/TestERC721Mintable.js 
truffle test ./test/TestSquareVerifier.js 
truffle test ./test/TestSolnSquareVerifier.js
```

![Testing](img/Screen-Shot-2020-05-17-at-11.11.15-AM.png)

# Deployed Contracts

```
Starting migrations...
======================
> Network name:    'rinkeby'
> Network id:      4
> Block gas limit: 10000000 (0x989680)


1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0xe7fa40e1f183b1a7ebb8968ae120f08c8500c470c4d32c0808b583a55f60d92f
   > Blocks: 1            Seconds: 16
   > contract address:    0x153cDaE9ec580f850AbE3D8fb040293D05281864
   > block number:        6504939
   > block timestamp:     1589729525
   > account:             0x860aFa5Ca9282fF145846DF9ED68C0fbda3ACa4A
   > balance:             7.306977196000000001
   > gas used:            225237 (0x36fd5)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00225237 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00225237 ETH


2_deploy_contracts.js
=====================

   Deploying 'NEELERC721Token'
   ---------------------------
   > transaction hash:    0x098657672693418e396557189c37ed71359088141208bb0564721c9941e079f9
   > Blocks: 0            Seconds: 12
   > contract address:    0x0446171B397b99C3140fc883be849CDaa9b27DB2
   > block number:        6504941
   > block timestamp:     1589729555
   > account:             0x860aFa5Ca9282fF145846DF9ED68C0fbda3ACa4A
   > balance:             7.277659426000000001
   > gas used:            2889414 (0x2c16c6)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.02889414 ETH


   Replacing 'Verifier'
   --------------------
   > transaction hash:    0x7be3965125fc30da04757d23f596268e2bedd84a436dfe049712740fe6930555
   > Blocks: 1            Seconds: 12
   > contract address:    0xa074932d633CDf6bAeaaE5c7443d42221680Ecfb
   > block number:        6504942
   > block timestamp:     1589729570
   > account:             0x860aFa5Ca9282fF145846DF9ED68C0fbda3ACa4A
   > balance:             7.267734996000000001
   > gas used:            992443 (0xf24bb)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00992443 ETH


   Replacing 'SolnSquareVerifier'
   ------------------------------
   > transaction hash:    0x1abfe09a4e3670605880776fa6d2046b172b6cb100e3bf17b84d46113223124d
   > Blocks: 0            Seconds: 12
   > contract address:    0x44B57dBf20fD7AA55761032B03688e376Faa0c96
   > block number:        6504943
   > block timestamp:     1589729585
   > account:             0x860aFa5Ca9282fF145846DF9ED68C0fbda3ACa4A
   > balance:             7.234805166000000001
   > gas used:            3292983 (0x323f37)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.03292983 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:           0.0717484 ETH


Summary
=======
> Total deployments:   4
> Final cost:          0.07400077 ETH
```

# Minted tokens. 

https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/11. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/2. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/12. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/3. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/4. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/5. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/6. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/7. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/8. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/9. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/10. 

# Sold Tokens

https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/6. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/7. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/8. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/9. 
https://rinkeby.opensea.io/assets/0x44b57dbf20fd7aa55761032b03688e376faa0c96/10.


# Project Resources

* [Remix - Solidity IDE](https://remix.ethereum.org/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Truffle Framework](https://truffleframework.com/)
* [Ganache - One Click Blockchain](https://truffleframework.com/ganache)
* [Open Zeppelin ](https://openzeppelin.org/)
* [Interactive zero knowledge 3-colorability demonstration](http://web.mit.edu/~ezyang/Public/graph/svg.html)
* [Docker](https://docs.docker.com/install/)
* [ZoKrates](https://github.com/Zokrates/ZoKrates)
