---
theme: seriph
background: https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?auto=format&fit=crop&w=1920&q=80
class: text-center
highlighter: shiki
lineNumbers: false
info: |
  The Pragmatic AI Era
  A Builder's Guide for Managers & Professionals
drawings:
  persist: false
transition: slide-left
title: The Pragmatic AI Era
---

# The Pragmatic AI Era

A ground-up retrospective on LLMs, the anatomy of modern agents, and navigating the new enterprise landscape.

<!--
AI in the Workplace Panel
June 2026
A Builder's Guide for Managers & Professionals
-->

---
layout: default
---

# 01. The Historical Roadmap

<div class="grid grid-cols-4 gap-4 mt-8">

<div class="bg-[#0B0F19] p-5 rounded-lg border border-slate-800 flex flex-col justify-between h-76">
<div>
<span class="font-mono text-xs text-slate-500 block mb-2">LATE 2022 - 2023</span>
<h3 class="text-lg font-bold text-white mb-3">Naked Prompts</h3>
<p class="text-xs text-slate-400 leading-relaxed">Everyone manually copy-pasting into browsers and did <b>"prompt engineering"</b>.</p>
</div>
<div class="text-xs font-mono text-slate-600">Phase 01 // <br>Manual Input</div>
</div>

<div class="bg-[#0B0F19] p-5 rounded-lg border border-slate-800 flex flex-col justify-between h-95">
<div>
<span class="font-mono text-xs text-slate-500 block mb-2">2023 - 2024</span>
<h3 class="text-lg font-bold text-white mb-3">Grounding & RAG</h3>
<p class="text-xs text-slate-400 leading-relaxed">AI didn't have the organization's context. Enter <b>RAG</b>: searching for useful info on-demand and putting it into prompts using vector databases / semantic search and dynamic corporate data injection.</p>
</div>
<div class="text-xs font-mono text-slate-600">Phase 02 // Automatic <br>Context Injection</div>
</div>

<div class="bg-[#0B0F19] p-5 rounded-lg border border-slate-800 flex flex-col justify-between h-90">
<div>
<span class="font-mono text-xs text-slate-500 block mb-2">2024 - 2025</span>
<h3 class="text-lg font-bold text-white mb-3">Tool Calling</h3>
<p class="text-xs text-slate-400 leading-relaxed">AI began being used to <b>decide and execute actions</b>. LLMs were made to output in structured formats, allowing them to be used to call tools/APIs and query databases.</p>
</div>
<div class="text-xs font-mono text-slate-600">Phase 03 // Interoperability</div>
</div>

<div class="bg-[#0B0F19] p-5 rounded-lg border-2 border-sky-500 shadow-[0_0_20px_rgba(14,165,233,0.15)] flex flex-col justify-between h-72 relative overflow-hidden">
<div class="absolute top-0 right-0 bg-sky-500 text-[#070a13] font-mono text-[9px] font-bold px-2 py-0.5 uppercase tracking-wider">Current State</div>
<div>
<span class="font-mono text-xs text-sky-400 block mb-2">2025 - 2026</span>
<h3 class="text-lg font-bold text-white mb-3 bg-gradient-to-r from-white to-sky-400 bg-clip-text text-transparent">Agentic Loops</h3>
<p class="text-xs text-slate-300 leading-relaxed">Asynchronous, multi-agent state networks running autonomous evaluation loops. Systems that self-correct and execute complex, long-running tasks.</p>
</div>
<div class="text-xs font-mono text-sky-400 font-bold">Phase 04 // State Management</div>
</div>

</div>

<footer class="absolute bottom-2 left-0 right-0 text-center text-xs text-slate-500 font-mono">LLM EVOLUTION</footer>

<!--
Timeline progression showing the 4 phases of LLM evolution:
1. Basic prompting (2022-2023)
2. RAG and grounding (2023-2024)
3. Function calling (2024-2025)
4. Agentic loops (2025-2026) - current state highlighted
-->

---
layout: default
---

## 01a. What is an LLM, Exactly? The gory math bits, abstracted
<br>

- Input text: `The dog ate my`
- Words -> tokens (little chunks of words)
- Token -> vector (list of numbers representing point in high-dimensional space)
  - E.g. `[0.7, 0.2, ...]`, one for each word chunk in the text
  - A vector can capture complex ideas and even combinations of ideas
- The "thinking": all the vectors are simultaneously fed into a series of layers
  - Each layer is (attention mechanism -> multilayer perceptron)
- The final layer outputs a single vector representing the most likely next token (word chunk) that follows all the text
  - That _single word chunk_ is the result of all the computation across all words in the text.
  - `The dog ate my [homework]`
- The entire process is repeated using the full text + that single predicted token.
- If you make models big enough, you can train them to produce pretty logical sentences.
  - Sentences like those a human might write.

---
layout: default
---

## 02. What is an Agent, Exactly?

> Strip away the marketing pitch, and an agent is **not** an artificial mind. It is a **deterministic software loop** wrapped around an LLM gateway call.

Agents aren't magic; they are a way of building software that uses LLMs.

```mermaid
flowchart LR
    subgraph AGENT["🤖 Agent / Orchestrator"]
        direction LR
        A["📅 Event /\nSchedule"] --> B[("Read the\nmemory store")]
        B --> C["✨ Call the LLM Gateway"]
        C --> D{"Tool call?"}
        D -->|Yes| E["🛠️ Execute tool"]
        D -->|No| F[("✍️ Update memory store \n/ databases")]
        E --> F
        F --> G{"Complete?"}
        G -->|No| C
        G -->|Yes| H["Done"]
    end
    
    style AGENT fill:#1e293b,stroke:#0ea5e9,stroke-width:2px
    style A fill:#0B0F19,stroke:#64748b
    style B fill:#0B0F19,stroke:#6366f1
    style C fill:#0B0F19,stroke:#0ea5e9
    style D fill:#0B0F19,stroke:#22c55e
    style E fill:#0B0F19,stroke:#0ea5e9
    style F fill:#0B0F19,stroke:#6366f1
    style G fill:#0B0F19,stroke:#22c55e
    style H fill:#0B0F19,stroke:#64748b
```

**Core Insight:** Every "agent" is fundamentally:
- A program **loop** running checks: *"What's the current situation / state of work?"*
- An **LLM call**: *Sends current situation to AI for it to decide what to do*
- A **tool executor**: *Execute the actions that AI decides*

An LLM is a tool the orchestrator uses, not the orchestrator itself.

---
layout: default
---

# 03a. Behind the Curtain: Execution Loops

<div class="grid grid-cols-2 gap-6 mt-4">

```python
def run_agent_loop(state):
    # Autonomous execution loop pattern
    while state["status"] != "complete":
        prompt = build_context(state)
        response = query_llm_gateway(prompt)

        # Key step
        tool_call = parse_json_schema(response)
        
        if tool_call:
            result = execute_native_tool(tool_call)
            state["history"].append(result)
        else:
            state["status"] = "complete"
    
    return state["output"]
```

<div class="space-y-4">

<div class="bg-[#0B0F19]/60 p-4 rounded-lg border border-slate-800/80">

### The Business Realities

- **Absolute Control:** Strict tool scoping means models can never call unauthorized APIs.
- **Linear Management:** You control the state transitions, steps, and fallback thresholds.
- **Auditable History:** Every routing decision, tool execution, and raw string input is completely logged.

</div>

> **FinTech Case Study**
>
> Deploying this minimalist, state-driven loop pattern handles low-cost, ultra-precise fraud triage and transaction anomaly parsing safely, bypassing sprawling enterprise dependencies entirely.

<div class="bg-gradient-to-br from-[#0B0F19] to-sky-950/20 p-4 rounded-lg border border-sky-900/40">

**FinTech Case Study**

Deploying this minimalist, state-driven loop pattern handles low-cost, ultra-precise fraud triage and transaction anomaly parsing safely, bypassing sprawling enterprise dependencies entirely.

</div>

</div>

</div>

<!--
This pseudo-code shows the core agent loop pattern.
Key teaching point: it's fundamentally a while loop with LLM calls in the middle.
Business benefits: control, auditability, deterministic behavior
-->

---
layout: default
---

# 03b. Fintech (Trading) Applications

<div class="grid grid-cols-2 gap-4 mt-4">

<img src="/images/ai-account-mgr-talking-points.png" class="rounded-lg shadow-lg" />

<img src="/images/ai-portfolio-gen-01.png" class="rounded-lg shadow-lg" />

</div>


---
layout: default
---

# 03c. Portfolio Generation (1/4)

<div class="grid grid-cols-2 gap-4 mt-4">

<img src="/images/ai-portfolio-gen-02.png" class="rounded-lg shadow-lg" />

<img src="/images/ai-portfolio-gen-03.png" class="rounded-lg shadow-lg" />

</div>

---
layout: default
---

# 03d. Portfolio Generation (2/4)

<div class="grid grid-cols-2 gap-4 mt-4">

<img src="/images/ai-portfolio-gen-04.png" class="rounded-lg shadow-lg" />

<img src="/images/ai-portfolio-gen-05.png" class="rounded-lg shadow-lg" />

</div>

---
layout: default
---

# 03e. Portfolio Generation (3/4)

<img src="/images/ai-portfolio-gen-06.webp" class="rounded-lg shadow-lg" />

---
layout: default
---

# 03f. Portfolio Generation (4/4)

<img src="/images/ai-portfolio-gen-07.png" class="rounded-lg shadow-lg" />

---
layout: default
---

# 04. No-Code 'Agent Builders' Decoded

<div class="mt-4 mb-6 text-slate-400 max-w-3xl">
Platforms advertise building complex workflows in seconds. What happens when you use services like Salesforce Agentforce or Atlassian Rovo?
</div>

<div class="grid grid-cols-3 gap-4">

<div class="bg-[#0B0F19] p-5 rounded-lg border border-slate-800 relative">
<span class="absolute top-3 right-4 font-mono text-xs text-slate-700 font-black">01</span>
**Your Prompt Input**

...
