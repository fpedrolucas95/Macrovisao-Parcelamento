# Importando as bibliotecas necessárias
import tkinter as tk
from tkinter import messagebox

# Corrigindo um erro na execução no VSCode
TK_SILENCE_DEPRECATION=1 # Tem algo a ver com o pacote tkinter, só coloquei porque o VSCode disse pra colocar.

# Função que lê a taxa de juros
def ler_taxa_juros(nome_arquivo):
    with open(nome_arquivo, 'r') as arquivo: # abre o arquivo apenas para leitura
        JUROS = [float(linha.strip()) for linha in arquivo] # considera cada linha um parcelamento
    return JUROS # retorna os juros especificados no arquivo para a aplicação

# Função que executa o calculo do parcelamento
def calcular_parcelamento():
    juros = ler_taxa_juros('juros.txt') # Lê a taxa de juros do arquivo juros.txt
    MAX_PARCELAS = len(juros) # recebe a quantidade de parcelas de acordo com a quantidade de linhas no arquivo

    valor = float(entrada_valor.get())

    if forma_pagamento.get() == 1:
        parcela = int(entrada_parcela.get())
        if parcela > MAX_PARCELAS:
            # Exibe uma mensagem de erro se digitar um número maior que a quantidade de linhas no arquivo
            messagebox.showerror(
                "Erro",
                f"Número de parcelas inválido, por favor, insira um valor entre 1 e {MAX_PARCELAS}x",
            )
        else:
            # Realiza os calculos necessários e define o valor com juros, valor líquido, adicional e valor das parcelas
            total = valor + (valor * juros[parcela - 1])
            prazo = total / parcela
            adicional = valor * juros[parcela - 1]
            livre = total - adicional
            messagebox.showinfo(
                "Resultado",
                f"O valor a ser pago é R$ {total:.2f} no crédito a prazo em {parcela:.0f}x de R$ {prazo:.2f}\nA taxa de juros desta transação é de {juros[parcela-1] * 100:.2f}% (R$ {adicional:.2f}) e o valor líquido será R$ {livre:.2f}",
            )
    # Se escolher débito, realiza essa função abaixo, pois o calculo é diferente do crédito
    elif forma_pagamento.get() == 2:
        total = valor
        messagebox.showinfo(
            "Resultado", f"O valor a ser pago é R$ {total:.2f} no débito."
        )
    else:
        messagebox.showerror(
            "Erro", "Valor incorreto, tente novamente seguindo as instruções acima."
        )



# Criando a janela
janela = tk.Tk()
janela.title("Sistema de Parcelamento automático v2.0")
janela.geometry("400x360")
janela.configure(background='white')

# Widgets da janela
label_titulo = tk.Label(janela, text="Sistema de Calculo de Parcelamento v2.0")

label_titulo2 = tk.Label(janela, text="Digite o valor do procedimento")
label_titulo3 = tk.Label(janela, text="e selecione a forma de pagamento desejada")

label_valor = tk.Label(janela, text="Digite o valor do procedimento: R$")
entrada_valor = tk.Entry(janela)

label_forma_pagamento = tk.Label(
    janela, text="Este pagamento será no crédito ou débito?"
)
forma_pagamento = tk.IntVar()
radio_credito = tk.Radiobutton(
    janela, text="Crédito", variable=forma_pagamento, value=1
)
radio_debito = tk.Radiobutton(janela, text="Débito", variable=forma_pagamento, value=2)

label_parcela = tk.Label(janela, text="Digite a quantidade de parcelas desejadas:")
entrada_parcela = tk.Entry(janela)

botao_calcular = tk.Button(janela, text="Calcular", command=calcular_parcelamento)

# Coloca os widgets criados anteriormente na janela, ainda não sei como fazer, então tá feio
label_titulo.pack(pady=5)
label_titulo2.pack()
label_titulo3.pack()
label_valor.pack(pady=10)
entrada_valor.pack(pady=5)
label_forma_pagamento.pack(pady=10)
radio_credito.pack()
radio_debito.pack()
label_parcela.pack(pady=10)
entrada_parcela.pack(pady=5)
botao_calcular.pack(pady=10)

# Loop principal da janela
janela.mainloop()
