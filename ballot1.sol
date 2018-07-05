pragma solidity ^0.4.24;

contract Campaign {
    //struct
    struct Request {
        string description;
        uint value;
        address recipient;
        bool complete;
        uint approvalCount;
        mapping(address => bool) approvals;
    }

    // variables
    Request[] public requests;
    address public manager;
    uint public minimumContribution;
    mapping(address => bool) public approvers;

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

        approvers[msg.sender] = true;
    }

    function createRequest(string description, uint value, address recipient) public restricted {
        Request newRequest = Request({
            description: description, 
            value: value,
            recipient: recipient,
            complete: false,
            approvalCount: 0
        });

        request.push(newRequest);
    }

    function approveRequest(uint index) {
        Request storage request = requests[index];

        require(approvers[msg.sender]);
        require(!request.approvals[msg.sender]);

        request.approvals[msg.sender] = true;
        request.approvalCount++;
    }

    function finalizeRequest(uint index) public restricted {
        // capital R specifies that we are creating a variable that is going to refer to the Request struct
        Request storage request = requests[index];
        
        require(!request.complete);

        request.complete = true;
    }
}
