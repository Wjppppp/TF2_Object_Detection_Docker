# TF2_Object_Detection



docker run -it --gpus all --name tf_od -p 8888:8888 --mount type=bind,source="$(pwd)",target=/app tf_od:<TAG>

jupyter notebook --ip=0.0.0.0 --no-browser --allow-root

tensorflow 2.12.0 needs cuda<=11.8