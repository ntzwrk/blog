+++
date = "2017-06-20"
description = "A brief introduction into Blockstack, its Decentralized Summer and the app I'm building this summer."
tags = ["Blockstack", "Decentralized Summer", "Beacon"]
title = "Hello Decentralized Summer!"
author = "Valentin Sundermann"
meta_img = "static/img/twitter-cards/hello-decentralized-summer.png"
+++

Hey there, my name is Valentin and I'm one of the lucky participants selected for Blockstack's Decentralized Summer. I'm going to build a decentralized transparent voting webapp in the next two months, and you can watch my progress here. The app is completely opensource and gets powered by Blockstack's software stack.

## What is Blockstack?
Blockstack is a **software stack built on a blockchain** ([whereby it's not tied to a specific blockchain](https://github.com/blockstack/virtualchain)). It uses this blockchain to bootstrap **collective trust** and then builds **[secure naming](https://en.wikipedia.org/wiki/Zooko%27s_triangle)** and **[self-sovereign identity](https://explorer.blockstack.org/name/vsund.id)** on top of that. Furthermore it provides you (currently) tools like storage and payments (more to come!). You can talk with your local Blockstack node via an [API](https://github.com/blockstack/blockstack-core/tree/master/api) or different libraries.

More information (and a diagram) on Blockstack and its functionality at: https://blockstack.org/intro

## And its Decentralized Summer?
Decentralized Summer is an event organized by Blockstack that aims to come up with some new apps powered by Blockstack. The goal is to create some apps to **show what's possible** and enable end users to use the new decentralized internet.

Full announcement [here](https://www.eventbrite.com/e/blockstacks-decentralized-summer-tickets-34395687427).

## Why
**Today's voting is flawed.** Ballots are either intransparently counted and/or take a long way to a final result (and that's not all...). On this long way many people are able to manipulate [minor](http://news.nationalpost.com/news/canada/racknine-inc-fraudulent-election-calls-traced) or [major](https://en.wikipedia.org/wiki/Russian_legislative_election,_2011#Irregularities) things, and hence influencing the result smaller or bigger.

Secure and transparent elections are a critical part of the fundament of our democracy. So with today's tech we should do better, right?

What if everyone could count votes oneself; while the ballot runs, when it's finished or even some years later?
What if the terms are clearly defined before a ballot starts?
What if nobody could stop you from voting, if you properly qualify to vote?

## What
Beacon is a transparent **voting app** powered by Blockstack's software stack. It allows people to issue polls into the blockchain and then let other people vote on them. The advantage of using a blockchain is that you don't rely on a 3rd party that could manipulate the results. You publish everything directly on the blockchain and let the users transparently verify the results of a poll.

_There's no way an attacker could manipulate results without attacking the underlying blockchain, which is -- of course -- not easily possible, whilst detecting it is._

## How
I'll split the app in **two parts**: A [library](https://github.com/ntzwrk/beacon.js) and a [user interface](https://github.com/ntzwrk/beacon) that uses it. Polls are (optionally) linked to a name out of the `.id` namespace and have attributes like title, description, start and expiry date, a set of permissions that defines who qualifies to vote.

I effectively started working yesterday, June 19th, and began working on organizational tasks and data specifications for polls and votes. After finishing this I'll work on the library and wiring an user interface to it. I'll keep you up to date while I'm working.

If you have questions, suggestions, comments or similar, don't hesitate to [contact me](/contact/) or comment below.
