// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IChitChat.sol";

contract ChitChat is IChitChat {


    address public owner;
    uint256 public messageCounter;

    mapping(address => Message[]) public messagesFrom;
    mapping(uint256 => Message) public messageById;


    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function sendMessage(
        address recipient,
        string memory content
    ) public {
        require(bytes(content).length > 0, "Message cannot be empty");

        ChitChat targetContract = ChitChat(recipient);
        targetContract.receiveMessage(msg.sender, content);
    }

    function receiveMessage(
        address sender,
        string memory content
    ) public {
        require(bytes(content).length > 0, "Message cannot be empty");

        Message memory newMessage = Message({
            sender: sender,
            content: content,
            timestamp: block.timestamp,
            id: messageCounter
        });

        messagesFrom[sender].push(newMessage);
        messageById[messageCounter] = newMessage;
        messageCounter++;
    }

    function getMessages(address from) public view returns (Message[] memory) {
        return messagesFrom[from];
    }
}
