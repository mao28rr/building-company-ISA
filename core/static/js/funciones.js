'use strict';

function salario(){
    const salario = document.getElementById('id_telefono').value;
    console.log(salario);
    let dia = salario / 300 ;
    console.log(dia)
    document.getElementById('salario_dia').innerHTML = dia;
}