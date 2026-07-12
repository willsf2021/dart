# Diff real — pontos a revisar
 
Regras: cada rodada adiciona uma seção. Item acertado em 2 revisões seguidas → marcar [OK data] e depois apagar. Manter o arquivo pequeno.
 
## Listas / null safety (12/07/2026) — placar 3/6 + desafio aprovado
 
Errados (prioridade de revisão):
- Cascade `..` retorna o PRÓPRIO objeto — nunca cria cópia. `var b = a..add(3)` → `a` e `b` são a mesma lista.
- `remove(valor)` retorna `bool` (true se removeu, false se não existia) — em Python retorna None e lança erro.
- `?.` (null-aware): se o alvo é null, a expressão vira null em vez de erro. `d?.length` com `d` null imprime null, não quebra.
- `??` (if-null): "se a esquerda for null, usa a direita". `d.first ?? -1`.
 
Acertados (confirmar 1x na revisão e riscar):
- Collection-if/for combinados e aninhados.
- `List<int>` não aceita null em compile-time; precisa `List<int?>`.
- `add` adiciona 1 elemento (mesmo que seja uma lista inteira); `addAll` espalha.
 
Lição de método (não de Dart):
- Testar PRIMEIRO o caso de borda que motivou o requisito (função tratava `null`, mas nenhum teste passava `null`).
 
Conceito bônus visto no desafio:
- Type promotion: dentro de `if (x != null)`, o Dart trata `x` como não-nulável.
 
## Números e operadores — 2026-07-12 — placar: 1,5/6 + desafio aprovado

### Errados
- `/` entre dois int SEMPRE retorna double em Dart (igual Python 3, ≠ da intuição de "divisão exata dá int")
- `ceil`/`floor` com negativos: ceil vai em direção a +∞ (`(-3.7).ceil() == -3`), floor a −∞ (`-4`); `truncate`/`toInt` cortam em direção a zero
- `round()` no .5 negativo: Dart arredonda PARA LONGE do zero (`(-2.5).round() == -3`); Python usa banker's rounding (`round(2.5) == 2`) — Dart ≠ Python aqui
- `~/` com negativos trunca em direção a zero (`-17 ~/ 5 == -3`), ≠ Python `//` que faz floor (`-4`)
- `%` em Dart nunca retorna negativo (`-17 % 5 == 3`, igual Python, ≠ JS que dá `-2`); estilo JS = `.remainder()`
- `i++ + ++i` com i=5 dá 12: o `++i` incrementa sobre o valor JÁ incrementado pelo `i++`
- Cascade `..` chama o método mas descarta o retorno e devolve o objeto original — não serve para conversão (usado por acidente no desafio)

### Acertados (a confirmar em revisão)
- Sem conversão implícita int→double de variável (mas literal `double d = 10;` compila)
- `round()` no .5 positivo arredonda para cima
- Mecânica básica de `~/`, `%`, `padLeft` (desafio aprovado)

### Lições de método
- Sempre testar operadores aritméticos com NEGATIVOS antes de assumir comportamento — foi a fonte de quase todos os erros da rodada