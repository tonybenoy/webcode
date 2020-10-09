# webcode

Essentially a soft version of code spaces by github.Create a new repo from this template to make cuton versions.

## Create personal docker image

Run the following to genrate the list of extentions to use while building the image. In case docker build fails remove the entension from entension.txt file
>code --list-extensions >> extensions.txt

To build the docker image
>docker build . -t mycodeserver

To run image
> docker run -it -p 127.0.0.1:8080:8080 -v "$PWD:/home/coder/project"  -u "$(id -u):$(id -g)" mycodeserver --auth none /home/coder/project

All credits go to <https://github.com/cdr/code-server>
