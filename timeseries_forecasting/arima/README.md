# arima

a notebook to illustrate how to do ARIMA via python

Template for running a jupyter notebook within a docker container.

## How to run the docker containerized notebook

Initially run in the root directory (where the Dockerfile is):

`docker build -t "arima" .`

This will create a docker image named `arima`.You can run this image via

`docker run -p 8888:8888 -v </path/to/arima>:. jupyter_docker`

(replace </path/to/arima> with your local path to this `arima` directory. This connects the port 8888 *inside the docker caontainer* with your local port 8888. So you can access the jupyert server within docker from your browser. Also it mounts this directory to the home directory inside the docker contaner, so changes you do within the docker container will be reflected in this directory.

After executing this, you will see some instructions like this:

"""
To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://661e91b5a5ed:8888/?token=ac5168d0ebfcdd6d11b157ac18978108fafd2b431c607eae
     or http://127.0.0.1:8888/?token=ac5168d0ebfcdd6d11b157ac18978108fafd2b431c607eae
"""

Copy that last URL from your terminal into your webbrowser and you should acces the jupyter server based at this directoy.
