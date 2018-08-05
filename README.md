# Kickstart
* [Kickstarter Crowdfunding Essential Training](https://www.linkedin.com/learning/kickstarter-crowdfunding-essential-training)
* [Types](http://solidity.readthedocs.io/en/v0.4.24/types.html)
* [DialogFlow Github](https://github.com/dialogflow)
* [Compile.js](https://github.com/noel22/kickstart8/blob/master/ethereum/compile.js)
* [Kickstart Project Report](https://github.com/rja907/CryptoBill/blob/master/Project%20Report.pdf)
* [Solidity Creating Contracts](https://github.com/rja907/CryptoBill/blob/master/Project%20Report.pdf)
* [HTML Formatter](https://www.freeformatter.com/)
* [Diagrams](https://www.draw.io/)
##
https://github.com/CrowdArt/next-routes
https://stackoverflow.com/questions/36527490/error-using-async-await-in-react-native/36532046#36532046
https://semantic-ui.com/collections/menu.html#menu

## Folder Directory
### kickstart
* ethereum (folder)
  * contracts (folder)
    * Campaign.sol
  * compile.js
  * deploy.js
* node_modules (folder)
* .gitignore
* package-lock.json
* package.json  

## React
* npm install -g create-react-app
## CLI
* npm init - generate package.json
* npm install --save ganache-cli mocha solc fs-extra web3@1.0.0-beta.26 

## Node.js
Here's how I successfully upgraded from v0.8.18 to v0.10.20 without any other requirements like brew etc, (type these commands in terminal):

* sudo npm cache clean -f (force) clear you npm cache
* sudo npm install -g n install "n" (this might take a while)
* sudo n stable upgrade to lastest version
* npm start
* npm list webpack

## Infura
* npm install --save truffle-hdwallet-provider

https://rinkeby.infura.io/3kA8ESeQXjRLadxqbhvB

## Truffle
* npm install --save truffle-hdwallet-provider
### Update:  
* npm uninstall ethereumjs-wallet
* npm uninstall truffle-hdwallet-provider
* npm install --save ethereumjs-wallet@0.6.0
* npm install --save truffle-hdwallet-provider@0.0.3

## Campaign Contract
### Variables
**Variables** | - | - 
--- | --- | ---
**manager** | `address` | address of the person who is managing the campaign
**minimumContribution** | `uint` | Min donation required to be considered a contributor or `approver`
**approvers** | `mapping` | List of addresses for every person who has donated money
**requests** | `Request[]` | List of requests that the manager has created.

### Functions
Functions | - | -
--- | --- | ---
**Campaign** | Constructor function that sets the minimumContribution and the owner
**contribute** | Called when someone wants to donate money to the campaign and become 'approver'
**createRequest** | Called by the manager to create a new `spending request`
**approveRequest** | Called by each contributor to approve a spending request
**finalizeRequest** | After a request has gotten enough approvals, the manager can call this to get money sent to the vendor

### Struct
**Request Struct** | - | - 
--- | --- | ---
**description** | string | Purpose of request.
**amount** | uint | Ether to transfer.
**recipient** | address | Who gets the money.
**complete** | bool | Whether the request is done.
**approvals** | mapping | Track who has voted.
**approvalCount** | uint | Track number of approvals.


## Variables
* [Units and Globally Available Variables](http://solidity.readthedocs.io/en/v0.4.24/units-and-global-variables.html)

## Reference Types
**Name** | Notes | Examples 
--- | --- | ---
**fixed array** | Array that contains a single type of element.  It has an unchanging length. | int[3] --> [1,2,3], bool[2] --> [true, false]
**dynamic array** | Array that contains a single type of element.  Over time it can change in size. | int[] --> [1,2,3], bool[] --> [true, false]
**mapping** | Collection of key value pairs.  Think of Javascript object, Ruby hashes, or Python dictionary.  All keys must be of the same type and all value must be of the same type. | mapping(string => string), mapping(int => bool)
**struct** | Collection of key value pairs that can have different types. | Struct Car{string make; string model; unit value;}

## Install 
npm install --save ganache-cli mocha solc fs-extra web3@1.0.0-beta.26

## Test
* npm run test

## Next.js
### Installation
* npm install --save next@4.1.4 react react-dom

## Run Server
* npm run dev

## Semantic UI React
* npm install --save semantic-ui-react
* npm install --save semantic-ui-css
* [Semantic UI React](https://react.semantic-ui.com/introduction)

## JSX
* [Babel Repl](http://babeljs.io/repl/)

## Youtube API
* npm install --save youtube-api-search
* [Google Developer Console](https://console.developers.google.com/apis/credentials?project=api-project-71293787440)


## Contracts

web3.js - Javascript API for creating Contracts.  It has a method web3.eth.Contract to facilitate contract creation.
Contracts in Solidify are similar to classes in object-oriented programming.
They contain persistent data in state variables and functions that can modify these variables.
Calling a function on a different contract (instance) will perform an EVM function call and thus switch the context such that state variables are inaccessible.

## Router
* [Next Routes](https://github.com/fridays/next-routes)
* npm install --save next-routes
