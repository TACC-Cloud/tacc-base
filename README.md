# tacc-base
Base docker image for use with singularity on all TACC systems with the following features:

- Mount points for TACC filesystems
  - /scratch
  - /work
  - /home1
  - /gpfs
  - /corral-repl
  - /corral-tacc
  - /data
- `docker-clean` script for cleaning up logs and cache files

## Usage

Docker Usage
```
docker run gzynda/tacc-base:latest
```
Singularity Usage
```
singularity pull docker://gzynda/tacc-base:latest
```
