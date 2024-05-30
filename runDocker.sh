docker run -it 	-v $(pwd)/src:/home/src \
				-v $(pwd)/tamarinResults:/home/tamarinResults \
	 			--name tamarin-container tamarin-image

