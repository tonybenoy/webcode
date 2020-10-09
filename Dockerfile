# Get the latest code server
FROM codercom/code-server:latest

# Update stuff
RUN sudo apt-get update
RUN sudo apt-get -y upgrade
# Use apt install what you need

RUN sudo apt install -y git

#Add custom addons
RUN code-server --install-extension ms-python.python

#Copy stuff you need from here to build
COPY . /mystuff

#Use this to install you extensions. You might have to remove some in case of build failure.
RUN for extention in (/mystuff/extensions.txt) do code-server --install-extension  "${extention}"