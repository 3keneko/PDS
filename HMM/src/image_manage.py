#!/usr/bin/env python3

from PIL import Image

# class ShirtColor(Enum):
#     RED = 0
#     GREEN = 1
#     BLUE = 2

def convert_shirt_to_path(i: [int]) -> str:
    return [ "../imgs/rouge.jpg", "../imgs/vert.jpg", "../imgs/bleu.jpeg" ][i[0]]

def convert_to_img(i: [int]) -> Image:
    return Image.open(convert_shirt_to_path(i))

def from_emotions_to_image(emotions: [int]):
    image1, image2, image3 = map(convert_to_img, emotions)

    HEIGHT, WIDTH   = 700, 350
    image1.thumbnail((WIDTH, HEIGHT))
    image2.thumbnail((WIDTH, HEIGHT))
    image3.thumbnail((WIDTH, HEIGHT))


    total_width = WIDTH * 3

    new_img = Image.new('RGB', (total_width, HEIGHT))

    new_img.paste(image1, (0, 0))
    new_img.paste(image2, (WIDTH, 0))
    new_img.paste(image3, (2*WIDTH, 0))

    new_img.save("final emotions.jpg")

    new_img.show()
