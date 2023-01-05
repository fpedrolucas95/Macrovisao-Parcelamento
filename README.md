<h1>Macrovisão Parcelamento</h1>
Este sistema de cálculo de juros foi criado para ser usado exclusivamente na máquina KREDIT do Hospital de Olhos Macrovisão. A última atualização foi realizada em 05/01/2023, sendo a versão 1.10.0. Ele não foi mais utilizado a partir de maio de 2022 e não receberá novas atualizações.

<h2>Novidades e melhorias</h2>
<li>Foi adicionada uma constante "MAX_PARCELAS" para armazenar o número máximo de parcelas permitidas pelo sistema.</li>
<li>Foi adicionada uma array de reais "JUROS" para armazenar as taxas de juros correspondentes a cada número de parcelas.</li>
<li>A seleção da quantidade de parcelas foi simplificada, limitando a opção para o número máximo permitido (definido pela constante "MAX_PARCELAS") e exibindo uma mensagem de erro caso o usuário escolha um número inválido.</li>
  <li>O cálculo do valor total a ser pago, do valor da parcela, da taxa de juros adicional e do valor líquido foi simplificado, utilizando as constantes e a array de reais criadas para armazenar as taxas de juros e o número máximo de parcelas permitidas. Dessa forma, o código fica mais curto e mais fácil de entender.</li>
  <li>O programa exibe agora o número máximo de parcelas permitidas na mensagem de instrução para o usuário, de acordo com o valor da constante "MAX_PARCELAS".</li>
  <li>O programa exibe agora uma mensagem de erro caso o usuário escolha um número de parcelas inválido.</li>
  <li>A versão do programa e a data atual foram atualizadas.</li>

  <li>O código foi padronizado, com a adição de espaços em branco e de comentários para facilitar a leitura e a compreensão do código.</li>
</ul>
<h2>Como utilizar</h2>
<ol>
  <li>No computador:
    <ul>
      <li>Digite o valor do procedimento (somente números, caso tenha centavos, utilize ponto).</li>
      <li>Selecione entre crédito ou débito, caso escolha crédito, digite a quantidade de parcelas.</li>
      <li>Será exibido o valor total a ser cobrado, bem como número de parcelas e taxa de juros.</li>
    </ul>
  </li>
  <li>Na máquina:
    <ul>
      <li>Digite na máquina o valor exibido em tela como resultado da simulação.</li>
      <li>Escolha entre débito ou crédito, para crédito, selecione "Parcelamento Vendedor".</li>
      <li>Caso escolha crédito, selecione o número de parcelas para o qual fez o cálculo.</li>
      <li>Insira o cartão quando solicitado, e peça ao cliente que digite a senha.</li>
    </ul>
  </li>
</ol>
<p>Obs: Em algumas bandeiras, opções de parcelamento acima de 12x estão indisponíveis.</p>
