// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

library ArrayManipulationLibrary {

    // Sorts an array of integers in ascending order.
    function sort(uint256[] memory array) internal pure returns (uint256[] memory) {
        // Use the bubble sort algorithm to sort the array.
        for (uint256 i = 0; i < array.length - 1; i++) {
            for (uint256 j = 0; j < array.length - i - 1; j++) {
                if (array[j] > array[j + 1]) {
                    uint256 temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }

        return array;
    }

    // Removes duplicate elements from an array of integers.
    function removeDuplicates(uint256[] memory array) internal pure returns (uint256[] memory) {
        // Create a new array to store the unique elements.
        uint256[] memory uniqueArray = new uint256[](array.length);

        // Iterate over the array and add each unique element to the new array.
        uint256 uniqueArrayIndex = 0;
        for (uint256 i = 0; i < array.length; i++) {
            if (i == 0 || array[i] != array[i - 1]) {
                uniqueArray[uniqueArrayIndex] = array[i];
                uniqueArrayIndex++;
            }
        }

        // Resize the new array to match the number of unique elements.
        uint256[] memory resizedUniqueArray = new uint256[](uniqueArrayIndex);
        for (uint256 i = 0; i < uniqueArrayIndex; i++) {
            resizedUniqueArray[i] = uniqueArray[i];
        }

        return resizedUniqueArray;
    }
}
