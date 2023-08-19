FROM --platform=arm64 mcr.microsoft.com/dotnet/sdk:6.0 as build

SHELL [ "/bin/bash", "-c" ]

COPY ./ ./app

WORKDIR /app

RUN dotnet publish -r ubuntu.22.04-arm64 --self-contained -o ../app-out

FROM --platform=arm64 ubuntu:22.04

WORKDIR /hello-world-app

COPY --from=build ./app-out ./

CMD "/bin/bash"