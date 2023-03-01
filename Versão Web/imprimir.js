function imprimir() {
    const divResultado = document.querySelector("#resultado");
    const divNome = document.querySelector("#nome");
    const divCirurgia = document.querySelector("#cirurgia");
    const divValor = document.querySelector("#valor");
    const divParcelas = document.querySelector("#parcelas");

    // Verifica se a div está vazia
    if (!divResultado.textContent) {
        console.error("A div resultado está vazia");
        return;
    }

    // Cria uma janela temporária para imprimir
    const janelaTemporaria = window.open("", "", "width=800,height=600");
    janelaTemporaria.document.write("<html><head><title>Proposta Cirúrgica</title>");
    janelaTemporaria.document.write("<style>@page { size: A5; margin-top: 2.5cm; margin-bottom: 4cm; margin-left: 0.5cm; margin-right: 0.5cm; }</style></head>");
    janelaTemporaria.document.write("<body>");
    janelaTemporaria.document.write("<p style='font-size: 30px; text-align: center; font-weight: bold; font-family:\"Segoe UI\", Tahoma, Geneva, Verdana, sans-serif;'>Proposta Cirúrgica</p>");
    janelaTemporaria.document.write("<br>");
    janelaTemporaria.document.write("<p style='font-size: 18px; font-weight: bold; font-family:\"Segoe UI\", Tahoma, Geneva, Verdana, sans-serif;'>Nome: " + divNome.value + "</p>");
    janelaTemporaria.document.write("<p style='font-size: 18px; font-weight: bold; font-family:\"Segoe UI\", Tahoma, Geneva, Verdana, sans-serif;'>Procedimento Indicado: " + divCirurgia.value + "</p>");
    janelaTemporaria.document.write("<p style='font-size: 18px; font-weight: bold; font-family:\"Segoe UI\", Tahoma, Geneva, Verdana, sans-serif;'>Investimento:</p>");
    janelaTemporaria.document.write("<p style='font-size: 18px; font-family:\"Segoe UI\", Tahoma, Geneva, Verdana, sans-serif;'>" + document.getElementById('resultado').getElementsByTagName('p')[0].innerHTML + "</p>");
    janelaTemporaria.document.write("<p style='font-size: 18px; font-family:\"Segoe UI\", Tahoma, Geneva, Verdana, sans-serif;'>Ou em R$ " + divValor.value + " para pagamento à vista, espécie, transferência bancária ou PIX.</p>");
    janelaTemporaria.document.write("<p style='font-size: 18px; font-family:\"Segoe UI\", Tahoma, Geneva, Verdana, sans-serif;'>*proposta válida por 30 dias.</p>");
    janelaTemporaria.document.write("<p style='font-size: 18px; font-family:\"Segoe UI\", Tahoma, Geneva, Verdana, sans-serif; position: fixed; bottom: 1cm; right: 0.5cm;'>Brasília, " + new Date().getDate() + " de " + mesPorExtenso(new Date().getMonth() + 1) + " de " + new Date().getFullYear() + "</p>");
    janelaTemporaria.document.write("</body></html>");
    janelaTemporaria.print();
    janelaTemporaria.close();
}

/*
  Função mesPorExtenso:
  Recebe o número de um mês e retorna o nome do mês por extenso em português
*/
function mesPorExtenso(numeroMes) {
    const nomesMeses = ["janeiro", "fevereiro", "março", "abril", "maio", "junho", "julho", "agosto", "setembro", "outubro", "novembro", "dezembro"];
    return nomesMeses[numeroMes - 1];
}
