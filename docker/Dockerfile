FROM python:3.9

# Setup environment variables
ENV HOME=/development
ENV BINHOME=${HOME}/bin/

# Our work directory
WORKDIR ${HOME}

# Mount the project to container
VOLUME [ "$HOME/project" ]

# Install Just to /development/bin
RUN <<EOF
mkdir -p ${BINHOME}
echo "Install Just"
sleep 5
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to ${BINHOME}
export PATH="$PATH:${BINHOME}"
EOF

# Test entrypoint
ENTRYPOINT [ "/development/bin/just", "--version" ]