// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundMe {
    
    struct People {
        uint256 id;
        string name;
    }

    People[] public peopleList;

    function addPeople(uint256 _id, string memory _name) public {
        peopleList.push(People(_id, _name));
    }

    function getPeople(uint256 index) public view returns (People memory) {
        return peopleList[index];
    }

    function deleteAtIndex(uint256 index) public {
        if (peopleList.length > index) {
        delete peopleList[index];
        }
    }

    function getCount() public view returns(uint256) {
        return  peopleList.length;
    }


}