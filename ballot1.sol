pragma solidity ^0.4.21;

contract Campaign {
    //struct
    struct Request {
        string description;
        uint value;
        address recipient;
        bool complete;
    }

    // variables
    address public manager;
    uint public minimumContribution;
    address[] public approvers;

    // constructor function
    function Campaign(uint minimum) public {
        manager = msg.sender;
        minimumContribution = minimum;
    }

    function contribute() public payable {
        require(msg.value > minimumContribution);

        approvers.push(msg.sender);
    }
}
