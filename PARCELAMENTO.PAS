program Parcelamento;
// { Versão : 1.06.2}
// { Data atual  : 20/10/2021}

uses
  Crt;

var
  valor, parcela, total, prazo, adicional, livre: real;
  forma, novo: integer;

{$R *.res}

begin
  repeat
    writeln('---------------------------------------- Ana Lobbo Estética ---------------------------------------');
    writeln('');
    writeln('                       Sistema automático de calculo de juros, versão 1.06.2');
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
    if (forma >= 3) then
    begin
      Writeln('Valor incorreto, tente novamente seguindo as instruções acima.');
    end;
    if (forma = 1) then
    begin
      Write('Digite a quantidade de parcelas (1-18): ');
      readln(parcela);
      if (parcela >= 19) then
      begin
        Writeln('Número de parcelas inválido, por favor, insira um valor entre 1 e 18x');
      end;
      if (parcela = 1) then
      begin
        total := valor + (valor * 0.0260);
        prazo := total / parcela;
        adicional := valor * 0.0260;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 2.60% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 2) then
      begin
        total := valor + (valor * 0.0425);
        prazo := total / parcela;
        adicional := valor * 0.0425;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 4.25% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 3) then
      begin
        total := valor + (valor * 0.0480);
        prazo := total / parcela;
        adicional := valor * 0.0480;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 4.80% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 4) then
      begin
        total := valor + (valor * 0.0565);
        prazo := total / parcela;
        adicional := valor * 0.0565;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 5.65% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 5) then
      begin
        total := valor + (valor * 0.0515);
        prazo := total / parcela;
        adicional := valor * 0.0515;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 5.15% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 6) then
      begin
        total := valor + (valor * 0.0660);
        prazo := total / parcela;
        adicional := valor * 0.0660;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 6.60% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 7) then
      begin
        total := valor + (valor * 0.0640);
        prazo := total / parcela;
        adicional := valor * 0.0640;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 6.40% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 8) then
      begin
        total := valor + (valor * 0.0699);
        prazo := total / parcela;
        adicional := valor * 0.0699;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 6.99% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 9) then
      begin
        total := valor + (valor * 0.0765);
        prazo := total / parcela;
        adicional := valor * 0.0765;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 7.65% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 10) then
      begin
        total := valor + (valor * 0.0811);
        prazo := total / parcela;
        adicional := valor * 0.0811;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 8.11% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 11) then
      begin
        total := valor + (valor * 0.0869);
        prazo := total / parcela;
        adicional := valor * 0.0869;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 8.69% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 12) then
      begin
        total := valor + (valor * 0.0933);
        prazo := total / parcela;
        adicional := valor * 0.0933;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 9.33% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 13) then
      begin
        total := valor + (valor * 0.1090);
        prazo := total / parcela;
        adicional := valor * 0.1090;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 10.90% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 14) then
      begin
        total := valor + (valor * 0.1145);
        prazo := total / parcela;
        adicional := valor * 0.1145;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 11.45% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 15) then
      begin
        total := valor + (valor * 0.1210);
        prazo := total / parcela;
        adicional := valor * 0.1210;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 12.10% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 16) then
      begin
        total := valor + (valor * 0.1092);
        prazo := total / parcela;
        adicional := valor * 0.1092;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 10.92% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 17) then
      begin
        total := valor + (valor * 0.1348);
        prazo := total / parcela;
        adicional := valor * 0.1348;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 13.48% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 18) then
      begin
        total := valor + (valor * 0.1415);
        prazo := total / parcela;
        adicional := valor * 0.1415;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 14.15% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
    end;
    if (forma = 2) then
    begin
      total := valor + (valor * 0.0140);
      adicional := valor * 0.0140;
      livre := total - adicional;
      Write('O valor a ser pago é R$');
      Write(total: 4: 2);
      writeln(' no débito a vista.');
      Write('A taxa de juros desta transação é de 1.40% (R$ ');
      Write(adicional: 4: 2);
      Write(') e o valor líquido será R$ ');
      Write(livre: 4: 2);
      writeln('');
    end;
    writeln('');
    Write('Deseja fazer um novo calculo? 1-SIM, 2-NÃO: ');
    readln(novo);
    ClrScr;
  until (novo = 2);
end.
