// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

interface ITeleton {
    function depositar() external payable;
    function retirar() external;
    function owner() external view returns (address);

    //modificadores: public / external / private / default 
    
}

contract TeletonEscolar {

    ITeleton public teleton;

    constructor(address direccionTeleton) {
        teleton = ITeleton(direccionTeleton);
    }

    function donar() public payable {
        teleton.depositar();
    }

    function verOwner() public view returns(address) {
        return teleton.owner();
    }
    
    function cobrar() public {
        teleton.retirar();
    }

}