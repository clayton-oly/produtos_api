FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /app

# Copiar e compilar o aplicativo
COPY . ./
RUN dotnet publish -c Release -o out

# Criar uma imagem m nima
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app
COPY --from=build /app/out ./

# Inicia a aplicação
ENTRYPOINT ["dotnet", "Products.API.dll"]
