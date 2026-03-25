# golang:latest: Atualiza a imagem base para a última versão do Go
# FROM golang:latest

FROM golang:1.26-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /go/src/app

# Copia os arquivos go.mod e go.sum para o container
COPY . .

#EXPOSE 8000
EXPOSE 8000

# Builda a aplicação Go
RUN go build -o main cmd/main.go

# Define o comando para rodar a aplicação
CMD ["./main"] 