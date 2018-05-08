# Image: gzynda/tacc-base
# Version: 0.0.1

# Use 18.04 LTS
FROM ubuntu:bionic

########################################
# Add docker-clean
########################################

RUN echo "#!/bin/bash\n\
apt-get clean\n\
[ -x \"\$(command -v conda)\" ] && conda clean -tipsy\n\
for dir in /tmp/* /var/tmp/* /home/jupyter/{.ccache,.cache/pip,conda-bld,.conda} /root/* /root/\.[^\.]* /var/lib/apt/lists/* /var/log/*; do\n\
	[ -e \$dir ] && rm -rf \$dir || true\n\
done" > /usr/bin/docker-clean && chmod a+rx /usr/bin/docker-clean && docker-clean

########################################
# Add mount points
########################################

RUN mkdir /scratch /work /home1 /gpfs /corral-repl /corral-tacc /data
