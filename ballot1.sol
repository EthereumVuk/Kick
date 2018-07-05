pragma solidity ^0.4.24;

contract CampaignFactory {
    address[] public deployedCampaigns;

    function createCampaign(uint minimum) public {
        address newCampaign = new Campaign(minimum, msg.sender); // constructor argument
        deployedCampaign.push(newCampaign);
    }

    function getDeployedCampaigns() public view returns (address[]) { // public means that anyone can call this function
        return deployedCampaigns;                                     // view means that no data can be modified
    }                                                                 // return value of type address array
}

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
    uint public approversCount;

    // modifier
    modifier restricted() {
        require(msg.sender == manager);
        _; //place where the function will be pasted
    }

    // constructor function
    function Campaign(uint minimum, address creator) public {
        manager = creator;
        minimumContribution = minimum;
    }

    function contribute() public payable {
        require(msg.value > minimumContribution);

        approvers[msg.sender] = true;
        approversCount++;
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

    function approveRequest(uint index) public {
        Request storage request = requests[index];

        require(approvers[msg.sender]);
        require(!request.approvals[msg.sender]);

        request.approvals[msg.sender] = true;
        request.approvalCount++;
    }

    function finalizeRequest(uint index) public restricted {
        // capital R specifies that we are creating a variable that is going to refer to the Request struct
        Request storage request = requests[index];
        
        require(request.approvalCount > (approversCount / 2)); // number of approvals vs number of people that contributed to the campaign
        require(!request.complete);

        request.recipient.transfer(request.value);
        request.complete = true;
    }
}
