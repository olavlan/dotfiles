import json

black = (0, 0, 0)
red = (255, 130, 130)
green = (130, 255, 130)
yellow = (255, 210, 210)
blue = (170, 255, 170)
magenta = (255, 170, 170)
cyan = (210, 255, 210)
white = (255, 255, 255)

normal_colors = [black, red, green, yellow, blue, magenta, cyan, white]
bright_colors = normal_colors
colors = normal_colors + bright_colors
colors_formatted = [f"rgb{c}" for c in colors]
print(colors_formatted)
