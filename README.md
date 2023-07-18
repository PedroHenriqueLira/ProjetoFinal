# **Projeto Labeddit Back End**

## 📖 Introdução

O Projeto Labeddit é uma API de posts onde é possível criar uma conta ou fazer login para criar posts, curtir e comentar. 

Os principais conceitos abordados neste projeto são:

- Utilização do TypeScript.
- Criação de uma API.
- Implementação dos principais métodos HTTP: GET, POST, PUT e DELETE.
- Arquitetura em camadas.
- Programação Orientada a Objetos.
- Autenticação.

STATUS: Finalizado.

## 🔗Link de Acesso

- Documentação: [clique aqui!](https://documenter.getpostman.com/view/26465389/2s946h9ssy).

## 📄Concepção do Projeto

### Instalação

```bash
# Instalando dependências
npm install

# Executando o projeto
npm run dev ou npm run start.

```

### Funcionalidades

```bash
. Requisições:
-SignUp: Cria um usuário na API utilizando o método POST.
-Login: Faz login na API utilizando o método POST.

-GetPosts: Obtém todos os posts da API, mas somente se o token gerado no login ou signup for informado, utilizando o método GET.
-GetPostById: Obtém o post com o ID informado, mas somente se o token gerado no login ou signup for informado, utilizando o método GET.
-CreatePost: Cria um post na API, mas somente se o token gerado no login ou signup for informado, utilizando o método POST.
-CreateComment: Cria um comentário na API, mas somente se o token gerado no login ou signup for informado, utilizando o método POST.

-LikeOrDislikePost: Mecanismo de curtir ou descurtir um post na API. O token gerado no login ou signup e o ID do post devem ser informados no corpo da requisição. É necessário enviar true para curtir e false para descurtir.
-LikeOrDislikeComment: Mecanismo de curtir ou descurtir um comentário na API. O token gerado no login ou signup e o ID do comentário devem ser informados no corpo da requisição. É necessário enviar true para curtir e false para descurtir.
```

### Bibliotecas Utilizadas

```bash
# Dependências:
bcryptjs,
cors,
dotenv,
express,
jsonwebtoken,
knex,
sqlite3,
uuid,
zod

# Dependências de desenvolvimento:
@types/bcryptjs,
@types/cors,
@types/express,
@types/jsonwebtoken,
@types/knex,
@types/node,
@types/uuid,
ts-node-dev,
typescript

```

## 💡Programas utilizados:

- VSCode
- Postman

## 💻Tecnologias

![TypesScript](https://img.shields.io/badge/TypeScript-1572B6?style=for-the-badge&logo=typescript&logoColor=white)
![Express](https://img.shields.io/badge/Express-f8f8ff?style=for-the-badge&logo=express&logoColor=black)
![Git](https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=white)

## 📫 Contato

<p>Email: italo.rocha.de.oliveira@gmail.com</p>
<a href = "pedrohenriquecardoso99@hotmail.com"><img src="https://img.shields.io/badge/-Email-%23333?style=for-the-badge&logo=gmail&logoColor=white" target="_blank"></a>
<a href="https://www.linkedin.com/in/pedro-oliveira-0275b8241/" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a>