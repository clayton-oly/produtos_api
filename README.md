# 🛒 Produtos API

API RESTful desenvolvida em .NET 8 para gerenciamento de produtos, com banco de dados em memória (InMemory) e documentação interativa via Swagger.  
Deploy feito utilizando **Docker** e hospedagem na plataforma **Render**.

## 🚀 Acesse a API

- 🔗 [Swagger - Documentação Interativa](https://produtos-api-ed5w.onrender.com/swagger/index.html)

---

## 🧰 Tecnologias Utilizadas

- [.NET 8](https://dotnet.microsoft.com/)
- [ASP.NET Core Web API](https://learn.microsoft.com/aspnet/core/web-api)
- [Entity Framework Core 9 (InMemory)](https://learn.microsoft.com/ef/core/providers/in-memory/)
- [Swashbuckle (Swagger)](https://github.com/domaindrivendev/Swashbuckle.AspNetCore)
- [Docker](https://www.docker.com/)
- [Render](https://render.com/)

---

## 🐳 Como rodar localmente com Docker

> Certifique-se de ter o [Docker](https://www.docker.com/products/docker-desktop/) instalado.

```bash
# Clone o repositório
git clone https://github.com/seu-usuario/seu-repo.git
cd seu-repo

# Build da imagem Docker
docker build -t produtos-api .

# Executar o container
docker run -p 5000:80 produtos-api
