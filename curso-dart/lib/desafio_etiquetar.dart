/*
Desafio: escreva List<String> etiquetar(List<int?>? valores) que retorna lista vazia se valores for null; senão transforma cada elemento em "#n", e nulls em "#?". Restrição: só collection-for/if dentro do literal — sem .add, sem loop tradicional. Exemplo: [3, null, 8] → ["#3", "#?", "#8"].
*/


List<String> etiquetar(List<int?>? valores) => [ for(var i in valores ?? []) "#${i ?? '?'}"];

