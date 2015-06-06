This document comes prior to the release of the API and Requirements doc. In the future, this document will merely be an extrapolation of the completed items therein Design Requirements. This list is not up-to-date and may be deleted in the future.

# Entities

* Walkabout movement and animation control. Walking sprites/animations simply use GIFs with naming conventions. Animation support.
* HumanPlayer child class for manipulating walkabout data based on human input

# Tile map system

* Layer support (RGBA!)
* Passability
* TileSwatch class--tile pack standard used in painting layers
* Tilemap to string
* String to tilemap

# Render

* demo renderer, +render.render()+
* Viewport class: follows user after user goes off screen; zelda-style
* convert GIF animations to PygAnim/support for walkabout animations
* render layers in relation to z-index

# Misc.

* Dummy/debug resources
* Demo (test.py) shows off all features (hopefully)
* Easy configuration (hopefully)
