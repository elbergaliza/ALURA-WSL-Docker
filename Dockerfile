#BOAS PRATICAS
# ##1 --> PORTAS
#-definir uma variável de ambiente com o numero da porta
#-colocar dentro do código fonte a referencia a essa var. de ambiente
#-OBRIGATORIO: declarar e atribuir um valor default a essa variavel de ambiente

FROM node:14

WORKDIR /app-node

#define um ARGUMENTO para a IMAGEM. So funciona em tempo de BUILD da IMAGEM
#Nesse caso, define um valor defailt para a PORTA
ARG PORT_BUILD=6000

#Define uma VARIAVEL DE AMBIENTE que é utilizada DENTRO do CONTAINER
ENV PORT=$PORT_BUILD

# Expoe a porta que a aplicacao esta rodando. 
# MELHOR PARA DOCUMENTACAO, pois ira aparecer quando voce digitar o docker ps
EXPOSE $PORT_BUILD

COPY . .

RUN npm install

ENTRYPOINT npm start
