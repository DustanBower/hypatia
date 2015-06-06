This document is meant to explain all game mechanics for Hypatia (the game).

# General Overview

UG is a two-dimensional, top-down, non-linear, action-adventure game with gameplay heavily influenced by the 2D Legend of Zelda games and with character stats/item mechanics inspired by the Borderlands franchise.

### High Concept

Help a hero survive against the elements as he searches to destroy 12 legendary monsters that have been plauging mankind for eons.

# Examples of Play

Players will be on an epic quest exploring a vast world doing things like: killing monsters for loot, doing quests for npcs, and exploring dungeons to kill the twelve monsters that have been plaguing humanity for eons.

# Setting

I think the setting should feel a bit like a zelda game. I like the bright color-schemes in ALttP and Minish Cap; although more mature--mature like Shadow of the Colosuss and Majora's Mask, not like Final Fantasy or any other JRPGs.

The general technology is inspired by a lot early-to-mid 19th century technology. Lots of muzzle loaded guns, arrows, swords, gunpowder, and hookshots!

# Controls

SNES style button set-up: D-Pad, Start, Select, ABXY, and shoulder buttons.

* **D-Pad** - Movement/Menu Nav
* **Start** - Pause menu/Equipment Screen
* **Select** - Map
* **Y** - Left Hand
* **A** - Right Hand
* **B** - Boot Ability
* **X** - Special Ability (Based on currently equipped boots and left/right hands.)
* **Shoulder Buttons** - Single Use Items

# Items/Weapons

### Swords, Fists, Axes, Clubs, Ect...

Press the button; swing the thing. Simple.

### Bow and Arrows, Slingshots

Press the button and aim, then release. Moderate-light damage; quick reload.

### Handcannons, Rifles, Crossbows

Press the button and aim, then release. Usually can kill normal enemies in one or two shots. Multi-stage reloads--will elaborate on later.

### Others

These are items that are less directly used in combat:

* **Hookshot** (Pull yourself to walls and heavy enemies; pull light enemies and objects to you)
* **Climbing Stakes** (Climb walls. Could also fuck some one's day up.)
* **Lantern** (Light your way through dark places. And light shit on fire.)
* **Shovel** (Dig shit up.)
* **Bombs** (Blow shit up.)
* **Boomerangs** (Disposable. Only returns to where it was thrown--not the player--when unobstructed. Damages and disapears if it hits an enemy; drops to ground if it hits an obstacle.)
* **Spice Sack** (poison, stun, ect. spices that you can toss at enemies)
* **Ancient Book** (Translates ancient text. Player uses it to get clues in dungeons and other places)

# Boots

Different boots give you different abilities

### Sprint 

Sprint for as long as the player holds the button

### Jump

Tap the button to jump.

### Kick

Tap the button to kick enemies away from you.

### Swim

You won't drown!

# Skills and Weapons

Instead of tracking any sort of classic stats such as STR, CON, INT, ect. We track the types of weapons the player uses and level up their skill with those types of weapons. Each skill that the player can level-up is a tag used to describe part of any weapon.

**Example:** Player has a two-handed claymore with a one-two combo that stabs straight forward, then quick steps forward and does a 180º slash. This claymore would be tagged with the skills: Two-Handed, Swords, Melee, Heavy, Stab, Slash. So whenever experience is gained with the claymore, each one of those tags/proficiencies would get a percentage of it.

### Benefits to this System

1. Players won't get punished for over-specializing. A player who has spent a dozen hours playing with a two-handed claymore can still be competent with an axe or rapier. This is because they weren't just leveling up "two-handed sword", they were also getting slash, stab, and melee; all of which apply to axes and rapiers.

    This creates a system where if a player specializes in one weapon, they become competent in other weapons proportional to how similar it is to the one that PC specialized in. Which mimicks learning a skill IRL--a guitarist is gonna be good a bass guitar, alright at ukelele, but shit at violin or saxaphone. (Which makes me wonder if unused skills should decay... But that's for later on)

2. This allows us to accurately track what kind of weapons the player likes which we could use for any number of things, such as what kinds of enemies to spawn or what skills to use to spawn weapons. Which bring me to me to my third benefit.

3. Generating random weapons should be super easy to control. We just put in the rarity, skill-level-req, and what skills the weapon must have; then we let the computer randomly select the other necessary skills and generate the weapon. However, due to the nature of the weapons, we are going to have to take some time to set-up individual rules over compatability and skills automatically assigning other skills.

# Weapon Generation

To generate a weapon, you need to have six tags: a model and a five modifiers. You can have the computer randomly select most of the tags.

### Models

The model-tag is the tag that most affects the gameplay of the generated item. It tells 

# List of Skills/Tags

* Is not a player skill.

## Modifiers

### Weight

* Heavy
* Light

### Damage

* Stab
* Slash
* Bash

### Handedness

* One
* Both

### Rarity*

* Common
* Uncommon
* Rare
* Mythic
* Dev-Designed

### Skill Requirement*

* Integer Value

## Models

### Melee

* Sword
* Axe
* Club
* Whip
* Knife
* Spear
* Gauntlet/Fist

### Projectile

* Thrown
* Slingshot
* Bow
**Mechanical**
* Crossbow
* Handcannon
* Rifle

### Special

* Hookshot
* Cl. Stakes
* Lantern
* Shovel
* Bomb
* Spice Sack

# Multi-Stage Reload Mechanic

The general gun technology is around 1810-1850ish. So we're dealing with crossbows, muzzle-loaded rifles, handguns that are only small enough to shoot giant 1"-1.5" slugs, and blunderbusses that people shoot any kind of debris out of. All these mechanical weapons have something in common: they shoot once and they take a half-hour to reload. Most games avoid these weapons because no player wants to shoot a gun once and spend 10-some seconds being vulnerable reloading--especially if getting interrupted starts the whole process over.

**My goal with this mechanic is to make these guns' reload mechanisms an exhilerating and rewarding part of combat.**

So each mechanical weapon could take up to 10 seconds to reload, but that 10 seconds can be partitioned into multiple stages of smaller increments of time. So if you're in a long battle with a boss or something, instead of not being able to attack or do anything for 10 whole seconds--you just need to duck away for 2.5 seconds 4 times*. Then if a threat does come too near, you can take care of it with your other weapon and start reloading again from the last stage you past. *The stages do not have to--and probably shouldn't--be equal measures.

This should lead to a risk-reward situation. The player balancing between reloading for just a second longer to clear the stage/finish reloading or to abandon it for the time being and take care of those goblins who are looking mighty thirsty at your various orifices.   

# Weapon Generation

Taken from old document Weapon-Generation.md...

## Name Requirements

Organized by Model

## Melee

### Sword

#### Short Sword

* Damage = Slash
* Weight = Light
* Handed = One

#### Long Sword

* Damage = Slash
* Weight = Heavy
* Handed = One

#### Claymore

* Damage = Slash
* Weight = Heavy
* Handed = Two

#### Katanna

* Damage = Slash & Stab
* Weight = Light
* Handed = Two

#### Rapier

* Damage = Slash
* Weight = Light
* Handed = One

### Axe

#### Hachette

* Damage = Slash
* Weight = Light
* Handed = One

#### Battle Axe

* Damage = Slash and Stab

### Club

#### Basic Club

* Damage = Bash
* Handed = One

#### Mace

* Damage = Bash and Stab
* Handed = One

### Whip

#### Whip

* Damage = Bash and Slash
* Weight = Light
* Handed = One

#### Morning Star

* Damage = Bash and Stab
* Weight = Light
* Handed = One

### Knife

### Staff/Long Stick

#### Bō

* Damage = Bash
* Weight = Light
* Handed = Two

#### Glaive

* Damage = Slash
* Weight = Light
* Handed = Two

#### Spear

* Damage = Stab
* Weight = Light
* Handed = One

#### Pike

* Damage = Stab
* Weight = Light
* Handed = Two

### Gauntlet/Fist

#### Claws

* Damage = Slash

#### Metal Knuckles

* Damage = Bash
* Weight = Light

## Projectile

### Thrown

### Slingshot

### Bow

### Crossbow

### Handcannon

### Rifle

