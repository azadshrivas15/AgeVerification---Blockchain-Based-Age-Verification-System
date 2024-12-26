// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AgeVerification {

    // Mapping to store the birthdate hashes of users
    mapping(address => bytes32) private birthdateHashes;

    // The required age (in years) to pass the verification
    uint256 public requiredAge;

    // Event to notify that a user's age verification has been completed
    event BirthdateHashStored(address indexed user, bytes32 birthdateHash);
    event AgeVerified(address indexed user, bool isOverAge);

    // Constructor to set the required age for verification
    constructor(uint256 _requiredAge) {
        requiredAge = _requiredAge; // e.g., 18 for legal age
    }

    // Function 1: Store the hash of the user's birthdate
    function storeBirthdateHash(bytes32 _birthdateHash) external {
        birthdateHashes[msg.sender] = _birthdateHash;
        emit BirthdateHashStored(msg.sender, _birthdateHash);
    }

    // Function 2: Verify if the user is over the required age
    function verifyAge() external view returns (bool) {
        bytes32 storedHash = birthdateHashes[msg.sender];
        require(storedHash != bytes32(0), "No birthdate hash stored for this user");

        // Extract the birthdate from the hash and calculate age (for simplicity, assuming `birthdate` is stored as a timestamp)
        uint256 birthTimestamp = uint256(storedHash);  // For simplicity, we assume the birthdate is stored as a timestamp.
        uint256 currentTimestamp = block.timestamp;  // Current timestamp (block's timestamp)
        
        // Calculate age in years
        uint256 ageInSeconds = currentTimestamp - birthTimestamp;
        uint256 ageInYears = ageInSeconds / 365 / 24 / 60 / 60;  // Convert seconds to years

        bool isOverAge = ageInYears >= requiredAge;
        // emit AgeVerified(msg.sender, isOverAge);
        return isOverAge;
    }

    // Optional: Function to get the stored birthdate hash (for debugging purposes)
    function getStoredBirthdateHash() external view returns (bytes32) {
        return birthdateHashes[msg.sender];
    }
}
