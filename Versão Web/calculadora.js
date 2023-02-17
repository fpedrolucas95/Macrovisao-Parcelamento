// Habilitar as parcelas
function habilitar_parcela() {
    let forma_pagamento = parseInt(document.getElementById("forma_pagamento").value);
    if (forma_pagamento === 2) {
        document.getElementById("parcela").disabled = true;
    } else {
        document.getElementById("parcela").disabled = false;
    }
}

let myToggle = document.getElementById("myToggle");
myToggle.addEventListener("change", function () {
    if (this.checked) {
        document.getElementById("nome_empresa").textContent = "Usaremos as taxas da REDE no cálculo.";
    } else {
        document.getElementById("nome_empresa").textContent = "Usaremos as taxas da PagSeguro no cálculo.";
    }
});


// Função que lê a taxa de juros
function ler_taxa_juros(nome_arquivo) {
    let arquivo = new XMLHttpRequest();
    arquivo.open("GET", nome_arquivo, false);
    arquivo.send();
    let linhas = arquivo.responseText.trim().split('\n');
    let juros = linhas.map(linha => parseFloat(linha));
    return juros;
}

// Função que executa o calculo do parcelamento
function calcular_parcelamento() {
    let valor = parseFloat(document.getElementById("valor").value);
    let forma_pagamento = parseInt(document.getElementById("forma_pagamento").value);
    let parcela = parseInt(document.getElementById("parcela").value);

    let jurosSelecionado, jurosOutro;

    if (myToggle.checked) {
        jurosSelecionado = ler_taxa_juros('juros2.txt');
        jurosOutro = ler_taxa_juros('juros1.txt');
    } else {
        jurosSelecionado = ler_taxa_juros('juros1.txt');
        jurosOutro = ler_taxa_juros('juros2.txt');
    }

    let MAX_PARCELAS = jurosSelecionado.length;

    if (isNaN(valor)) {
        document.getElementById("resultado").innerHTML = "Valor inválido, por favor, insira um número válido.";
        return;
    }

    if (forma_pagamento === 1) {
        if (parcela <= 0 || parcela > MAX_PARCELAS) {
            document.getElementById("resultado").innerHTML = "Número de parcelas inválido, por favor, insira um valor entre 1 e " + MAX_PARCELAS + "x";
        } else {
            let totalSelecionado = valor + (valor * jurosSelecionado[parcela - 1]);
            let totalOutro = valor + (valor * jurosOutro[parcela - 1]);
            let prazoSelecionado = totalSelecionado / parcela;
            let prazoOutro = totalOutro / parcela;
            let adicionalSelecionado = valor * jurosSelecionado[parcela - 1];
            let adicionalOutro = valor * jurosOutro[parcela - 1];
            let livreSelecionado = totalSelecionado - adicionalSelecionado;
            let livreOutro = totalOutro - adicionalOutro;
            let jurosPercentSelecionado = jurosSelecionado[parcela - 1] * 100;
            let jurosPercentOutro = jurosOutro[parcela - 1] * 100;
            if (jurosSelecionado[parcela - 1] > jurosOutro[parcela - 1]) {
                let diferenca = totalSelecionado - totalOutro;
                document.getElementById("resultado").innerHTML = `
                    <h2>${document.getElementById("nome").value}</h2>
                    <p>Em <b>${parcela} vezes</b>, sua cirurgia sairá por <b>R$ ${prazoSelecionado.toFixed(2)}</b> mensais, totalizando <b>R$ ${totalSelecionado.toFixed(2)}</b>.</p>                
                    <p>A taxa de juros dessa transação foi de <b>${jurosPercentSelecionado.toFixed(2)}%</b>, acrescentando R$ <b>${adicionalSelecionado.toFixed(2)}</b> ao valor da cirurgia.</p>
                    <p>Na outra máquina, a cirurgia pode ser R$ <b>${diferenca.toFixed(2)}</b> mais barata.</p>
                `;
            } else if (jurosSelecionado[parcela - 1] < jurosOutro[parcela - 1]) {
                let diferenca = totalOutro - totalSelecionado;
                document.getElementById("resultado").innerHTML = `
                    <h2>${document.getElementById("nome").value}</h2>
                    <p>Em <b>${parcela} vezes</b>, sua cirurgia sairá por <b>R$ ${prazoSelecionado.toFixed(2)}</b> mensais, totalizando <b>R$ ${totalSelecionado.toFixed(2)}</b>.</p>                
                    <p>A taxa de juros dessa transação foi de <b>${jurosPercentSelecionado.toFixed(2)}%</b>, acrescentando R$ <b>${adicionalSelecionado.toFixed(2)}</b> ao valor da cirurgia.</p>
                    <p>Na outra máquina, a cirurgia pode ser R$ <b>${diferenca.toFixed(2)}</b> mais cara.</p>
                `;
            } else if (jurosSelecionado[parcela - 1] === jurosOutro[parcela - 1]) {
                document.getElementById("resultado").innerHTML = `
                    <h2>${document.getElementById("nome").value}</h2>
                    <p>Em <b>${parcela} vezes</b>, sua cirurgia sairá por <b>R$ ${prazoSelecionado.toFixed(2)}</b> mensais, totalizando <b>R$ ${totalSelecionado.toFixed(2)}</b>.</p>                
                    <p>A taxa de juros dessa transação foi de <b>${jurosPercentSelecionado.toFixed(2)}%</b>, acrescentando R$ <b>${adicionalSelecionado.toFixed(2)}</b> ao valor da cirurgia.</p>
                `;
            } else if (parcela >= 19 && parcela <= 21) {
                fetch('juros2.txt')
                    .then(response => response.text())
                    .then(data => {
                        const juros = data.split('\n').map(Number);
                        const juros_percent = juros[parcela - 1] * 100;
                        const adicional = valor * juros[parcela - 1];
                        const total = valor + adicional;
                        const prazo = total / parcela;
                        const livre = total - adicional;

                        document.getElementById("resultado").innerHTML = `
                            <h2>${document.getElementById("nome").value}</h2>
                            <p>Em <b>${parcela} vezes</b>, sua cirurgia sairá por <b>R$ ${prazo.toFixed(2)}</b> mensais, totalizando <b>R$ ${total.toFixed(2)}</b>.</p>                
                            <p>A taxa de juros dessa transação foi de <b>${juros_percent.toFixed(2)}%</b>, acrescentando R$ <b>${adicional.toFixed(2)}</b> ao valor da cirurgia.</p>
                            <p>Para a empresa, o recebimento líquido será de R$ <b>${livre.toFixed(2)}</b></p>          
                        `;
                    })
                    .catch(error => console.log(error));
            } else {
                document.getElementById("parcela").disabled = true;
                let total = valor;
                document.getElementById("resultado").innerHTML = "O valor a ser cobrado é: R$ " + total.toFixed(2);
            } 

        }

    }
}