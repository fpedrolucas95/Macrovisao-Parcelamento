program Parcelamento;
// { Versão : 1.05c}
// { Data atual  : 31/03/2021}

uses
  Crt;

var
  valor, parcela, total, prazo, adicional, livre: real;
  forma, novo: integer;

begin
  repeat
    writeln('----------------------------- Hospital de Olhos Macrovisão -----------------------------');
    writeln('');
    writeln('                  Sistema automático de calculo de juros, versão 1.05c');
    writeln('                         Para uso exclusivo na máquina KREDIT');
    writeln('');
    writeln('Como usar:');
    writeln('Digite o valor do procedimento (somente números)');
    writeln('Selecione crédito ou débito');
    writeln('Caso escolha crédito, digite a quantidade de parcelas');
    writeln('Faça a cobrança na máquina do valor exibido em tela');
    writeln('');
    Write('Digite o valor do procedimento: R$ ');
    readln(valor);
    Write('Esse pagamento será no crédito ou débito? (1-cred, 2-deb): ');
    readln(forma);
    if (forma = 1) then
    begin
      Write('Digite a quantidade de parcelas (1-18): ');
      readln(parcela);
      if (parcela = 1) then
      begin
        total := valor + (valor * 0.0297);
        prazo := total / parcela;
        adicional := valor * 0.0297;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 2.97% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 2) then
      begin
        total := valor + (valor * 0.0360);
        prazo := total / parcela;
        adicional := valor * 0.0360;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 3.60% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 3) then
      begin
        total := valor + (valor * 0.0394);
        prazo := total / parcela;
        adicional := valor * 0.0394;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 3.94% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 4) then
      begin
        total := valor + (valor * 0.0427);
        prazo := total / parcela;
        adicional := valor * 0.0427;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 4.27% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 5) then
      begin
        total := valor + (valor * 0.0460);
        prazo := total / parcela;
        adicional := valor * 0.0460;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 4.60% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 6) then
      begin
        total := valor + (valor * 0.0493);
        prazo := total / parcela;
        adicional := valor * 0.0493;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 4.93% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 7) then
      begin
        total := valor + (valor * 0.0584);
        prazo := total / parcela;
        adicional := valor * 0.0584;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 5.84% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 8) then
      begin
        total := valor + (valor * 0.0617);
        prazo := total / parcela;
        adicional := valor * 0.0617;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 6.17% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 9) then
      begin
        total := valor + (valor * 0.0649);
        prazo := total / parcela;
        adicional := valor * 0.0649;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 6.49% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 10) then
      begin
        total := valor + (valor * 0.0682);
        prazo := total / parcela;
        adicional := valor * 0.0682;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 6.82% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 11) then
      begin
        total := valor + (valor * 0.0714);
        prazo := total / parcela;
        adicional := valor * 0.0714;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 7.14% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 12) then
      begin
        total := valor + (valor * 0.0745);
        prazo := total / parcela;
        adicional := valor * 0.0745;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 7.45% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 13) then
      begin
        total := valor + (valor * 0.0896);
        prazo := total / parcela;
        adicional := valor * 0.0896;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 8.96% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 14) then
      begin
        total := valor + (valor * 0.0925);
        prazo := total / parcela;
        adicional := valor * 0.0925;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 9.25% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 15) then
      begin
        total := valor + (valor * 0.0964);
        prazo := total / parcela;
        adicional := valor * 0.0964;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 9.64% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 16) then
      begin
        total := valor + (valor * 0.1000);
        prazo := total / parcela;
        adicional := valor * 0.1000;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 10% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 17) then
      begin
        total := valor + (valor * 0.1050);
        prazo := total / parcela;
        adicional := valor * 0.1050;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 10.50% (R$ ');
        Write(adicional: 4: 2);
        Write(') e o valor líquido será R$ ');
        Write(livre: 4: 2);
        writeln('');
      end;
      if (parcela = 18) then
      begin
        total := valor + (valor * 0.1120);
        prazo := total / parcela;
        adicional := valor * 0.1120;
        livre := total - adicional;
        Write('O valor a ser pago é R$ ');
        Write(total: 4: 2);
        Write(' no crédito a prazo em ');
        Write(parcela: 2: 0);
        Write('x de R$ ');
        writeln(prazo: 4: 2);
        Write('A taxa de juros desta transação é de 11.20% (R$ ');
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
