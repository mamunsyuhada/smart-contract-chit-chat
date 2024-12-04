// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IChitChat {

    struct Message {
        address sender; // Who sent the message
        string content; // Message content
        uint256 timestamp; // Time when the message was sent
        uint256 id;
    }

    function sendMessage(address recipient, string memory content) external;
    function receiveMessage(address sender, string memory content) external;
    function getMessages(address from) external view returns (Message[] memory);
}
