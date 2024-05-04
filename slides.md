---
title: From Bash To Nix
theme: league
---

<style>
  .container {
    display: flex;
  }
  .text {
    flex: 1;
    padding: 20px;
  }
  .image {
    flex: 1;
    max-width: 30%;
  }
  img {
    width: 100%;
    height: auto;
  }
</style>

# Building Functional TTRPGs with F#

---

## Who am I

<!-- <img src="/jackAtBlastingSite.jpg" width="300" /> -->

<div class="container">
  <div class="text">
    <!-- <p>
      This is a paragraph of text next to an image that takes up 30% of the width of the screen. 
      You can replace this text with whatever content you'd like.
    </p> -->
    <ul>
      <li>My name is Jack Danna, aka Javk Wick.</li>
      <li>I'm a software engineer from Kentucky. The bulk of my professional career I've written software for Mining, Blasting, and Photogrammetry applications.</li>
      <!-- <li>Hobbies: BJJ, Story Telling, Table Top Roleplay Games (TTRPGs), Power Lifting, Functional Programming</li> -->
      <li>I'm also the creator/developer of Fogent Roleplay.</li>
    </ul>
  </div>
  <div class="image">
    <img src="jackAtBlastingSite.jpg" alt="Your Image">
  </div>
</div>

---

## Objective of this talk

- Point out some funny parallels between developing code and TTRPG
- Why I chose F# for building tools for Fogent Roleplay (and convince you to try it)!
- How building with a functional first language taught me how to "Think Functionally".
- How "Thinking Functionally" bled back into the rules of my game creating a far better game.

---

## The birth of Fogent Roleplay Prt 1

<div class="container">
  <span class="text" markdown="1">
    <ul>
      <li>Lots of D&D during lock down</li>
      <li>Started building my own worlds</li>
      <li>D&D was to constraining</li>
      <ul>
        <li>Not "open source"</li>
        <li>Class based (i.e. you have to be a wizards, rogue, etc... what if I wanna be a blacksmith)</li>
        <li>Rules are fairly coupled with the setting</li>
        <li>Lot's of complexity, hard to teach new players</li>
      </ul>
    </ul>
  </span>
  <div class="image">
    <img src="DnD.jpg" alt="Your Image">
  </div>
</div>

----

## The birth of Fogent Roleplay Prt 2

<div class="container">
  <span class="text" markdown="1">
    <ul>
      <li>Discovered Cogent Roleplay</li>
      <ul>
        <li>Open source license</li>
        <li>Skill based (i.e. characters are defined by composing their skills)</li>
        <li>Rules are completely decoupled from any setting</li>
        <li>Simple rules, easy to get player's into</li>
        <li>Narrative focused</li>
      </ul>
    </ul>
  </span>
  <div class="image">
    <img src="CogentRoleplayAttribution_Stacked.png" alt="Your Image">
  </div>
</div>

----
## The birth of Fogent Roleplay Prt 3

<div class="container">
  <span class="text" markdown="1">
    <ul>
      <li>Issues Cogent Roleplay</li>
      <ul>
        <li>No content, need to make your own</li>
        <li>Didn't handle certain D&D (tactical battle map combat, magic systems, character progression)</li>
        <li>Lacked emergent complexity</li>
      </ul>
    </ul>
  </span>
  <div class="image">
    <img src="CogentRoleplayAttribution_Stacked.png" alt="Your Image">
  </div>
</div>

----

## The birth of Fogent Roleplay Prt 4

<div class="container">
  <span class="text" markdown="1">
    <ul>
      <li>Issues Cogent Roleplay</li>
      <ul>
        <li>Try Cogent out for my "The Beast of Redwall" campaign</li>
        <li>Super apparent to me and my players that there was something here but it wasn't quite there yet</li>
        <li>Started developing my own Rules under the game of "Fallen" trying to address these issue.</li>
      </ul>
    </ul>
  </span>
  <div class="image">
    <img src="CogentRoleplayAttribution_Stacked.png" alt="Your Image">
  </div>
</div>

---

## Fallen Character Sheet Prt 1

<div class="container">
  <div>
    <img src="./CogentSheet1.png" alt="Your Image">
  </div>
</div>

----

## Fallen Character Sheet Prt 2

<!-- - Made a character sheet using google docs: https://docs.google.com/document/d/1KnnLu7UrbQy-35Bf3yt0Sg0_FQPxISAIUZy19WLppSU/edit -->

<div class="container">
  <div>
    <img src="./FallenSheetDocs.png" alt="Your Image">
  </div>
</div>

----

## Fallen Character Sheet Prt 3

<div class="container">
  <div>
    <img src="./FallenSheetSheets.png" alt="Your Image">
  </div>
</div>

----

<div class="container">
  <div>
    <img src="./GoogleAppscriptLib.png" alt="Your Image">
  </div>
</div>

- Here is where I lose my mind with the Google Appscript complier.

----

## Fallen Character Sheet Prt 4

<div class="container">
  <div class="text">
    <ul>
      <li>I realized I need a language with some better typing that can run as JS.</li>
      <li>F# + Fable gave me this ability</li>
      <li>Since most of my logic ends as F#, I have an ejector seat I can use if I get fed up with App Script</li>
    </ul>
  </div>
  <div class="image">
    <img src="./FSIcon.png" alt="Your Image">
    <img src="./FableIcon.png" alt="Your Image">
  </div>
</div>

----

![](EjectorSeat.gif)

----

## Fallen Character Sheet Prt 5

<div class="container">
  <div class="text">
    <ul>
      <li>Switch to SAFE stack (Saturn, Azure, Fable, Elmish)</li>
      <li>Inter Ops with JS</li>
      <li>The robustness of F# in the web</li>
      <li>The Elmish Book by Ziad Ajaj</li>
      <li>Since Elmish is MVU, can use same code to target desktop or mobile (AvaloniaUI, Fabulous, )</li>
      <li>.NET ecosystem</li>
    </ul>
  </div>
  <div class="image">
    <img src="./safe_stack.png" alt="Your Image">
  </div>
</div>

----

<div class="container">
  <div>
    <img src="./FallenCharacterSheet1.png" alt="Your Image">
  </div>
</div>

----

<div class="container">
  <div>
    <img src="./FallenCharacterSheet2.png" alt="Your Image">
  </div>
</div>

----

<div class="container">
  <div>
    <img src="./FallenCharacterSheet3.png" alt="Your Image">
  </div>
</div>

---

## Functional Thinking Prt 1
- Modeling the domain of Fallen in F# poked holes in my rules
![](./githubAnalyticsForFogentRoleplayCommits.png)
- Pause programming I went straight to the rules and spent probably a ~1-2 months working directly on the rules.

----

## Functional Thinking Prt 2
- Focused on composing existing rules instead of writing brand new ones.
- Examples:
  - Combat spells composed from weapon classes.
  - Magic Spells composed from skill and challenge level rules.
  - Attack ranges, AOEs, magic resource, etc... composed from dice pool size rules


----

## Functional Thinking Prt 3
- Writing my rules (in english) with this funcional mindset shrunk my rules, dramatically improved clarity, and enabled my system be the narrative engine for any story or setting.

----

## Functional Thinking Prt 4

<div class="container">
  <div class="image">
    <img src="./FSIcon.png" alt="Your Image">
  </div>
  <div class="image">
    <img src="./PlusSymbol.png" alt="Your Image">
  </div>
  <div class="image">
    <img src="./CogentRoleplayAttribution_Stacked.png" alt="Your Image">
  </div>
</div>

- Hence, Fogent Roleplay was created, in honor of F# and Cogent Roleplay!

---

## Near-term Development

- Finish refactoring character sheet logic (very close).
- Doing some actually UI styling work, defently make a better logo!
- Migrating my current data to a PostgresSQL DB.
- Hosting the website.

----

## Long-term Development

- Mobile app
- User added content
- Built in rule book
- More settings!

---

## Take aways

- Try F#, it's amazing that for a relatively smaller user base, it swings way above it's weight class.
- Thinking functionally doesn't just apply to programming. It's a mindset and tool that can be applied in far more places than you may have initially considered.
- Finding any way to combine one of your passions with your programming is life changing. As programmers we tend to solve other's problems, solve one of your own for a change. 
