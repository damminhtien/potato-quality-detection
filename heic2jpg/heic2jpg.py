import subprocess
import os
from PIL import Image
from pillow_heif import register_heif_opener

register_heif_opener()


in_directory = 'DataHeic/'
out_directory = 'DataJpg/'

for filename in os.listdir(in_directory):
    if filename.lower().endswith(".heic"):
        print('Converting %s...' % os.path.join(in_directory, filename))
        image = Image.open(in_directory+filename)
        image.save(f'{out_directory+filename[0:-5]}.jpg')
