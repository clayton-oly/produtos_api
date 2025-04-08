# Etapa de build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copia os arquivos de solução e projeto
COPY products_api.sln ./
COPY products_api/products_api.csproj ./products_api/
RUN dotnet restore

# Copia o restante do código
COPY . ./
WORKDIR /src/products_api
RUN dotnet publish -c Release -o /app/publish

# Etapa de runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app/publish ./

EXPOSE 80

ENTRYPOINT ["dotnet", "products_api.dll"]
