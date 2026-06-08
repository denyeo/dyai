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

<div class="h-full flex flex-col justify-between items-start text-left p-8 relative bg-[#070a13]/90 overflow-hidden rounded-xl border border-slate-800">
  <div class="absolute -top-20 -right-20 w-80 h-80 bg-sky-500/10 rounded-full blur-3xl pointer-events-none"></div>
  <div class="absolute -bottom-20 -left-20 w-80 h-80 bg-indigo-500/10 rounded-full blur-3xl pointer-events-none"></div>

  <div class="w-full flex justify-between items-center border-b border-slate-800 pb-4 text-xs tracking-widest text-slate-400 font-mono">
    <span>PANEL: AI IN THE WORKPLACE</span>
    <span>JUNE 2026</span>
  </div>

  <div class="my-auto space-y-4 max-w-4xl">
    <h1 class="text-5xl font-black tracking-tight leading-tight bg-gradient-to-r from-white via-slate-200 to-sky-400 bg-clip-text text-transparent">
      The Pragmatic AI Era
    </h1>
    <p class="text-xl text-slate-400 font-light leading-relaxed">
      A ground-up retrospective on LLMs, the anatomy of modern agents, and navigating the new enterprise landscape.
    </p>
  </div>

  <div class="w-full flex items-center space-x-3 font-mono text-xs text-slate-400">
    <span class="relative flex h-2 w-2">
      <span class="animate-ping absolute inline-flex h-full w-full rounded-full bg-emerald-400 opacity-75"></span>
      <span class="relative inline-flex rounded-full h-2 w-2 bg-emerald-500"></span>
    </span>
    <span>A Builder's Guide for Managers & Professionals</span>
  </div>
</div>

---
layout: default
---

<div class="h-full flex flex-col justify-between p-2 relative bg-[#070a13] text-slate-200">
  <div class="flex justify-between items-baseline mb-6 font-mono">
    <h2 class="text-xs tracking-widest text-sky-400 uppercase font-bold">01. The Historical Roadmap</h2>
    <span class="text-xs text-slate-500">LLM EVOLUTION</span>
  </div>

  <div class="grid grid-cols-4 gap-4 my-auto">
    
    <div class="bg-[#0B0F19] p-5 rounded-lg border border-slate-800 flex flex-col justify-between h-72">
      <div>
        <span class="font-mono text-xs text-slate-500 block mb-2">LATE 2022 - 2023</span>
        <h3 class="text-lg font-bold text-white mb-3">Naked Prompts</h3>
        <p class="text-xs text-slate-400 leading-relaxed">
          In-context learning driven purely via browser text boxes. Workflows relied entirely on manual copy-paste loops and prompt engineering.
        </p>
      </div>
      <div class="text-xs font-mono text-slate-600">Phase 01 // Static Input</div>
    </div>

    <div class="bg-[#0B0F19] p-5 rounded-lg border border-slate-800 flex flex-col justify-between h-72">
      <div>
        <span class="font-mono text-xs text-slate-500 block mb-2">2023 - 2024</span>
        <h3 class="text-lg font-bold text-white mb-3">Grounding & RAG</h3>
        <p class="text-xs text-slate-400 leading-relaxed">
          Mitigating baseline hallucinations by pairing models with vector databases, semantic search, and dynamic corporate data injection.
        </p>
      </div>
      <div class="text-xs font-mono text-slate-600">Phase 02 // Context Injection</div>
    </div>

    <div class="bg-[#0B0F19] p-5 rounded-lg border border-slate-800 flex flex-col justify-between h-72">
      <div>
        <span class="font-mono text-xs text-slate-500 block mb-2">2024 - 2025</span>
        <h3 class="text-lg font-bold text-white mb-3">Function Calling</h3>
        <p class="text-xs text-slate-400 leading-relaxed">
          Models evolved into action routers. Structured JSON schema outputs allowed LLMs to interface directly with production APIs and databases.
        </p>
      </div>
      <div class="text-xs font-mono text-slate-600">Phase 03 // Interoperability</div>
    </div>

    <div class="bg-[#0B0F19] p-5 rounded-lg border-2 border-sky-500 shadow-[0_0_20px_rgba(14,165,233,0.15)] flex flex-col justify-between h-72 relative overflow-hidden">
      <div class="absolute top-0 right-0 bg-sky-500 text-[#070a13] font-mono text-[9px] font-bold px-2 py-0.5 uppercase tracking-wider">
        Current State
      </div>
      <div>
        <span class="font-mono text-xs text-sky-400 block mb-2">2025 - 2026</span>
        <h3 class="text-lg font-bold text-white mb-3 bg-gradient-to-r from-white to-sky-400 bg-clip-text text-transparent">Agentic Loops</h3>
        <p class="text-xs text-slate-300 leading-relaxed">
          Asynchronous, multi-agent state networks running autonomous evaluation loops. Systems that self-correct and execute complex, long-running tasks.
        </p>
      </div>
      <div class="text-xs font-mono text-sky-400 font-bold">Phase 04 // State Management</div>
    </div>

  </div>
</div>

---
layout: default
---

<div class="h-full flex flex-col justify-between p-2 bg-[#070a13] text-slate-200">
  <div class="flex justify-between items-baseline mb-4 font-mono">
    <h2 class="text-xs tracking-widest text-sky-400 uppercase font-bold">02. What is an Agent, Exactly?</h2>
    <span class="text-xs text-slate-500">DEBUNKING THE MYTH</span>
  </div>

  <div class="grid grid-cols-12 gap-6 my-auto items-center">
    <div class="col-span-5 space-y-4">
      <div class="border-l-4 border-sky-500 pl-4 py-2">
        <p class="text-xl font-light italic leading-relaxed text-slate-100">
          "Strip away the marketing pitch, and an agent is not an artificial mind. It is a <span class="text-sky-400 font-semibold font-mono">deterministic software loop</span> wrapped around an LLM gateway call."
        </p>
      </div>
      <p class="text-xs text-slate-400 leading-relaxed font-sans">
        Agents aren't magic; they are architectural design patterns. They manage state, parse structured data, and match model intent against software instructions.
      </p>
    </div>

    <div class="col-span-7 bg-[#0B0F19] p-6 rounded-lg border border-slate-800 font-mono text-xs">
      <div class="space-y-3">
        <div class="p-3 bg-[#070a13] border border-slate-700 rounded flex items-center justify-between">
          <span class="text-sky-400">01. Context Injection</span>
          <span class="text-slate-500 text-[10px]">System Prompts + RAG Memory</span>
        </div>
        
        <div class="text-center text-slate-600 font-bold">↓</div>
        
        <div class="p-3 bg-[#070a13] border border-sky-900/50 rounded flex items-center justify-between relative shadow-[inset_0_0_10px_rgba(14,165,233,0.05)]">
          <span class="text-emerald-400 font-bold">02. Decision Gateway</span>
          <span class="text-slate-400 text-[10px]">LLM Routing (JSON Tool Scopes)</span>
        </div>
        
        <div class="text-center text-slate-600 font-bold">↓</div>
        
        <div class="p-3 bg-[#070a13] border border-slate-700 rounded flex items-center justify-between">
          <span class="text-indigo-400">03. Execution Loop</span>
          <span class="text-slate-500 text-[10px]">Deterministic Runtime Code</span>
        </div>
        
        <div class="pt-2 border-t border-dashed border-slate-800 flex justify-end">
          <span class="text-[10px] text-sky-500/70 animate-pulse">↺ Evaluates conditions & appends state logs</span>
        </div>
      </div>
    </div>
  </div>
</div>

---
layout: default
---

<div class="h-full flex flex-col justify-between p-2 bg-[#070a13] text-slate-200">
  <div class="flex justify-between items-baseline mb-4 font-mono">
    <h2 class="text-xs tracking-widest text-sky-400 uppercase font-bold">03. Behind the Curtain: Execution Loops</h2>
    <span class="text-xs text-slate-500">PSEUDO-CODE ANATOMY</span>
  </div>

  <div class="grid grid-cols-2 gap-6 my-auto items-stretch">
    <div class="bg-[#0B0F19] p-4 rounded-lg border border-slate-800 font-mono text-[11px] leading-relaxed overflow-x-auto flex flex-col justify-center">
      <div class="space-y-1">
        <p><span class="text-purple-400">def</span> <span class="text-blue-400">run_agent_loop</span>(state):</p>
        <p class="pl-4 text-slate-500"># Autonomous execution loop pattern</p>
        <p class="pl-4"><span class="text-purple-400">while</span> state[<span class="text-green-400">"status"</span>] != <span class="text-green-400">"complete"</span>:</p>
        <p class="pl-8">prompt = build_context(state)</p>
        <p class="pl-8">response = query_llm_gateway(prompt)</p>
        <p class="pl-8 font-semibold text-slate-300">tool_call = parse_json_schema(response)</p>
        <p class="pl-8"><span class="text-purple-400">if</span> tool_call:</p>
        <p class="pl-12">result = execute_native_tool(tool_call)</p>
        <p class="pl-12">state[<span class="text-green-400">"history"</span>].append(result)</p>
        <p class="pl-8"><span class="text-purple-400">else</span>:</p>
        <p class="pl-12">state[<span class="text-green-400">"status"</span>] = <span class="text-green-400">"complete"</span></p>
        <p class="pl-4"><span class="text-purple-400">return</span> state[<span class="text-green-400">"output"</span>]</p>
      </div>
    </div>

    <div class="flex flex-col justify-between space-y-4">
      <div class="bg-[#0B0F19]/60 p-4 rounded-lg border border-slate-800/80">
        <h4 class="text-xs font-mono uppercase tracking-wider text-slate-400 mb-2">The Business Realities</h4>
        <ul class="text-xs space-y-2 text-slate-400 font-sans list-none p-0">
          <li class="flex items-start"><span class="text-sky-400 mr-2 font-mono">▪</span> <strong>Absolute Control:</strong> Strict tool scoping means models can never call unauthorized APIs.</li>
          <li class="flex items-start"><span class="text-sky-400 mr-2 font-mono">▪</span> <strong>Linear Management:</strong> You control the state transitions, steps, and fallback thresholds.</li>
          <li class="flex items-start"><span class="text-sky-400 mr-2 font-mono">▪</span> <strong>Auditable History:</strong> Every routing decision, tool execution, and raw string input is completely logged.</li>
        </ul>
      </div>

      <div class="bg-gradient-to-br from-[#0B0F19] to-sky-950/20 p-4 rounded-lg border border-sky-900/40 shadow-sm">
        <span class="font-mono text-[10px] text-sky-400 uppercase tracking-widest font-bold block mb-1">FinTech Case Study</span>
        <p class="text-xs text-slate-300 leading-relaxed font-sans">
          Deploying this minimalist, state-driven loop pattern handles low-cost, ultra-precise fraud triage and transaction anomaly parsing safely, bypassing sprawling enterprise dependencies entirely.
        </p>
      </div>
    </div>
  </div>
</div>

---
layout: default
---

<div class="h-full flex flex-col justify-between p-2 bg-[#070a13] text-slate-200">
  <div class="flex justify-between items-baseline mb-4 font-mono">
    <h2 class="text-xs tracking-widest text-sky-400 uppercase font-bold">04. No-Code 'Agent Builders' Decoded</h2>
    <span class="text-xs text-slate-500">MARKET ANALYSIS</span>
  </div>

  <p class="text-sm text-slate-400 mb-4 max-w-3xl">
    Platforms advertise building complex workflows in seconds. What happens when you use services like Salesforce Agentforce or Atlassian Rovo?
  </p>

  <div class="grid grid-cols-3 gap-4 my-auto">
    <div class="bg-[#0B0F19] p-5 rounded-lg border border-slate-800 relative">
      <span class="absolute top-3 right-4 font-mono text-xs text-slate-700 font-black">01</span>
      <h3 class="text-xs font-mono uppercase tracking-wider text-white mb-2">Your Prompt Input</h3>
      <p class="text-xs text-slate-400 leading-relaxed font-sans">
        The user provides a high-level goal in natural language (e.g., "Triage customer refund tickets matching specific fraud criteria").
      </p>
    </div>

    <div class="bg-[#0B0F19] p-5 rounded-lg border border-slate-800 relative">
      <span class="absolute top-3 right-4 font-mono text-xs text-slate-700 font-black">02</span>
      <h3 class="text-xs font-mono uppercase tracking-wider text-white mb-2">Meta-Prompt Compiler</h3>
      <p class="text-xs text-slate-400 leading-relaxed font-sans">
        The platform's layer wraps that goal with internal system rules, formatting instructions, and maps it against native API endpoints.
      </p>
    </div>

    <div class="bg-[#0B0F19] p-5 rounded-lg border border-slate-800 relative">
      <span class="absolute top-3 right-4 font-mono text-xs text-slate-700 font-black">03</span>
      <h3 class="text-xs font-mono uppercase tracking-wider text-white mb-2">Universal Engine Run</h3>
      <p class="text-xs text-slate-400 leading-relaxed font-sans">
        The application's multi-tenant orchestration engine handles the execution loop, parsing state outputs in their closed environment.
      </p>
    </div>
  </div>

  <div class="bg-[#0B0F19] border border-slate-800 p-4 rounded-lg mt-6 text-center font-mono relative overflow-hidden">
    <div class="absolute inset-0 bg-gradient-to-r from-transparent via-sky-500/5 to-transparent pointer-events-none"></div>
    <span class="text-xs uppercase tracking-widest text-sky-400 font-bold block mb-1">The Stage Analogy</span>
    <p class="text-xs text-slate-300 font-sans max-w-2xl mx-auto">
      You aren't engineering the theater or the physical infrastructure. You are simply writing the script. The platform handles the backend heavy lifting.
    </p>
  </div>
</div>

---
layout: default
---

<div class="h-full flex flex-col justify-between p-2 bg-[#070a13] text-slate-200">
  <div class="flex justify-between items-baseline mb-4 font-mono">
    <h2 class="text-xs tracking-widest text-sky-400 uppercase font-bold">05. Your Career Moat in the AI Era</h2>
    <span class="text-xs text-slate-500">THE ROAD FORWARD</span>
  </div>

  <div class="grid grid-cols-3 gap-4 my-auto">
    
    <div class="bg-[#0B0F19] p-5 rounded-lg border border-slate-800 flex flex-col justify-between h-64 hover:border-slate-700 transition-colors">
      <div>
        <div class="h-8 w-8 rounded bg-sky-500/10 border border-sky-500/20 flex items-center justify-center mb-4">
          <span class="text-sky-400 font-mono text-xs">A</span>
        </div>
        <h3 class="text-base font-bold text-white mb-2">Workflow Architecture</h3>
        <p class="text-xs text-slate-400 leading-relaxed">
          Pivot from directing raw task output to building asynchronous execution systems. Your value stems from engineering workflows, mapping states, and identifying operational bottlenecks.
        </p>
      </div>
      <span class="text-[10px] font-mono text-slate-600 tracking-wider">System Designer Mindset</span>
    </div>

    <div class="bg-[#0B0F19] p-5 rounded-lg border border-slate-800 flex flex-col justify-between h-64 hover:border-slate-700 transition-colors">
      <div>
        <div class="h-8 w-8 rounded bg-indigo-500/10 border border-indigo-500/20 flex items-center justify-center mb-4">
          <span class="text-indigo-400 font-mono text-xs">B</span>
        </div>
        <h3 class="text-base font-bold text-white mb-2">Infrastructure Ownership</h3>
        <p class="text-xs text-slate-400 leading-relaxed">
          Bypass protracted corporate software integration timelines. Build lean, localized micro-agents to streamline the targeted workflows your direct business unit depends on everyday.
        </p>
      </div>
      <span class="text-[10px] font-mono text-slate-600 tracking-wider">Scrappy Execution Edge</span>
    </div>

    <div class="bg-[#0B0F19] p-5 rounded-lg border border-slate-800 flex flex-col justify-between h-64 hover:border-slate-700 transition-colors">
      <div>
        <div class="h-8 w-8 rounded bg-emerald-500/10 border border-emerald-500/20 flex items-center justify-center mb-4">
          <span class="text-emerald-400 font-mono text-xs">C</span>
        </div>
        <h3 class="text-base font-bold text-white mb-2">The Curation Premium</h3>
        <p class="text-xs text-slate-400 leading-relaxed">
          As content and generic boilerplate drops to near zero marginal cost, markets flood. Premium structural value shifts entirely to human verification, taste, and rigid system guardrails.
        </p>
      </div>
      <span class="text-[10px] font-mono text-slate-600 tracking-wider">The Trust Premium</span>
    </div>

  </div>

  <div class="w-full text-center border-t border-slate-800 pt-3 text-[11px] font-mono text-slate-500">
    Pragmatic AI Blueprint • Build Fast, Scrape Intelligently, Deploy Securely
  </div>
</div>