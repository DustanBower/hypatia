"""Interactive map entities/players!

Note:
  Could even be something like a sign! Or the human player.
  
"""


import dialog
import sprites
import constants


class Player(object):

    def __init__(self, walkabout=None):
        self.walkabout = walkabout or sprites.Walkabout()

    def talk(self, npcs, to_surface, font, screen_width):
        """Attempt to talk in current direction.
        
        """
        
        # get the current direction, check a bit in front with a rect
        # to talk to npc if collide
        facing = self.walkabout.direction
        
        if facing is constants.Up:
            disposition = (0, -1)
        elif facing is constants.Right:
            disposition = (1, 0)
        elif facing is constants.Down:
            disposition = (0, 1)
        elif facing is constants.Left:
            disposition = (-1, 0)

        talk_rect = self.walkabout.rect.copy()
        talk_rect.move_ip(disposition)
        
        for npc in npcs:
            
            if npc.walkabout.rect.colliderect(talk_rect):
                npc.say(facing, to_surface, font, screen_width)


class Npc(Player):

    def __init__(self, *args, **kwargs):
        say_text = kwargs.pop('say_text', None)
        
        if say_text:
            self.dialog_box = dialog.DialogBox(self, say_text)
        else:
            self.dialog_box = None

        super(Npc, self).__init__(*args, **kwargs)

    def say(self, at_direction, to_surface, font, screen_width):
        facing = {
                  constants.Up: constants.Down,
                  constants.Right: constants.Left,
                  constants.Left: constants.Right,
                  constants.Down: constants.Up
                 }[at_direction]
        self.walkabout.direction = facing
        
        if self.dialog_box:
            self.dialog_box.blit(to_surface, font, screen_width)
