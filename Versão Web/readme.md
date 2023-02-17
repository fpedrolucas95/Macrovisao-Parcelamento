<h1>Calculadora de Parcelamento Online</h1>
Esta aplicação é uma calculadora de parcelamento de uma cirurgia oftalmológica em que o usuário pode escolher a forma de
pagamento e o número de parcelas. A aplicação utiliza duas taxas de juros para cálculo: a taxa da PagSeguro e a taxa da
REDE. As taxas são armazenadas em arquivos de texto que a aplicação lê.<br>

A aplicação foi desenvolvida com HTML, CSS e JavaScript, com base no código da versão Python. A página HTML contém um
formulário que o usuário preenche para realizar o cálculo. O formulário tem os seguintes campos:
<ul>
  <li>Paciente: campo para o usuário inserir o nome do paciente;</li>
  <li>Valor da cirurgia: campo para o usuário inserir o valor da cirurgia;</li>
  <li>Forma de pagamento: campo para o usuário selecionar a forma de pagamento (crédito ou débito);</li>
  <li>Número de parcelas: campo para o usuário inserir o número de parcelas desejado;</li>
  <li>Calcular: botão que o usuário clica para calcular o parcelamento.</li>
</ul>
<p><b>Obs:</b> Atualmente, a opção débito não está funcionando, correção em breve.</p>
A aplicação utiliza duas taxas de juros para cálculo: a taxa da PagSeguro e a taxa da REDE. As taxas são armazenadas em
arquivos de texto que a aplicação lê. O usuário pode escolher qual taxa de juros utilizar clicando no botão "Usar taxas
da REDE".<br><br>
Quando o usuário clica no botão "Calcular", a aplicação utiliza as informações preenchidas no formulário para calcular o
parcelamento. Se o usuário não preencher um dos campos, a aplicação emite uma mensagem de erro. Se o usuário selecionar
"Débito" como forma de pagamento, a aplicação desabilita o campo "Número de parcelas". Se o usuário selecionar "Crédito"
como forma de pagamento e inserir um número de parcelas inválido, a aplicação emite uma mensagem de erro.
<br><br>
A aplicação exibe o resultado do cálculo em um elemento na página HTML.
<br>
<h2>Como utilizar</h2>
Para utilizar a aplicação, siga os seguintes passos:
<ul>
  <li>Abra o arquivo index.html em um navegador;</li>
  <li>Preencha o formulário com as informações solicitadas;</li>
  <li>Clique no botão "Calcular";</li>
  <li>O resultado do cálculo será exibido na tela com algumas outras informações úteis para a negociação.</li>
</ul>

<h2>Como contribuir</h2>
Se você deseja contribuir para esta aplicação, sinta-se livre para fazer um fork do repositório e enviar suas sugestões
por meio de pull requests. As contribuições são bem-vindas.
