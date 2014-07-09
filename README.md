Dockerized BigBlueButton
==============

What is BBB
--------------
BigBlueButton provides Voice and Video chat, aimed at education and discussion based meetings. http://bigbluebutton.org/

What is Docker
--------------
Docker provides a containerization of Linux services. https://www.docker.com/

Why this Container
--------------
BBB is a beast to install correctly. The aim of this container is to provide a robust and working BBB installation to run in Docker environments. 

The approach is to compile most of the software from scratch. You might not like this because it takes a long time. I like it because of the confidence this provides that precisely the same versions of source code will be used within the container and thus confidence it will work. Also, it allows us to compile with various security and performance options. 

How to run the container
--------------
We will add systemd and run scripts, but the additional docker run parameters required are: 

	-h bigblue.smartrecoveryonline.com \
	-p 80:80 \
	-p 1935:1935 \
	-p 9123:9123

Note that this assumes the docker container is the only container with an open port 80 - it should be possible to proxy this, in which case it would be -p 80 so the port is visible to the proxy, presumably in a different container. 

Does it work
--------------
Here is the bad news, no it doesn't - not quite.  Please fork and submit pull requests to help get it working!!

License 
--------------
See the seperate License document. 

Development of this container was supported by the charity I work for - a nice mention or back-link to http://www.smartrecovery.org.uk would be a nice thank you to them. 


