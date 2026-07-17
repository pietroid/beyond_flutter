---
title: "A path for the Anthropic Architect Certification"
description: Pietro - 17/04/2026
---

My current focus is to pass in the Anthropic Claude Certified Architect - Foundations (CCA-F) exam, because it's endorsed by VGV.

<Image src="images/ccaf.png" width="200"/>

This certification is around since March/2026, so there have been already some hype on the market about it. 

While I meet it with [certain skepticism](https://www.reddit.com/r/ClaudeAI/comments/1sgn0cf/passed_anthropics_claude_certified_architect/) (AI ecosystem is still very young and evolving), given the importance of Anthropic on our daily lives as developers, I do think there's a level of relevance to this certification.

I think this article very useful to understand how to [apply to it and a summary of the exam](https://usefusefi.medium.com/the-complete-guide-to-the-claude-certified-architect-foundations-cca-f-13f3f1af605c). 

Only companies within Anthropic network can apply, but why not convince your company to do it? It's free.

## ✍ The Exam itself

This is the main curriculum of the exam:

1. Agentic Architecture & Orchestration - Final Weight: 27%
2. Tool Design & MCP Integration - Final Weight: 18%
3. Prompt Engineering & Structured Output - Final Weight: 20%
4. Claude Code Configuration & Workflows - Final Weight: 20%
5. Context Management & Reliability - Final Weight: 15%

I would say the exam is half focused on some principles of Agentic AI, taking into consideration some universal principles of prompt and context engineering, but the other half is focused on the Anthropic Claude ecosystem, which is double sworded because it can be either a lock-in but a very competitive advantage if Anthropic succeeds in the long term to stay the main player.

## ❓The questions

What caught most my attention and made me thing this certification is a not a complete waste of time is that the questions are posed for Engineers, it's not a look-up table for Anthropic Claude Documentation or some vague ideas for context engineering. Let's see an example of a question from a mocked exam:


```
The synthesis agent receives summarized findings from the web search and document analysis agents, then passes a consolidated summary to the report generator. During testing, you discover the generated reports make factual claims without proper citations—the report generator cannot attribute statements to their original sources because that metadata was lost during the summarization steps. What is the most effective approach to ensure proper source attribution in the final reports?

A. Have each agent output structured data separating content summaries from source metadata (URLs, document names, page numbers).

B. Have the report generator query the web search agent to re-locate sources for claims in the final report.

C. Instruct the synthesis agent to embed source references inline within its summary text using a consistent citation format.

D. Skip summarization and pass full raw outputs from web search and document analysis directly to the report generator.
```

As we can see, there are multiple ways we could solve the problem, and maybe we think all can be right. But I remember a great citation from a colleague:

> The test is not checking whether you can recall an API parameter. It checks whether you can locate where a failure actually lives and choose the intervention that makes the failure structurally impossible rather than merely less likely.

This is not just an AI proficiency exam, this is really a Software Engineering exam. 

So, how would be the solution?

```
A. Have each agent output structured data separating content summaries from source metadata (URLs, document names, page numbers).
```

The catch here is that all others are viable options. Report generator query the web? Feasible, but will call additional tools, spend more time and tokens. Skip summarization, feasible but a more obvious NO, as it would make spend unnecessary tokens. Instruct the agent to reference it, is a known trap: we should not rely on probabilistic solutions when we have a deterministic one. 

The only option left is maybe missed if you don't have a good understanding that Agents can have structured outputs, and then we see the power of knowing the Anthropic Claude ecosystem and how to use it properly.

## 📚 How to prepare for it?

The test is composed of 60 of those questions, and the candidate should complete in 2 hours. The total points of the exam is 1000, and the passing score is 720.

There are mocked exams on Anthropic Official Website, but there are a lot of unofficial materials and mock exams to study on:

- This [Mock Exam](https://ccaf.cyberskill.world/) has been reported by the community to be very close to the real one, and gives you insights and answers on the ones you missed.
- This [Guide](https://claudecertificationguide.com/learn) is useful for really understanding the concepts covered by the exam. It's the one I'm using because it has a balance of simplicity and depth.
- This [Repository](https://github.com/paullarionov/claude-certified-architect) has more depth and overwhelming amount of information, but it's good to go deeper into concepts that you don't understand well.

At the end, what matters is not to just memorize questions or trial and error of the mocked exams, but actually building something with Claude and understanding all the sides of it in practice.

## 🔭 Beyond the traditional exam study

With that in mind I set myself a challenge: What could I build with Claude that uses almost all the set of concepts covered by the exam? Meaning I don't want to use only claude code, but also agents, tools, context management, etc.

> The greatest constrain is: Given that I use my company Claude API Keys for agents, claude code, etc. I must build something that lies inside my company's ecosystem.

## 🧠 (Very Good) Brain

I don't know in other companies, but in VGV more and more information is being stored in Notion, usually for product and project management internal knowledge. But how do we manage information on engineering side?

Also, I personally feel sometimes very distant from the latest things VGV is doing in its internal ecoystem and opensource tools, and I think this is a common problem in many companies.

So I'm building a very tiny product, called Very Good Brain, that is an interactive Agent that I can do many things such as:

- Understand where we there's need for contribution in our internal or opensource projects, and how to contribute to them.
- Have a bigger picture of the latest contributions and get opinions from the Agent about what to evolve next.
- Understand the discussions and latest contributions per person basis, so we have a clarity of a go-to person for a specific topic.

This uses a wide range of topics:

- Github MCP integration
- Claude Agents SDK
- Claude Code
- Context Management
- Prompt Engineering

I think this idea can be replicated to any company, and the most cool thing about using LLMs for it: it can be tailored and personalized to each company, team, context.