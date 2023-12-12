FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine

# Set working directory
WORKDIR /app

# Copy .csproj and restore dependencies
COPY ./TestesUnitarios.Desafio.Tests/*.csproj TestesUnitarios.Desafio.Tests/
RUN dotnet restore TestesUnitarios.Desafio.Tests

# Copy the rest of the files to the working directory
COPY . ./

# Set TestesUnitarios.Desafio.Tests as workdir to execute dotnet test
WORKDIR /app/TestesUnitarios.Desafio.Tests
CMD ["dotnet", "test"]