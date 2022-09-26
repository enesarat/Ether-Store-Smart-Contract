// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Enum {
    enum Status {
        Node,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Canceled
    }

    struct Order {
        address buyer;
        Status status;
    }

    Status public status;
    Order[] public orderList;

    function Get() view external returns (Status) {
        return status;
    }

    function Set(Status _status) external {
        status = _status;
    }

    function Ship() external {
        status = Status.Shipped;
    }

    function Reset() external {
        delete status;
    }
}