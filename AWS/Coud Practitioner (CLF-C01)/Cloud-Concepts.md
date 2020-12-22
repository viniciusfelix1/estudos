# Cloud Computing

Cloud Computing é a entrega de recursos computacionais (hardware) através da internet sob demanda. Na AWS não é necessário informar previamente os recursos que serão utilizados.

Existem três modelo de cloud: Cloud-Based, On-Premises e Hybrid.

## Cloud-Based

* Todas as partes do ambiente roda núvem
* Migrar as aplicações existentes para a núvem
* Desenvolver e construir as novas aplicações na núvem

Em resumo, consiste em todo o parque de serviços rodando em núvem.

## On-Premises

* Deploy nos recursos utlizando virtualização e ferramentas de adminsitração
* Aumenta o uso de recursos por uso de de ferramentas de administração e tecnologias de virtualização

Também é conhecida por núvem privada, onde é necessário ter uma infra local com ferramentas de virtualização para criar os servidores e recursos

## Hybrid

* Conecta os recursos em cloud com os recursos On-Premise
* Integra recursos em cloud com aplicações legadas

Neste modelo as aplicações que estão em cloud se comunicam com aplocações que estão On-Primises, seja por alguma norma governamental ou por que uma aplicação legada funciona somente On-Premises.

# Benefícios

## Troca de despesa inicial por despesa variável

A despesa incial seria sobre o custo de manter o Data Center (servidor fisíco, rede, energia e etc.) que é necessário investir antes de usa-los. Custo variavel significa que você paga somente o que utilizar.

## Parar de gastar para manter o Data Center

Manter uma infra geralmente requer que você gaste tempo e dinhiero administrando a infra e os servidores.

## Parar de adivinhar a capacidade

Utilizando a Cloud, você não precisa adivinhar o quanto de recursos sua aplicação irá necessidar antes de deploya-la.

---

# Conteúdo do curso em seu modo "Second Edition"

## Introduction to the AWS Cloud

Introdução aos serviços da AWS e como podemos interagir com os serviços.

Os objetivos são entender o que é a AWS Cloud e sua infraestrutura.

Antigamente a infra era planejada com base no pior cenário possível, dessa forma, se houve um pico além do imaginado, os clientes poderiam sofrer indisponibilidades, caso houvesse um planejamento com mais recursos do que necessário, o dinheiro era disperdição. Com a Cloud é possível planejar a infra sem pensar no pior cenário possível, pois podemos escalonar os recursos tanto horizontalmente (criar mais nós para a aplicação) ou verticalmente (aumentar os recursos do servidor).

A AWS Cloud, pode ajudar com a redução de riscos, sendo ágil, aprendendo as mudanças e respondendo rápido, a agilidade reduz o custo com alterações. Pode ajudar também com a segurança, com testes executados de tempos em tempos, correções rápidas e respodendo incidentes de uma forma rápida.

A Cloud é eslastica, permitindo que os recursos e aplicações sejam dimensionadas conforme a necessidade, devido a isso, é possível dar novos deploys rapidamente, escalonar instantâneamente de acordo com a necessidade e desligar servidores que não são mais necessários.

"Reability" é a habilidade o sistema de se recuperar de falhas na infra ou nos serviços. Para alcançar a "reability" a arquitetura e sistemas devem ter uma fundação bem planejada para que consiga lidar com a demanda, detecção de falhas e automaticamente se recuperar.

Os datacentars da AWS estão presentes em vários pontos geográficos, cada um deles é chamado de "**Zona**" que estão em múltiplas localizações separadas, estas são conhecidas como "**Availability Zones**"(AZs). As AZs são Data Centers isolados que cada um tem suas redundâncias de energia e rede.


## Introduction to the AWS Interfaces

Existem três formas de acessar e utilizar a AWS

* AWS Management Console: Interface gráfica web.
* CLI
* Software Development Kits (SDKs)

Todas se conectam na AWS via API.


No Console é possível adicionar atalhos nos serviços que quisermos clicando no "alfinete" que existe perto do serviço. É possível também adicionar tags aos serviços para facilictar as buscas.
