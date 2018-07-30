import Web3 from 'web3';

let web3;

if (typeof window !== 'undefined' && typeof window.web3 !== 'undefined') {
  // We are in the browser and metamask is running.
  web3 = new Web3(window.web3.currentProvider);
} else {
    // We are on the server *OR* the user is not running metamask
    const provider = new Web3.providers.HttpProvider(
    'https://rinkeby.infura.io/orDImgKRzwNrVCDrAk5Q'
  );
  
  web3 = new Web3(provider);
}

export default web3;



/**
import Web3 from 'web3';

//web3 is the instance and Web3 is the contructor function
const web3 = new Web3(window.web3.currentProvider);

let web3; //means to reassign the variable

if (typeof window !== 'undefined' && typeof window.web3 !== 'undefined') { // typeof operator to see if a var is defined
    // We are in the browser and metamask is running
    web3 = new Web3(window.web3.currentProvider); // to check if we are using the same version of web3
    // We are on the server OR the user is not running metamask
    const provider = new Web3.providers.HttpProvider(
        'https://rinkeby.infura.io/orDImgKRzwNrVCDrAk5Q'
    );
    web3 = new web3(provider);
} else {
    // We are on the server OR the user is not running metamask
    const provider = new Web3.providers.HttpProvider(
    'https://rinkeby.infura.io/orDImgKRzwNrVCDrAk5Q'
}

export default web3;
*/
