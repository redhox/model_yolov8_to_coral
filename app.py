
from ultralytics import YOLO

import os

folder_path = './model_yolo'
files = os.listdir(folder_path)
# If you want to filter out directories and only keep files:
files = [f for f in files if os.path.isfile(os.path.join(folder_path, f))]
print(files)
for element in files:
	model = YOLO(f'/app/model_yolo/{element}')
	model.export(format='edgetpu')
