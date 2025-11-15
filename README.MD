# Auto Lamp Placer - Factorio Mod

![Factorio Logo](https://www.factorio.com/static/img/factorio-wheel.png)

[Factorio Official Website](https://www.factorio.com/)

![gif]

## Description

This Factorio mod automates the placement of small lamps near electric poles during nighttime, making it easier to light up your base.

## Features

- **Automatic day/night cycle detection**: Only activates when it's dark (nighttime)
- **Smart placement**: Searches for electric poles within a 10-tile radius around the player
- **Inventory management**: Uses lamps from the player's inventory
- **Energy efficient**: Checks every 2 seconds (120 ticks) to optimize performance

## How It Works

1. The mod activates every 2 seconds (120 game ticks)
2. Only functions during nighttime (when `surface.darkness < 0.5`)
3. Searches for electric poles in a 10x10 tile area around the player
4. For each found pole, checks if there are already nearby lamps
5. If no lamps are present and the player has lamps in their inventory, automatically places one

## Requirements

- Factorio 1.0 or higher
- No other mods required

## Installation

1. Download the mod file
2. Place it in your Factorio mods folder
3. Enable the mod in the game's mod menu
4. Enjoy automated lighting!

## Configuration

Currently the mod has no configurable options, but you can modify the code to adjust:

- Electric pole search radius
- Check frequency
- Lamp placement distance

---

_Design, automate, and expand your factory without worrying about nighttime lighting!_
