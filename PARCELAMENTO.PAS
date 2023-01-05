program Parcelamento;
// { Versão : 1.10.0}
// { Data atual  : 05/01/2023}

uses
  Crt;

const
  MAX_PARCELAS = 18;
  JUROS: array[1..MAX_PARCELAS] of real = (0.0289, 0.0425, 0.0461, 0.0497, 0.0533, 0.0569, 0.0605, 0.0641, 0.0677, 0.0713, 0.0749, 0.0785, 0.0821, 0.0857, 0.0893, 0.0929, 0.0965, 0.1001);

var
  valor, total, prazo, adicional, livre: real;
  forma, novo, parcela: integer;

{$R *.res}

begin
  repeat
    writeln('---------------------------------- Hospital de Olhos Macrovisão ----------------------------------');
    writeln('');
    writeln('                       Sistema automático de calculo de juros, versão 1.10.0');
    writeln('                              Para uso exclusivo na máquina KREDIT');
    writeln('');
    writeln('');
    writeln('Como usar:');
    writeln('');
    writeln('No computador:');
    writeln('Digite o valor do procedimento (somente números, caso tenha centavos, utilize ponto)');
    writeln('Selecione entre crédito ou débito, caso escolha crédito, digite a quantidade de parcelas');
    writeln('Será exibido o valor total a ser cobrado, bem como número de parcelas e taxa de juros');
    writeln('Na máquina:');
    writeln('Digite na máquina o valor exibido em tela como resultado da simulação,');
    writeln('Escolha entre débito ou crédito, para crédito, selecione "Parcelamento Vendedor"');
    writeln('Caso escolha crédito, selecione o número de parcelas para o qual fez o cálculo,');
    writeln('Insira o cartão quando solicitado, e peça ao cliente que digite a senha.');
    writeln('');
    writeln('OBS: Em algumas bandeiras, opções de parcelamento acima de 12x estão indisponíveis.');
    writeln('');
    Write('Digite o valor do procedimento: R$ ');
    readln(valor);
    Write('Esse pagamento será no crédito ou débito? (1-cred, 2-deb): ');
    readln(forma);
if (forma = 1) then
begin
  Write('Digite a quantidade de parcelas (1-', MAX_PARCELAS, '): ');
  readln(parcela);
  if (parcela > MAX_PARCELAS) then
  begin
    Writeln('Número de parcelas inválido, por favor, insira um valor entre 1 e ', MAX_PARCELAS, 'x');
  end
  else
  begin
    total := valor + (valor * JUROS[parcela]);
    prazo := total / parcela;
    adicional := valor * JUROS[parcela];
    livre := total - adicional;
    Write('O valor a ser pago é R$ ');
    Write(total: 4: 2);
    Write(' no crédito a prazo em ');
    Write(parcela: 2: 0);
    Write('x de R$ ');
    writeln(prazo: 4: 2);
    Write('A taxa de juros desta transação é de ', JUROS[parcela] * 100:4:2, '% (R$ ');
    Write(adicional: 4: 2);
    Write(') e o valor líquido será R$ ');
    Write(livre: 4: 2);
    writeln('');
  end;
end
else if (forma = 2) then
begin
  total := valor;
  Write('O valor a ser pago é R$ ');
  Write(total: 4: 2);
  Write(' no débito.');
  writeln('');
end
else
begin
  Writeln('Valor incorreto, tente novamente seguindo as instruções acima.');
end;
