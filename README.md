# Banco de dados de um comércio eletrônico


![banco_dados](https://user-images.githubusercontent.com/75625651/153312794-54ce2bd9-a095-487a-b55e-b4bf0555993d.png)
 
 ## Desenvolvemos as seguintes tarefas:

- [x] Tarefa 1: Inserimos dados nas tabelas. Adicionamos vários dados em todas as tabelas. Criamos vários clientes, com vários endereços. Inserimos muitos produtos em vários departamentos. Criamos pedidos em várias datas com meses diferentes;
- [x] Tarefa 2:Verificamos quantos clientes estão cadastrados na base;
- [x] Tarefa 3:Verficamos o produto mais caro;
- [x] Tarefa 4:Verificamos o produto mais barato;
- [x] Tarefa 5:Mostramos todos os produtos com seus respectivos departamentos;
- [x] Tarefa 6: Mostramos quantos produtos há em cada departamento? Exibimos o nome do departamento e a quantidade de produtos que há em cada um. (pensamos em SUM e GROUP BY)
- [x] Tarefa 7:Mostramos os dados dos pedidos, incluindo nomes dos clientes e nomes dos produtos que foram vendidos;
- [x] Tarefa 8:Mostramos quantos pedidos foram feitos por mês no ano de 2022;
- [x] Tarefa 9:Mostramos quanto foi faturado por mês;
- [x] Tarefa 10:Mostramos o valor total do estoque por departamento.

## O conjunto de instruções SQL que implementam este modelo está a seguir:

CREATE TABLE cliente(

   id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 

   nome VARCHAR(100) NOT NULL, 

   email VARCHAR(70) NOT NULL UNIQUE, 

   senha VARCHAR(20) NOT NULL, 

   cpf VARCHAR(15) NOT NULL UNIQUE

);

CREATE TABLE departamento(

codigo INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 

nome   VARCHAR(50) NOT NULL, 

descricao TEXT

);



CREATE TABLE endereco(

num_seq    INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 

tipo       VARCHAR(5) NOT NULL, 

logradouro VARCHAR(45) NOT NULL, 

numero     INTEGER, 

complemento VARCHAR(20), 

bairro     VARCHAR(30), 

cidade     VARCHAR(50),

    estado     VARCHAR(2), 

cep        VARCHAR(10), 

cliente_id INTEGER NOT NULL,

CONSTRAINT endereco_cliente FOREIGN KEY 

(cliente_id) REFERENCES cliente(id)

);





CREATE TABLE pedido(

numero INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 

status VARCHAR(1) NOT NULL, 

data_pedido DATE, 

valor_bruto DOUBLE, 

desconto    DOUBLE, 

valor_final   DOUBLE, 

cliente_id INTEGER NOT NULL,

CONSTRAINT cliente_pedido FOREIGN KEY 

   (cliente_id) REFERENCES cliente(id)

);



CREATE TABLE produto(

codigo INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 

nome VARCHAR(45) NOT NULL, 

descricao TEXT, 

preco DOUBLE, 

estoque INTEGER, 

link_foto VARCHAR(255), 

    departamento_codigo INTEGER NOT NULL,

CONSTRAINT produto_depto FOREIGN KEY 

(departamento_codigo) REFERENCES departamento(codigo)

);



CREATE TABLE item_pedido(

num_sequencial INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 

quantidade INTEGER, 

valor_unitario DOUBLE, 

valor_total DOUBLE, 

produto_codigo INTEGER NOT NULL, 

pedido_numero INTEGER NOT NULL,

CONSTRAINT item_produto FOREIGN KEY 

(produto_codigo) REFERENCES produto(codigo),

CONSTRAINT item_pedido FOREIGN KEY 

    (pedido_numero) REFERENCES pedido(numero)

);

## 📚 Questões do desafio

1. Este exercício é livre para você inserir dados nas tabelas. Adicione vários dados em todas as tabelas. Crie vários clientes, com vários endereços. Insira muitos produtos em vários departamentos. Crie pedidos em várias datas com meses diferentes (serão necessários para os próximos exercícios).

2. Quantos clientes estão cadastrados na sua base?

3. Qual o produto mais caro?

4. Qual o produto mais barato?

5. Mostre todos os produtos com seus respectivos departamentos.

6. Quantos produtos há em cada departamento? Exiba o nome do departamento e a quantidade de produtos que há em cada um. (pense em SUM e GROUP BY)

7. Mostre os dados dos pedidos, incluindo nomes dos clientes e nomes dos produtos que foram vendidos.

8. Mostre quantos pedidos foram feitos por mês no ano de 2022 (caso você tenha registros neste ano, senão escolha um ano que você tenha cadastrado - Novamente pense em COUNT e GROUP BY).

9. Mostre quanto foi faturado por mês (leve em conta o valor total de cada pedido - novamente pense em GROUP BY e SUM).

10. Mostre o valor total do estoque por departamento.

## 📫 Contribuindo para Comércio eletrônico usando MySQL
<!---Se o seu README for longo ou se você tiver algum processo ou etapas específicas que deseja que os contribuidores sigam, considere a criação de um arquivo CONTRIBUTING.md separado--->
Para contribuir com <nome_do_projeto>, siga estas etapas:

1. Bifurque este repositório.
2. Crie um branch: `git checkout -b <nome_branch>`.
3. Faça suas alterações e confirme-as: `git commit -m '<mensagem_commit>'`
4. Envie para o branch original: `git push origin <nome_do_projeto> / <local>`
5. Crie a solicitação de pull.

## 🤝 Colaboradores

Pessoas que contribuíram para este projeto:


<table>
  <tr>
    <td align="center">
      <a href="https://github.com/leomonadas">
        <img src="https://avatars.githubusercontent.com/u/77860170?v=4" width="100px;" alt="Foto do membro Leonardo"/><br>
        <sub>
          <b>Leonardo Alves</b>
        </sub>
      </a>
    </td>
   <td align="center">
      <a href="https://github.com/queleandrade">
        <img src="https://avatars.githubusercontent.com/u/75625651?v=4" width="100px;" alt="Foto da membro Quele"/><br>
        <sub>
          <b>Quele Andrade</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/PauloCatena">
        <img src="https://avatars.githubusercontent.com/u/89106608?v=4" width="100px;" alt="Foto do membro Paulo"/><br>
        <sub>
          <b>Gustavo Ribeiro</b>
        </sub>
      </a>
    </td>
  </tr>
</table>
