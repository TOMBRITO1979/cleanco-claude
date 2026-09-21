# CleanCo — agentes e skills do Claude para empresas de limpeza nos EUA

Plugin do Claude Code / Cowork com 16 agentes especializados e 5 skills compartilhadas para gestão, administração e crescimento de uma empresa de limpeza (residencial e comercial) que atua em vários estados — com notas específicas para Texas, Florida, California e estados do norte.

## Estrutura

```
.claude-plugin/marketplace.json     ← catálogo (lido pelo `claude plugin marketplace add`)
plugins/cleanco/
  .claude-plugin/plugin.json
  agents/                            ← 16 agentes (um .md cada)
  skills/
    company-profile/SKILL.md         ← EDITE: dados da sua empresa
    state-notes/SKILL.md             ← regras por estado (verifique datas)
    pricing-tables/SKILL.md          ← EDITE: suas tabelas de preço
    brand-voice/SKILL.md             ← tom de voz
    templates/SKILL.md               ← modelos de mensagens e documentos
instalar.bat / instalar.ps1          ← instalador Windows (duplo clique)
```

## Agentes

| Área | Agente | Para quê |
|---|---|---|
| Operações | `estimator` | orçamentos e propostas |
| | `scheduler` | agenda, rotas, cancelamentos, capacidade |
| | `quality-control` | checklists, reclamações, re-clean, danos |
| | `supplies` | estoque, custo por serviço, equipamentos |
| Pessoas | `recruiting` | vagas, entrevistas, onboarding, treinamento |
| | `hr-compliance` | W-2 vs 1099, folha, horas extras, handbook, OSHA |
| Financeiro | `billing` | faturas, cobrança, inadimplência, QuickBooks/Stripe |
| | `finance-tax` | P&L, fluxo de caixa, sales tax, LLC/S-Corp, deduções |
| | `insurance-licensing` | seguros, bond, COI, licenças por estado/cidade |
| Crescimento | `marketing` | Google Business Profile, reviews, SEO local, ads, social |
| | `sales` | resposta a leads, scripts, follow-up, objeções |
| | `retention` | pós-serviço, indicação, win-back, upsell, churn |
| | `b2b-partnerships` | property managers, realtors, Airbnb, escritórios, RFPs |
| Direção | `strategy-kpis` | KPIs, revisão mensal, expansão, franquia |
| | `legal-contracts` | contratos, termos, cláusulas, disputas |
| | `office-admin` | e-mails, SOPs, software, planilhas |

O Claude escolhe o agente automaticamente pela descrição, ou você chama direto: `use o agente estimator para orçar uma casa de 3 quartos em Dallas`.

## Instalação

### Passo 0 — publicar no GitHub
1. Crie um repositório (público, ou privado com acesso da pessoa) e suba esta pasta inteira.
2. Substitua `SEU-USUARIO/SEU-REPO` em `instalar.bat` e `instalar.ps1`.

### Windows (quem vai usar)
Duplo clique em `instalar.bat`. Ele instala o Claude Code, adiciona o marketplace e instala o plugin. Na primeira execução do `claude` a pessoa faz login no navegador. Se o SmartScreen avisar, clique em "Mais informações" → "Executar assim mesmo".

### Manual (qualquer sistema, dentro do Claude Code)
```
claude plugin marketplace add SEU-USUARIO/SEU-REPO
claude plugin install cleanco@cleanco-marketplace --scope user
```

### Cowork (Claude Desktop)
Customize → Browse plugins → adicione o marketplace pelo mesmo caminho do GitHub e instale `cleanco`. Os agentes e skills funcionam ali também; no Cowork o Claude decide quando delegar aos agentes.

## Idioma do cliente
Antes de escrever qualquer coisa que o cliente vai ler, o agente verifica o idioma dele (no pedido, no `company-profile` ou no cadastro). Se não souber, pergunta: *English, Español ou Português?* Contratos saem em inglês (tradução só como cortesia).

## Personalização
Edite `skills/company-profile/SKILL.md` e `skills/pricing-tables/SKILL.md` com os dados reais. Depois de alterar, rode `claude plugin update cleanco` (ou reinstale) para os usuários receberem a versão nova.

## Aviso
Os agentes de RH, financeiro, seguros e jurídico produzem rascunhos e orientações; regras trabalhistas e tributárias mudam por estado e por ano. Confirme com CPA/advogado licenciado no estado.
