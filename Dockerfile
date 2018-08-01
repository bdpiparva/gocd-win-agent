FROM microsoft/windowsservercore
MAINTAINER GoCD Team <go-cd-dev@googlegroups.com>

COPY user-config C:/Users/ContainerAdministrator/user-config
COPY *.ps1 C:/

ENV TMP c:/tmp
ENV TEMP c:/tmp

RUN powershell 'New-Item "C:/tmp" -ItemType Directory' ; powershell -File C:\bootstrap.ps1
RUN powershell -File C:\init-gradle.ps1

CMD C:\\go-agent.exe
