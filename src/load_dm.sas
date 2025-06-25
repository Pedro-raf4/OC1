/*
*
* Programa: load_dm.sas
* Autor: Pedro
* Data: 25/06/2025
* Módulo: carga de dados
* Versão: 1.00
*
*/
%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx 
	out=sicoob.vendas replace;
	sheet=vendas;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx 
	out=sicoob.produtos replace;
	sheet=produtos;
run;