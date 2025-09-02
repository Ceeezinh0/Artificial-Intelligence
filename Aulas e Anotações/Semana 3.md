# Semana 3

---

## 1) O que é um agente
- **Agente**: entidade que **percebe** o ambiente (sensores) e **age** nele (atuadores).
- **Função do agente**: mapeia **sequências de percepções → ações**.
- **Agente = Arquitetura + Programa**
  - **Arquitetura**: plataforma/hardware com sensores e atuadores.
  - **Programa do agente**: implementa a função do agente (decide ações).

---

## 2) Racionalidade vs. onisciência
- **Agente racional**: “faz a coisa certa” — escolhe a ação que **maximiza o desempenho esperado** dado o que sabe.
- **Onisciência** é **impossível**; por isso falamos em **desempenho esperado**, não “real”.
- Com **experiência**, o agente **aprende** e melhora seu conhecimento.

---

## 3) Ambientes de tarefa (PEAS)
- **P**erformance (Medida de Desempenho): como avaliamos sucesso.
- **E**nvironment (Ambiente): onde o agente atua.
- **A**ctuators (Atuadores): como o agente age.
- **S**ensors (Sensores): como o agente percebe.

> **Exemplo (aspirador autônomo)**
> - **P**: área limpa, tempo/energia mínimos, poucos choques  
> - **E**: cômodos, móveis, sujeira, base de recarga  
> - **A**: mover, aspirar, acoplar na base  
> - **S**: sujeira, colisão, proximidade, bateria

---

## 4) Propriedades do ambiente
- **Completamente observável** × **Parcialmente observável**
- **Determinístico/Estocástico** (e **Estratégico/Adversarial** quando há outros agentes)
- **Episódico** × **Sequencial**
- **Estático** × **Dinâmico**
- **Discreto** × **Contínuo**
- **Único agente** × **Multiagentes**

---

## 5) Por que não usar uma “tabela gigante”
- Uma tabela com todas as sequências de percepções é **infinita/impraticável**.
- Objetivo da IA: produzir **comportamento racional** com **boa modelagem e pouco código**, não com enumeração exaustiva.

---

## 6) Tipos de agentes
- **Reativo Simples**
  - Regras **condição → ação**; usa **apenas a percepção atual**.
  - *Ex.:* “Se sujo então aspirar; senão mover”.
- **Reativo Baseado em Modelo**
  - Mantém **estado interno** (modelo do mundo) para lidar com **parcial observabilidade**.
- **Baseado em Objetivos**
  - Usa **estado atual + objetivos** para **planejar**.
- **Baseado em Utilidade**
  - Usa **função utilidade** para **comparar alternativas** (trade-offs) mesmo entre objetivos alcançáveis.

---

## 7) Agente que aprende (4 componentes)
- **Elemento de Desempenho**: escolhe as **ações externas**.
- **Elemento de Aprendizado**: ajusta o desempenho com base na experiência.
- **Crítico**: avalia **como o agente foi** (feedback).
- **Gerador de Problemas**: sugere **novas ações/experiências** para explorar e aprender.

