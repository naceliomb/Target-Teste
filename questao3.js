/*
3) Dado um vetor que guarda o valor de faturamento diário de uma distribuidora de todos os dias de um ano, faça um programa, na linguagem que desejar, que calcule e retorne:

- O menor valor de faturamento ocorrido em um dia do ano;
- O maior valor de faturamento ocorrido em um dia do ano;
- Número de dias no ano em que o valor de faturamento diário foi superior à média anual.

a) Considerar o vetor já carregado com as informações de valor de faturamento.

b) Podem existir dias sem faturamento, como nos finais de semana e feriados. Estes dias devem ser ignorados no cálculo da média.

c) Utilize o algoritmo mais veloz que puder definir.
*/ 


const faturamentoDia = [0, 100, 200, 0, 300, 50, 0, 400, 0, 0, 250, 150, 0, 500];

const diasCmFaturamento = faturamentoDia.filter(x => x>0);

const menorFat = Math.min(...diasCmFaturamento);
const maiorFat = Math.max(...diasCmFaturamento);

const somaFat = diasCmFaturamento.reduce((total, x) => total + x, 0);
const mediaFat = somaFat/diasCmFaturamento.length;

const diasAcima = diasCmFaturamento.filter(x => x > mediaFat).length;

console.log(`Menor faturamento: ${menorFat}`);
console.log(`Maior faturamento: ${maiorFat}`);
console.log(`Número de dias com faturamento acima da média: ${diasAcima}`);