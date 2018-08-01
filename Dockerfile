FROM microsoft/windowsservercore
MAINTAINER GoCD Team <go-cd-dev@googlegroups.com>

COPY user-config C:/Users/ContainerAdministrator/user-config
COPY *.ps1 C:/

RUN powershell -File C:\bootstrap.ps1
RUN powershell -File C:\init-gradle.ps1

CMD C:/start-agent.ps1
