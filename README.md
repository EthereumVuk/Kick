# Kickstart
* [Kickstarter Crowdfunding Essential Training](https://www.linkedin.com/learning/kickstarter-crowdfunding-essential-training)

## CLI
* npm init - generate package.json
* npm install --save ganache-cli mocha solc fs-extra web3@1.0.0-beta.26 

## Infura
* npm install --save truffle-hdwallet-provider

https://rinkeby.infura.io/3kA8ESeQXjRLadxqbhvB

## Truffle
* npm install truffle-hdwallet-provider

## Campaign Contract
### Variables
**Variables** | - | - 
--- | --- | ---
**manager** | `address` | address of the person who is managing the campaign
**minimumContribution** | `uint` | Min donation required to be considered a contributor or `approver`
**approvers** | `address[]` | List of addresses for every person who has donated money
**requests** | `Request[]` | List of requests that the manager has created.

### Functions
