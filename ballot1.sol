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
    Request[] public requests;
    address public manager;
    uint public minimumContribution;
    address[] public approvers;

    // modifier
    modifier restricted() {
        require(msg.sender == manager);
        _; //place where the function will be pasted
    }

    // constructor function
    function Campaign(uint minimum) public {
        manager = msg.sender;
        minimumContribution = minimum;
    }

    function contribute() public payable {
        require(msg.value > minimumContribution);

        approvers.push(msg.sender);
    }

    function createRequest(string description, uint value, address recipient) public restricted {
        Request newRequest = Request({
            description: description, 
            value: value,
            recipient: recipient,
            complete: false
        });

        request.push(newRequest);
    }
}
