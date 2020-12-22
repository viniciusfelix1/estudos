# Introduction to the AWS Cloud

Introdução aos serviços da AWS e como podemos interagir com os serviços.

Os objetivos são entender o que é a AWS Cloud e sua infraestrutura.

Antigamente a infra era planejada com base no pior cenário possível, dessa forma, se houve um pico além do imaginado, os clientes poderiam sofrer indisponibilidades, caso houvesse um planejamento com mais recursos do que necessário, o dinheiro era disperdição. Com a Cloud é possível planejar a infra sem pensar no pior cenário possível, pois podemos escalonar os recursos tanto horizontalmente (criar mais nós para a aplicação) ou verticalmente (aumentar os recursos do servidor).

A AWS Cloud, pode ajudar com a redução de riscos, sendo ágil, aprendendo as mudanças e respondendo rápido, a agilidade reduz o custo com alterações. Pode ajudar também com a segurança, com testes executados de tempos em tempos, correções rápidas e respodendo incidentes de uma forma rápida.

A Cloud é eslastica, permitindo que os recursos e aplicações sejam dimensionadas conforme a necessidade, devido a isso, é possível dar novos deploys rapidamente, escalonar instantâneamente de acordo com a necessidade e desligar servidores que não são mais necessários.

"Reability" é a habilidade o sistema de se recuperar de falhas na infra ou nos serviços. Para alcançar a "reability" a arquitetura e sistemas devem ter uma fundação bem planejada para que consiga lidar com a demanda, detecção de falhas e automaticamente se recuperar.

Os datacentars da AWS estão presentes em vários pontos geográficos, cada um deles é chamado de "**Zona**" que estão em múltiplas localizações separadas, estas são conhecidas como "**Availability Zones**"(AZs). As AZs são Data Centers isolados que cada um tem suas redundâncias de energia e rede. 


# Introduction to the AWS Interfaces

Existem três formas de acessar e utilizar a AWS

* AWS Management Console: Interface gráfica web.
* CLI
* Software Development Kits (SDKs)

Todas se conectam na AWS via API.


No Console é possível adicionar atalhos nos serviços que quisermos clicando no "alfinete" que existe perto do serviço. É possível também adicionar tags aos serviços para facilictar as buscas.
