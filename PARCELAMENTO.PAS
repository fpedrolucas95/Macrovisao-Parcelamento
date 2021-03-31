program Parcelamento;
uses Crt;
// { Versão : 1.03}
// { Data atual  : 31/03/2021}
Var
valor, parcela, total, prazo: real;
forma, novo: integer;

begin
   repeat
   writeln('--------------------- Hospital de Olhos Macrovisão ---------------------');
   writeln('');
   writeln('          Sistema automático de calculo de juros, versão 1.03          ');
   writeln('                 Para uso exclusivo na máquina KREDIT                  ');
   writeln('');
   writeln('Como usar:');
   writeln('Digite o valor do procedimento (somente números)');
   writeln('Selecione crédito ou débito');
   writeln('Caso escolha crédito, digite a quantidade de parcelas');
   writeln('Faça a cobrança na máquina do valor exibido em tela');
   writeln('');
   write('Digite o valor do procedimento: R$');
   readln(valor);
   write('Esse pagamento será no crédito ou débito? (1-cred, 2-deb): ');
   readln(forma);
   if (forma = 1) then begin
   write('Digite a quantidade de parcelas (1-18): ');
   readln(parcela);
   if (parcela = 1) then begin
   total := valor+(valor*0.0297);
   write('O valor a ser pago é R$');
   write(total:4:2);
   writeln(' no crédito a vista');
   write('A taxa de juros desta transação é de 2.97%');
   end;
   if (parcela = 2) then begin
   total := valor+(valor*0.0360);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:1:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 3.60%');
   end;
   if (parcela = 3) then begin
   total := valor+(valor*0.0394);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:1:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 3.94%');
   end;
   if (parcela = 4) then begin
   total := valor+(valor*0.0427);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:1:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 4.27%');
   end;
   if (parcela = 5) then begin
   total := valor+(valor*0.0460);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:1:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 4.60%');
   end;
   if (parcela = 6) then begin
   total := valor+(valor*0.0493);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:1:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 4.93%');
   end;
   if (parcela = 7) then begin
   total := valor+(valor*0.0584);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:1:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 5.84%');
   end;
   if (parcela = 8) then begin
   total := valor+(valor*0.0617);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:1:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 6.17%');
   end;
   if (parcela = 9) then begin
   total := valor+(valor*0.0649);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:1:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 6.49%');
   end;
   if (parcela = 10) then begin
   total := valor+(valor*0.0682);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:2:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 6.82%');
   end;
   if (parcela = 11) then begin
   total := valor+(valor*0.0714);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:2:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 7.14%');
   end;
   if (parcela = 12) then begin
   total := valor+(valor*0.0745);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:2:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 7.45%');
   end;
   if (parcela = 13) then begin
   total := valor+(valor*0.0896);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:2:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 8.96%');
   end;
   if (parcela = 14) then begin
   total := valor+(valor*0.0925);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:2:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 9.25%');
   end;
   if (parcela = 15) then begin
   total := valor+(valor*0.0964);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:2:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 9.64%');
   end;
   if (parcela = 16) then begin
   total := valor+(valor*0.1000);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:2:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 10%');
   end;
   if (parcela = 17) then begin
   total := valor+(valor*0.1050);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:2:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 10.50%');
   end;
   if (parcela = 18) then begin
   total := valor+(valor*0.1120);
   prazo := total / parcela;
   write('O valor a ser pago é R$');
   write(total:4:2);
   write(' no crédito a prazo em ( ');
   write(parcela:2:0);
   write('x ) de R$');
   writeln(prazo:4:2);
   write('A taxa de juros desta transação é de 11.20%');
   end;
   end;
   if (forma = 2) then begin
   total := valor+(valor*0.0140);
   write('O valor a ser pago é R$');
   write(total:4:2);
   writeln(' no débito a vista.');
   write('A taxa de juros desta transação é de 1.40%');
   end;
   writeln('');
   write('Deseja fazer um novo calculo? 1-SIM, 2-NÃO: ');
   readln(novo);
   ClrScr;
   until (novo=2);
end.
