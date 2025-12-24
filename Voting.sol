pragma solidity 0.8.33;
// SPDX-License-Identifier: MIT


contract Voting {
    struct Candidate {
    string name;
    uint votes;
               }

    Candidate[] public candidates;

    constructor() {
    candidates.push(Candidate("Tushar", 0));
    candidates.push(Candidate("Sankalp", 0));
    candidates.push(Candidate("Vivek", 0));
                }

    mapping(address => bool) public hasVoted;

    event Voted(address voter, uint candidateId);

    function vote(uint candidateId) public {
        require(!hasVoted[msg.sender], "Already voted");
        require(candidateId < candidates.length, "Invalid candidate");

        candidates[candidateId].votes += 1;
        hasVoted[msg.sender] = true;
        emit Voted(msg.sender, candidateId);
    }

     function getAllCandidates() public view returns (Candidate[] memory) {
        return candidates;
    }

}