#!/bin/bash

echo "Prova de conceito 01 - Victor Resende"


#Etapa 01
echo "Etapa 01: Update dos pacotes"
apt-get -y update

#Etapa 02
echo "Etapa 02: Instalando servidor web (apache)"
apt-get install -y apache2

#Etapa 03
echo "Etapa 03: Criando arquivo curriculo.html"

touch curriculo.html

cat > curriculo.html << EOF


<html>
            <head>

                        <title>Curriculum Vitae</title>

            </head>

            <body>

                        <p><b>DADOS PESSOAIS:</b>
                        <br><hr>

                        <br><b>Nome:</b> Victor Augusto Souza Resende
                        <br><b>E-mail:</b> victor.resende@iesb.edu.br
                        <br><b>Data de nascimento:</b> 02/03/2000
                        <br><b>Cidade:</b> Brasília - DF
                        <br><b>Bairro:</b> Guará II
                        <br><b>Celular:</b> (61) 99999-9999

                        <p> 

                        <br><b>Nível de atuação:</b> Júnior
                        <br><b>Faixa Salarial:</b> R$ 3.000,00

                        <p> 

                        <p><b>FORMAÇÃO ACADÊMICA:</b>
                        <br><hr>
                        <br><p><b>Nível de escolaridade:</b> Ensino Superior (Cursando)
                        <br><b>Curso/área:</b> Ciencia de dados
                        <br><b>Instituição:</b> IESB
                        <br><b>Ano de Conclusão:</b> 2023
                        <p> 

                        <p><b>EXPERIÊNCIA PROFISSIONAL:</b>
                        <br><hr>
                        <br><b>Ramo de Atividade:</b> Ciencia de dados
                        <br><b>Organização:</b> IESB, INEP e IBM
                        <br><b>Função:</b> Cientista de dados

</body>

</html>

EOF

#Etapa 04:
echo "Etapa 04: Mudando diretorio arquivo para o servidor web"
cp curriculo.html /var/www/html


#Etapa 05:
echo "Etapa 05: Criando usuario..."
adduser teste


#Etapa 06
echo "Etapa 06: Mudando dono do diretorio para o usuario criado"
chown teste /var/www/html


echo "Processo finalizado!"
