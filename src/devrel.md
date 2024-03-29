---
title: What is Developer Relations anyways?
short-title: DevRel!?!
synopsis: What do these mysterious "DevRel" people do? Why does it have to be mysterious?
author: Fitz
date: 2021-06-01
---

Alright. So. You just got out of a standard software engineer interview, and all the questions were about balancing trees. Upon researching the team, you find that they're actually abstracting themselves away by creating a new cloud service: The Arborous API.

It looks great, and would have been super helpful during your interview. This "Trees-as-a-Service" service follows all past, current, and future API design best practices: operation, parameter, and error names make sense; it uses the latest HTTP/42 protocols; and it even supports 2<sup>128</sup> QPS. The team did a great job building it. So, let's go use it!

Except... actually using the Arborous API is quite _arduous_. Wouldn't it be great if someone could come in and make sense of this whole thing?

## Developer Relations

Formally, I've been in Developer Relations for a bit over 6 years, having joined Google as a Developer Advocate in early 2015. Informally, I've been doing variations on DevRel for the majority of my 12+ year technical career. In that time, I've touched on a wide range of technologies, including Android, Flutter, cloud, web, scientific/super/high-performance computing, DevOps, intro programming, enterprise development tools, and others. Audiences I've addressed and taught have ranged from 8 year old kids, to 60+ year old university professors, newly hired Big Tech software engineers, long time professional developers, executives, and more.

From those experiences, I've learned one thing: DevRel looks exactly the same across all of them; the specific technology and audience doesn't matter.

Developer Relations exists to improve adoption and retention of a technical thing that technical people use.

I break this down into three equally important, pillars:

1. Technical Education
2. Product Excellence
3. Community

### Technical Education

A developer isn't going to use your product, API, or tree-balancing service if they can't figure out how it works, and they're not going to _keep_ using it if they don't see a pathway to growing their skills with the platform.

Yes, there are reference docs for what each and every operation does. But no API method is ever used in isolation, and really: why might I _actually want_ the `growLeftTernaryTree` operation anyways?

This is where DevRel fits in.

Remember: we’re here to foster adoption and retention of the Arborous API. So we teach people how to use the service via conceptual docs, tutorials and codelabs, and inspirational example use-cases.

Once a developer understands what problems the Arborous API can solve, how to get authenticated and set up, and how to run some initial samples, we move on to more "real world" (or "advanced") cases. After all, once you know why and how to use `growLeftTernaryTree`, what else is left for the service? Solved problems just lead to new problems to be solved, so how does the Arborous team help you feel like that next problem can be tackled with the service?

Having the full pathway of technical education, from comprehensive reference docs, to getting started guides, to conceptual docs and inspirational videos will help everyone looking to use the service.<sup>[1](#1)</sup><a name="1-ret"></a>

### Product Excellence

Ok, so, we've solved one aspect of The Arborous API's arduousness by writing more docs and other educational materials. But it turns out that nobody really wants to write raw HTTP requests. It would be **so** much easier to use if you could just write idiomatic [LOLCODE](https://en.wikipedia.org/wiki/LOLCODE): 

```LOLCODE
HAI 1.3
  CAN HAS ARBOROUSAPI?
  I HAS A TREE ITZ A BUKKIT
  TREE R I IZ TERNARYTREE MKAY
  VISIBLE TREE
  BTW not guaranteed to be idiomatic LOLCODE
KTHXBYE
```

Teaching someone how to use something that's actually hard to use and doesn't solve their problems is a rapid path towards failure. Your best Developer Advocates are your existing users, and if none of them are happy and only use the service because they're forced to, no amount of videos or documentation that will change things. The thing should be easy to use and in a language that's already in use by my team or tech-stack.

Product and engineering teams recognize this, and it's not uncommon for a core development team to publish their API in a machine readable, "Discovery Document," format. With this, it's relatively easy to autogenerate client libraries. But these autogenerated libraries _always_ feel out of place. One way DevRel can exist here is to be the voice of certain language communities, either owning or advising on how an SDK in that language should work.

The other is in feedback directly to the service's development team. All teams are short on time, but the Arborous API team even more so: every department of forestry management wants customized additions to the service. The team prioritizes these, naturally, as most of the revenue from the service happens to grow on those trees.

But long-term success is predicated on having a strong and healthy long-tail of customers, not just a small bushel of shiny red apples--I mean, top-tier customers. All those engineers looking to use the Arborous API to balance a tree in their next interview don't have the benefit of a dedicated contact on the team. DevRel can serve to amplify those concerns and improve the service for everyone (the "leaf nodes," if you will).

### Community

Speaking of leaves, how would you feel if you were the only user of the Arborous API? It might feel a little like being the last leaf left on a tree right before it goes completely dormant for an indeterminate duration.

Instead, you'd probably feel a lot better using the Arborous API if you saw other people using it too.

There's a lot of detail nuance here, but I prune it down to this: developers want to **_feel_** successful with the service and want to feel like they **_can be_** successful, too. ("Knowing" is more the purview of the prior two pillars.)

In order to **_feel_** successful, you want to know that when you run into a problem, you'll be able to get it solved. Customer support groups, StackOverflow tags, GitHub issues, user forums, published roadmaps all play a role in this. DevRel can, but doesn't have to be, directly involved in answering customer questions. But cultivating a healthy forest takes real work that DevRel often helps with (and we try not to be lumberjacks too often). The work here is just as much about the tech as it is people: We should be modeling good interactions, showing examples of good answers or explanations, or highlighting others who've done the same.

Feeling like you **_can be_** successful involves all that, but also being able to see others being successful. The marquee, keynote-worthy customer testimonials are part of this and in some cases, DevRel will work in partnership with product management, marketing, or sales teams on these. Ideally every potential developer would see something of themselves in those showcases, but inevitably, it's not enough. DevRel can help expand the forest of interesting real-world use-cases (and increase said forest's bio-diversity) by inspiring developers in other ways. Gentle on-ramps, effective teaching, peer and community mentoring, office hours, and others are all helpful tools here.

## Developer Relations

Different DevRel teams and different DevRel people will do varying amounts of everything here. They'll do it in different ways and to differing degrees, dependant on the technical thing they're working on, who their partner teams are, how big their team is, how new or mature the product is, what kind of engagement the technical people in their community have, and more.

But it always comes down to these three:

1. **Technical Education**
-- DevRel's output is the content you use to better use the product, learning how it works, when to use it, and how to use it.

2. **Product Excellence**
-- DevRel provides input for product development teams to build a better product, often directly taking on the work to provide a friendly interface to it.
  
3. **Community**
-- DevRel helps people feel successful and feel like they can be successful with the product, often enlisting help from the community itself.

There's a lot left out of this: Who are the people doing DevRel? How do we avoid burning them out? How do we know we're doing DevRel well? What about events & conferences, open source, videos & podcasts, or Twitter?<sup>[2](#2)</sup><a name="2-ret"></a> What if I can't do all of it? What if I'm not DevRel but do these things?

Maybe these questions will show up in future blog posts. 😜

---

<sup><a name="1">1</a></sup> As a bonus, having these resources helps **teams** work faster. A senior engineer doesn't need to worry about teaching their new hire how to use the service when the service itself has plenty of supporting material. That frees up the senior to talk specifically about their team's specific use case. [⏎](#1-ret)

<sup><a name="2">2</a></sup> Hint: all of this still fits into the above. [⏎](#2-ret)