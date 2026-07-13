FROM  mcr.microsoft.com/dotnet/sdk:10.0 AS builder

WORKDIR /app

COPY MyDotNetApp/MyDotNetApp.csproj ./

RUN dotnet restore MyDotNetApp.csproj

COPY MyDotNetApp/  /app/

RUN dotnet publish -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final 

WORKDIR /app

COPY --from=builder /app/publish .

EXPOSE 8080

ENTRYPOINT ["dotnet", "MyDotNetApp.dll"]