/*
Desafio 3
Escreva uma função Set<String> emailsDuplicados(List<String> emails) que recebe uma lista de e-mails e retorna o conjunto dos que aparecem mais de uma vez (case-insensitive: "A@x.com" e "a@x.com" contam como duplicata; retorne em minúsculas).
Restrição idiomática: proibido usar Map ou contador manual — resolva só com operações de Set (dica: dois sets e o que acontece quando add falha... mas tente antes de ler dicas demais).
Critério de pronto: emailsDuplicados(["a@x.com", "b@x.com", "A@x.com", "c@x.com", "b@x.com"]) → {a@x.com, b@x.com}.

*/


Set<String> emailsDuplicados(List<String> emails) {

  var setDeduplicados = <String>{};
  setDeduplicados.add("a@x.com");

  return setDeduplicados;
}