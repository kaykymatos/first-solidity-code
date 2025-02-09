// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract HelloWorld {
    uint meuNumero = 0;
    constructor() {
        meuNumero = 0; // Inicializa o número para evitar possíveis problemas
    }
    function setInt(uint numero) public {
        meuNumero = numero;
    }
}