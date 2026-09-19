pragma solidity ^0.8.0;

contract InfiniteRegeneration325 {
    uint256 public sequence;
    uint256 public constant MAX_SEQUENCE = 325;

    event SequenceAdvanced(uint256 indexed newSequence);

    function advanceSequence() external {
        sequence += 1;

        if (sequence > MAX_SEQUENCE) {
            sequence = 0;
        }

        emit SequenceAdvanced(sequence);
    }
}
