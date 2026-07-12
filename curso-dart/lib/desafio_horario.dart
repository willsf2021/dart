/*
Desafio horário: escreva uma função String horario(int totalSegundos) que converte segundos em "HH:MM:SS" (ex: 3671 → "01:01:11"). Restrições: use ~/ e % (nada de laços ou divisão com /), e use padLeft para os zeros. Critério de pronto: horario(3671), horario(59) e horario(86399) corretos.
*/

String horario(int totalSegundos) {
  var horas = totalSegundos ~/ 3600;
  var restoHoras = totalSegundos % 3600;
  var minutos = restoHoras ~/ 60;
  var restoMinutos = restoHoras % 60;
  var segundos = restoMinutos;

  String horarioFinal =
      "${horas.toString().padLeft(2, '0')}:${minutos.toString().padLeft(2, '0')}:${segundos.toString().padLeft(2, '0')}";

  return horarioFinal;
}
