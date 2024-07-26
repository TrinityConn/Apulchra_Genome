---
layout: post
title: Apulchra genome_Trinity_PostDoc_Notebook
date: '2024-21-06'
categories: Analysis, Genome Assembly,
tags: [Bioinformatics, Genome, Assembly]
projects: Acropora pulchra genome
---


# Acropora Pulchra Genome Assembly 

## In Collaboration with Jill Ashey at URI 

### 06112024
Met with Ross, Hollie and Jill to establish status of genome assembly. Jill is currently removing contaminant reads (bacteria, viruses, symbionts etc.). Jill is trying to work on getting MitoHifi to work, and then the next steps will be to ID and mask repeats, and then annotate the genome using Funannotate. Jill's status updates can be read at (https://github.com/JillAshey/JillAshey_Putnam_Lab_Notebook/blob/master/_posts/2024-02-06-Apulchra-Genome-Assembly.md)



### 06212024

I gained affiliate access to the URI cluster and began to set up my conda environments and such. All data on the URI cluster should be located under data/putnamlab/tconn. There is no scratch environment in the URI cluster and they do not like you to use your home directories for working (lol) so all data and scripts are kept in the putnam lab allocation. To test out longer 'jobs' on a compute node, you use the interactive cluster. This is how I set up my conda environments. 

Created two conda environments: one for repeatmasker (identifying and masking repeats) and mitohifi (to see if I can help Jill along) 

```
conda create -n repeatmasker
conda create -n mitohifi
```
Jill is having trouble with getting mitohifi to run after installing via conda. Docker is not available so I'm going to try to install using Singularity using command available on the MitoHifi github. 

```
singularity exec --bind /path/to/container_directory:/path/to/container_directory docker://ghcr.io/marcelauliano/mitohifi:master mitohifi.py -h

```
```
singularity exec --bind /path/to/container_directory:/path/to/container_directory docker://ghcr.io/marcelauliano/mitohifi:master mitohifi.py -h
INFO:    Converting OCI blobs to SIF format
INFO:    Starting build...
Copying blob 8744423396a5 [====>--------------] 179.9MiB / 715.8MiB | 18.6 MiB/s
Copying blob 8744423396a5 [====>--------------] 182.8MiB / 715.8MiB | 25.1 MiB/s
Copying blob 8744423396a5 [====>--------------] 185.2MiB / 715.8MiB | 37.2 MiB/s
Copying blob 8744423396a5 [====>--------------] 188.1MiB / 715.8MiB | 31.6 MiB/s
Copying blob 8744423396a5 [====>--------------] 191.7MiB / 715.8MiB | 24.6 MiB/s
Copying blob 8744423396a5 [====>--------------] 195.9MiB / 715.8MiB | 38.8 MiB/s
Copying blob 8744423396a5 [====>--------------] 201.8MiB / 715.8MiB | 53.1 MiB/s
Copying blob 8744423396a5 [=====>-------------] 207.7MiB / 715.8MiB | 39.0 MiB/s
Copying blob 8744423396a5 [=====>-------------] 213.4MiB / 715.8MiB | 39.8 MiB/s
Copying blob 8744423396a5 [=====>-------------] 219.0MiB / 715.8MiB | 42.3 MiB/s
Copying blob 8744423396a5 [=====>-------------] 224.7MiB / 715.8MiB | 45.7 MiB/s
Copying blob 8744423396a5 [=====>-------------] 230.4MiB / 715.8MiB | 44.1 MiB/s
Copying blob 8744423396a5 [=====>-------------] 236.0MiB / 715.8MiB | 36.9 MiB/s
Copying blob 8744423396a5 [=====>-------------] 241.7MiB / 715.8MiB | 38.3 MiB/s
Copying blob 8744423396a5 [======>------------] 247.4MiB / 715.8MiB | 41.3 MiB/s
Copying blob 8744423396a5 [======>------------] 253.4MiB / 715.8MiB | 37.0 MiB/s
Copying blob 8744423396a5 [======>------------] 259.0MiB / 715.8MiB | 38.9 MiB/s
Copying blob 8744423396a5 [======>------------] 264.7MiB / 715.8MiB | 43.6 MiB/s
Copying blob 8744423396a5 [======>------------] 269.6MiB / 715.8MiB | 10.8 MiB/s
Copying blob 8744423396a5 [======>------------] 274.6MiB / 715.8MiB | 43.2 MiB/s
Copying blob 8744423396a5 [======>------------] 280.3MiB / 715.8MiB | 38.7 MiB/s
Copying blob 8744423396a5 [=======>-----------] 285.9MiB / 715.8MiB | 39.4 MiB/s
Copying blob 8744423396a5 [=======>-----------] 291.6MiB / 715.8MiB | 42.4 MiB/s
Copying blob 8744423396a5 [=======>-----------] 297.2MiB / 715.8MiB | 38.2 MiB/s
Copying blob 8744423396a5 [=======>-----------] 302.8MiB / 715.8MiB | 36.5 MiB/s
Copying blob 8744423396a5 [=======>-----------] 308.5MiB / 715.8MiB | 37.0 MiB/s
Copying blob 8744423396a5 [=======>-----------] 313.7MiB / 715.8MiB | 45.9 MiB/s
Copying blob 8744423396a5 [========>----------] 320.7MiB / 715.8MiB | 76.4 MiB/s
Copying blob 8744423396a5 [========>----------] 329.1MiB / 715.8MiB | 57.8 MiB/s
Copying blob 8744423396a5 [========>----------] 337.6MiB / 715.8MiB | 63.8 MiB/s
Copying blob 8744423396a5 [========>----------] 345.5MiB / 715.8MiB | 57.9 MiB/s
Copying blob 8744423396a5 [========>----------] 354.0MiB / 715.8MiB | 66.9 MiB/s
Copying blob 8744423396a5 [========>---------] 359.0MiB / 715.8MiB | 226.1 MiB/s
Copying blob 8744423396a5 [=========>---------] 366.4MiB / 715.8MiB | 69.5 MiB/s
Copying blob 8744423396a5 [=========>---------] 374.9MiB / 715.8MiB | 63.8 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.1MiB / 715.8MiB | 111.0 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [========>---------] 377.5MiB / 715.8MiB | 192.2 MiB/s
Copying blob 8744423396a5 [=========>---------] 384.8MiB / 715.8MiB | 72.4 MiB/s
Copying blob 8744423396a5 [=========>---------] 393.4MiB / 715.8MiB | 61.0 MiB/s
Copying blob 8744423396a5 [==========>--------] 401.9MiB / 715.8MiB | 59.2 MiB/s
Copying blob 8744423396a5 [==========>--------] 410.3MiB / 715.8MiB | 56.1 MiB/s
Copying blob 8744423396a5 [==========>--------] 418.7MiB / 715.8MiB | 68.9 MiB/s
Copying blob 8744423396a5 [==========>--------] 427.2MiB / 715.8MiB | 65.1 MiB/s
Copying blob 8744423396a5 [===========>-------] 435.7MiB / 715.8MiB | 64.6 MiB/s
Copying blob 8744423396a5 [===========>-------] 444.1MiB / 715.8MiB | 69.2 MiB/s
Copying blob 8744423396a5 [===========>-------] 452.6MiB / 715.8MiB | 63.6 MiB/s
Copying blob 8744423396a5 [===========>-------] 458.8MiB / 715.8MiB | 59.8 MiB/s
Copying blob 8744423396a5 [===========>-------] 458.8MiB / 715.8MiB | 59.8 MiB/s
Copying blob 8744423396a5 [===========>-------] 458.8MiB / 715.8MiB | 59.8 MiB/s
Copying blob 8744423396a5 [===========>-------] 458.8MiB / 715.8MiB | 59.8 MiB/s
Copying blob 8744423396a5 [===========>-------] 458.8MiB / 715.8MiB | 59.8 MiB/s
Copying blob 8744423396a5 [===========>-------] 458.8MiB / 715.8MiB | 59.8 MiB/s
Copying blob 8744423396a5 [===========>-------] 458.8MiB / 715.8MiB | 59.8 MiB/s
Copying blob 8744423396a5 [===========>-------] 458.8MiB / 715.8MiB | 59.8 MiB/s
Copying blob 8744423396a5 [===========>-------] 468.2MiB / 715.8MiB | 57.1 MiB/s
Copying blob 8744423396a5 [============>------] 476.1MiB / 715.8MiB | 51.6 MiB/s
Copying blob 8744423396a5 [============>------] 484.1MiB / 715.8MiB | 52.3 MiB/s
Copying blob 8744423396a5 [============>------] 494.2MiB / 715.8MiB | 94.2 MiB/s
Copying blob 8744423396a5 [============>------] 502.3MiB / 715.8MiB | 62.1 MiB/s
Copying blob 8744423396a5 [=============>-----] 510.1MiB / 715.8MiB | 64.8 MiB/s
Copying blob 8744423396a5 [=============>-----] 518.0MiB / 715.8MiB | 60.0 MiB/s
Copying blob 8744423396a5 [=============>-----] 525.8MiB / 715.8MiB | 64.1 MiB/s
Copying blob 8744423396a5 [=============>-----] 533.6MiB / 715.8MiB | 57.3 MiB/s
Copying blob 8744423396a5 [=============>-----] 541.6MiB / 715.8MiB | 64.0 MiB/s
Copying blob 8744423396a5 [==============>----] 549.7MiB / 715.8MiB | 70.3 MiB/s
Copying blob 8744423396a5 [==============>----] 557.8MiB / 715.8MiB | 60.1 MiB/s
Copying blob 8744423396a5 [==============>----] 565.8MiB / 715.8MiB | 55.5 MiB/s
Copying blob 8744423396a5 [==============>----] 573.7MiB / 715.8MiB | 61.6 MiB/s
Copying blob 8744423396a5 [==============>----] 581.6MiB / 715.8MiB | 52.9 MiB/s
Copying blob 8744423396a5 [===============>---] 589.5MiB / 715.8MiB | 62.6 MiB/s
Copying blob 8744423396a5 [===============>---] 597.3MiB / 715.8MiB | 58.9 MiB/s
Copying blob 8744423396a5 [===============>---] 605.2MiB / 715.8MiB | 58.6 MiB/s
Copying blob 8744423396a5 [===============>---] 613.3MiB / 715.8MiB | 66.0 MiB/s
Copying blob 8744423396a5 [================>--] 621.6MiB / 715.8MiB | 72.0 MiB/s
Copying blob 8744423396a5 [================>--] 627.3MiB / 715.8MiB | 53.5 MiB/s
Copying blob 8744423396a5 [================>--] 635.3MiB / 715.8MiB | 59.6 MiB/s
Copying blob 8744423396a5 [================>--] 643.2MiB / 715.8MiB | 69.6 MiB/s
Copying blob 8744423396a5 [================>--] 651.0MiB / 715.8MiB | 51.1 MiB/s
Copying blob 8744423396a5 [================>--] 659.0MiB / 715.8MiB | 55.9 MiB/s
Copying blob 8744423396a5 [=================>-] 666.9MiB / 715.8MiB | 59.0 MiB/s
Copying blob 8744423396a5 [=================>-] 674.7MiB / 715.8MiB | 58.2 MiB/s
Copying blob 8744423396a5 [=================>-] 682.8MiB / 715.8MiB | 52.6 MiB/s
Copying blob 8744423396a5 [=================>-] 690.9MiB / 715.8MiB | 60.1 MiB/s
Copying blob 8744423396a5 [==================>] 699.1MiB / 715.8MiB | 58.7 MiB/s
Copying blob 8744423396a5 [==================>] 707.1MiB / 715.8MiB | 57.5 MiB/s
Copying blob 8744423396a5 [==================>] 715.0MiB / 715.8MiB | 45.2 MiB/s
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob 8744423396a5 done   | 
Copying blob cd150c608fee done   | 
Copying blob 4f4fb700ef54 done   | 
Copying blob 2dba27d875ea done   | 
Copying blob b391f6a39500 done   | 
Copying blob 4d576e048711 done   | 
Copying blob 6d13eabd89e6 done   | 
Copying blob a21a37603d5d done   | 
Copying blob 3715d2d7c4d8 done   | 
Copying blob 89ab13b45af6 done   | 
Copying blob c0f3c916ba34 done   | 
Copying blob 71b2061ae783 done   | 
Copying blob 4875f80625a1 done   | 
Copying blob c911507ce8b0 done   | 
Copying blob 9d7df5568bfa done   | 
Copying blob 11bccfbee88e done   | 
Copying blob 81462f05685d done   | 
Copying blob 4f4fb700ef54 skipped: already exists  
Copying blob d940cd3595a7 done   | 
Copying blob 4f4fb700ef54 skipped: already exists  
Copying blob 79c85c302568 done   | 
Copying blob 4f4fb700ef54 skipped: already exists  
Copying blob 593ba8b94a7c done   | 
Copying blob 4f4fb700ef54 skipped: already exists  
Copying config fee3a9bfab done   | 
Writing manifest to image destination
2024/06/20 23:59:28  info unpack layer: sha256:cd150c608fee7837e3a5b28be5c7b540eaf4efa27b3b755d55326470691ce2df
2024/06/20 23:59:30  info unpack layer: sha256:2dba27d875eac3527d3ff6b0ff6d8bb7c4ca4588767579a61ba6cf187fc41de8
2024/06/20 23:59:47  info unpack layer: sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1
2024/06/20 23:59:47  info unpack layer: sha256:b391f6a395008fbd76b3bca8b76ad70da2e865a8dc3294b2bc070097cd423955
2024/06/20 23:59:47  info unpack layer: sha256:4d576e048711f1fc402993507a87a2866b56fd7a2e9fe32ceb7a0ed8db7c5b33
2024/06/20 23:59:49  info unpack layer: sha256:8744423396a5ad47f3fbf7b0f5b965ef42cf9c3c6c411ce820e2ebaa9147c0fb
2024/06/21 00:00:01  warn rootless{opt/MitoFinder/mitfi/infernal-1.0.2/aclocal.m4} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:02  warn rootless{opt/MitoFinder/mitfi/infernal-1.0.2/documentation/userguide/Figures/stl9-63.pdf} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:03  warn rootless{opt/MitoFinder/mitfi/infernal-1.0.2/testsuite/sqc} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/ChangeLog} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/m4/amversion.m4} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/ar-lib-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/built-sources-check-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check-exported-srcdir-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check-fd-redirect-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check-subst-prog-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check-subst-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check-tests-in-builddir-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check11-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check12-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check2-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check4-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check5-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check6-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check7-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/check8-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/color-tests-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/color-tests2-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/compile-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/compile2-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/compile3-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/compile4-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/compile5-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/compile6-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-auto.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-cpp.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-dashmstdout.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-disabled.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-gcc.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-lt-auto.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-lt-cpp.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-lt-dashmstdout.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-lt-disabled.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-lt-gcc.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-lt-makedepend.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-lt-msvcmsys.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-lt-msvisualcpp.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-makedepend.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-msvcmsys.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/depcomp-msvisualcpp.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/exeext4-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/instsh2-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/instsh3-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/maken3-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/mdate5-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/mdate6-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/missing-version-mismatch-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/missing3-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/mkinst3-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/posixsubst-tests-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-ambiguous-directive-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-autonumber-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-bad-prog-w.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-bailout-and-logging-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-bailout-suppress-badexit-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-bailout-suppress-later-diagnostic-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-bailout-suppress-later-errors-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-bailout-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-basic-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-color-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-deps-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-diagnostic-custom-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:05  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-diagnostic-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-doc-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-driver-stderr-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-empty-diagnostic-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-empty-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-escape-directive-2-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-escape-directive-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-exit-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-fancy-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-fancy2-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-global-log-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-global-result-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-log-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-merge-stdout-stderr-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-missing-plan-and-bad-exit-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-more-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-more2-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-msg0-bailout-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-msg0-directive-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-msg0-misc-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-msg0-planskip-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-msg0-result-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-negative-numbers-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-no-disable-hard-error-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-no-merge-stdout-stderr-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-no-spurious-numbers-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-no-spurious-summary-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-no-spurious-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-not-ok-skip-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-number-wordboundary-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-numbers-leading-zero-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-numeric-description-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-out-of-order-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-passthrough-exit-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-passthrough-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-plan-corner-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-plan-errors-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-plan-leading-zero-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-plan-malformed-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-plan-middle-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-plan-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-plan-whitespace-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-planskip-and-logging-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-planskip-badexit-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-planskip-bailout-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-planskip-case-insensitive-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-planskip-late-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-planskip-later-errors-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-planskip-unplanned-corner-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-planskip-unplanned-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-planskip-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-planskip-whitespace-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-realtime-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-recheck-logs-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-recheck-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-result-comment-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-signal-w.tap} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-test-number-0-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-todo-skip-together-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-todo-skip-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-todo-skip-whitespace-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-unplanned-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-whitespace-normalization-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-with-and-without-number-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/tap-xfail-tests-w.sh} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/automake-1.13.4/t/testsuite-part.am} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:06  warn rootless{opt/MitoFinder/trnascanSE/infernal-1.1.3/easel/documentation/figures/easel_techtree.pdf} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:07  warn rootless{opt/MitoFinder/trnascanSE/infernal-1.1.3/hmmer/easel} ignoring (usually) harmless EPERM on setxattr "user.rootlesscontainers"
2024/06/21 00:00:10  info unpack layer: sha256:6d13eabd89e6a361eee78e414f170650525c89a2bed80ea183591e951c92b4ff
2024/06/21 00:00:23  info unpack layer: sha256:a21a37603d5d99ed35a41123dbd9c2fbb316fba5f579aa01efd853567f58181d
2024/06/21 00:00:23  info unpack layer: sha256:3715d2d7c4d87d18da2c04ec05ec51de0d3b409bb20050cc966497132a3cf474
2024/06/21 00:00:24  info unpack layer: sha256:89ab13b45af6f0c23c60bb482db97f8b58c39f4cc4ee86a1e502f78c3caa9d7e
2024/06/21 00:00:24  info unpack layer: sha256:c0f3c916ba34ad4e7e5a3bad19aa6bcec419c0270d809d1f5b5495920fee74d8
2024/06/21 00:00:24  info unpack layer: sha256:71b2061ae78313d8e478c5041e9c211bb8dcbcca2fb8fb68919d160e3f79bba7
2024/06/21 00:00:24  info unpack layer: sha256:4875f80625a1d5205a895aab0104aa10f93be1b1a1c4a936a5b51fa9d0649f72
2024/06/21 00:00:36  info unpack layer: sha256:c911507ce8b0e1180d06ea1ad1cf00f2e2c8008a1ece5dc01182003e2da65540
2024/06/21 00:01:28  info unpack layer: sha256:9d7df5568bfacb71e39453ca0bcd16c3a7eae7f422bedfa3fed344180771fcf1
2024/06/21 00:01:31  info unpack layer: sha256:11bccfbee88ea63d03181d31ff61163d4bd5d2744560b521ecd639524d7d3f1e
2024/06/21 00:01:31  info unpack layer: sha256:81462f05685d893d796186d11f48902616e1ae6526ba08b05c06478779bbfbb0
2024/06/21 00:01:31  info unpack layer: sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1
2024/06/21 00:01:31  info unpack layer: sha256:d940cd3595a773cae2fd01ebc67d80b89048d55de8a2cc5146cab574786dbc66
2024/06/21 00:01:32  info unpack layer: sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1
2024/06/21 00:01:32  info unpack layer: sha256:79c85c30256880d334b8f9f8e1ca6bb16b8b75b4d8e01b71c32af9db23b35fa4
2024/06/21 00:01:36  info unpack layer: sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1
2024/06/21 00:01:36  info unpack layer: sha256:593ba8b94a7cfa5a1890252a48cf74ac898924ee37febe7f5faa03acfc14438d
2024/06/21 00:01:37  info unpack layer: sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1
INFO:    Creating SIF file...

```

Ok the SIF image file has been created. I can now pull the docker image into the conda environment and run the python script 

```
singularity exec docker://ghcr.io/marcelauliano/mitohifi:master mitohifi.py -h

```

Ok lets test 

```
(mitohifi) [trinity.conn@n063 ~]$ singularity exec --bind /home/trinity.conn/.conda/envs/mitohifi/  docker://ghcr.io/marcelauliano/mitohifi:master mitohifi.py -h
INFO:    Using cached SIF image
usage: MitoHiFi [-h] (-r <reads>.fasta | -c <contigs>.fasta) -f
                <relatedMito>.fasta -g <relatedMito>.gbk -t <THREADS> [-d]
                [-a {animal,plant,fungi}] [-p <PERC>] [-m <BLOOM FILTER>]
                [--max-read-len MAX_READ_LEN] [--mitos]
                [--circular-size CIRCULAR_SIZE]
                [--circular-offset CIRCULAR_OFFSET] [-winSize WINSIZE]
                [-covMap COVMAP] [-v] [-o <GENETIC CODE>]

required arguments:
  -r <reads>.fasta      -r: Pacbio Hifi Reads from your species
  -c <contigs>.fasta    -c: Assembled fasta contigs/scaffolds to be searched
                        to find mitogenome
  -f <relatedMito>.fasta
                        -f: Close-related Mitogenome is fasta format
  -g <relatedMito>.gbk  -k: Close-related species Mitogenome in genebank
                        format
  -t <THREADS>          -t: Number of threads for (i) hifiasm and (ii) the
                        blast search

optional arguments:
  -d                    -d: debug mode to output additional info on log
  -a {animal,plant,fungi}
                        -a: Choose between animal (default) or plant
  -p <PERC>             -p: Percentage of query in the blast match with close-
                        related mito
  -m <BLOOM FILTER>     -m: Number of bits for HiFiasm bloom filter [it maps
                        to -f in HiFiasm] (default = 0)
  --max-read-len MAX_READ_LEN
                        Maximum lenght of read relative to related mito
                        (default = 1.0x related mito length)
  --mitos               Use MITOS2 for annotation (opposed to default
                        MitoFinder
  --circular-size CIRCULAR_SIZE
                        Size to consider when checking for circularization
  --circular-offset CIRCULAR_OFFSET
                        Offset from start and finish to consider when looking
                        for circularization
  -winSize WINSIZE      Size of windows to calculate coverage over the
                        final_mitogenom
  -covMap COVMAP        Minimum mapping quality to filter reads when building
                        final coverage plot
  -v, --version         show program's version number and exit
  -o <GENETIC CODE>     -o: Organism genetic code following NCBI table (for
                        mitogenome annotation): 1. The Standard Code 2. The
                        Vertebrate MitochondrialCode 3. The Yeast
                        Mitochondrial Code 4. The Mold,Protozoan, and
                        Coelenterate Mitochondrial Code and the
                        Mycoplasma/Spiroplasma Code 5. The Invertebrate
                        Mitochondrial Code 6. The Ciliate, Dasycladacean and
                        Hexamita Nuclear Code 9. The Echinoderm and Flatworm
                        Mitochondrial Code 10. The Euplotid Nuclear Code 11.
                        The Bacterial, Archaeal and Plant Plastid Code 12. The
                        Alternative Yeast Nuclear Code 13. The Ascidian
                        Mitochondrial Code 14. The Alternative Flatworm
                        Mitochondrial Code 16. Chlorophycean Mitochondrial
                        Code 21. Trematode Mitochondrial Code 22. Scenedesmus
                        obliquus Mitochondrial Code 23. Thraustochytrium
                        Mitochondrial Code 24. Pterobranchia Mitochondrial
                        Code 25. Candidate Division SR1 and Gracilibacteria
                        Code
```

Success!! Now lets try running Jill's script.

First Error found: 

```
FileNotFoundError: [Errno 2] No such file or directory: '/data/putnamlab/jillashey/Apul_Genome/assembly/mito/ref_mito_genome/NC_081453.1.fasta'

```
Ok for some reason it is only able to read the files when it is in the working directory -- maybe becasue of the container issue? either way I got it running. I tried it first with the A.millepora refernece (NC_081453.1) but it continued to fail at the hifiasm assembly step. This indicates to me at first that there is no mitochondrial sequences in our reads. Not super surprising, since it is sperm. However when I tried it with the Acropora digitifera reference, it did work and a mitogenome was assembled. 

```

INFO:    Using cached SIF image
No gbk.HiFiMapped.bam.filtered.assembled.[a/p]_ctg.gfa file(s).
            An error may have occurred when assembling reads with HiFiasm.



```
```

#!/bin/bash
#SBATCH -t 48:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --mem=250GB
#SBATCH --mail-type=BEGIN,END,FAIL #email you when job starts, stops and/or fails
#SBATCH --mail-user=trinity.conn@uri.edu #your email to send notifications
#SBATCH --account=putnamlab
#SBATCH -o slurm-%j.out
#SBATCH -e slurm-%j.error

source ~/.bashrc
conda activate mitohifi

cd /data/putnamlab/tconn/mito

singularity exec --home /data/putnamlab/tconn/mito docker://ghcr.io/marcelauliano/mitohifi:master mitohifi.py -r m84100_240128_024355_s2.hifi_reads.bc1029.fasta \
 -f NC_022830.1.fasta -g NC_022830.1.gb \
 -t 8 \
 -o 5 #invert code

```
example of a successful run 

```
2024-06-21 13:49:51 [INFO] Welcome to MitoHifi v2. Starting pipeline...
2024-06-21 13:49:51 [INFO] Length of related mitogenome is: 18479 bp
2024-06-21 13:49:51 [INFO] Number of genes on related mitogenome: 17
2024-06-21 13:49:51 [INFO] Running MitoHifi pipeline in reads mode...
2024-06-21 13:49:51 [INFO] 1. First we map your Pacbio HiFi reads to the close-related mitogenome
2024-06-21 13:49:51 [INFO] minimap2 -t 8 --secondary=no -ax map-hifi NC_022830.1.fasta m84100_240128_024355_s2.hifi_reads.bc1029.fasta | samtools view -@ 8 -b -F4 -F 0x800 -o reads.HiFiMapped$
2024-06-21 13:55:23 [INFO] 2. Now we filter out any mapped reads that are larger than the reference mitogenome to avoid NUMTS
2024-06-21 13:55:23 [INFO] 2.1 First we convert the mapped reads from BAM to FASTA format:
2024-06-21 13:55:23 [INFO] samtools fasta reads.HiFiMapped.bam > gbk.HiFiMapped.bam.fasta
2024-06-21 13:55:24 [INFO] Total number of mapped reads: 1598
2024-06-21 13:55:24 [INFO] 2.2 Then we filter reads that are larger than 18479 bp
2024-06-21 13:55:24 [INFO] Number of filtered reads: 1506
2024-06-21 13:55:24 [INFO] 3. Now let's run hifiasm to assemble the mapped and filtered reads!
2024-06-21 13:55:24 [INFO] hifiasm --primary -t 8 -f 0 -o gbk.HiFiMapped.bam.filtered.assembled gbk.HiFiMapped.bam.filtered.fasta
2024-06-21 13:55:54 [INFO] 4. Let's run the blast of the contigs versus the close-related mitogenome
2024-06-21 13:55:54 [INFO] 4.1. Creating BLAST database:
2024-06-21 13:55:54 [INFO] makeblastdb -in NC_022830.1.fasta -dbtype nucl
2024-06-21 13:55:54 [INFO] Makeblastdb done.
2024-06-21 13:55:54 [INFO] 4.2. Running blast of contigs against close-related mitogenome:
2024-06-21 13:55:54 [INFO] blastn -query hifiasm.contigs.fasta -db NC_022830.1.fasta -num_threads 8 -out contigs.blastn -outfmt 6 std qlen slen
2024-06-21 13:55:55 [INFO] Blast done.
2024-06-21 13:55:55 [INFO] 5. Filtering BLAST output to select target sequences
2024-06-21 13:55:55 [INFO] Filtering thresholds applied:
2024-06-21 13:55:55 [INFO] Minimum query percentage = 50
2024-06-21 13:55:55 [INFO] Minimum query length = 80% subject length
2024-06-21 13:55:55 [INFO] Maximum query length = 5 times subject length
2024-06-21 13:55:55 [INFO] Filtering BLAST finished. A list of the filtered contigs was saved on ./contigs_filtering/contigs_ids.txt file
2024-06-21 13:55:55 [INFO] 6. Now we are going to circularize, annotate and rotate each filtered contig. Those are potential mitogenome(s).
2024-06-21 13:55:55 [INFO] Annotation will be done using MitoFinder (default)
2024-06-21 13:55:55 [INFO] Working with contig ptg000001c
2024-06-21 13:55:55 [INFO] Working with contig ptg000003l
2024-06-21 13:55:55 [INFO] Started ptg000001c circularization
2024-06-21 13:55:55 [INFO] Started ptg000003l circularization
2024-06-21 13:55:55 [INFO] ptg000001c circularization done. Circularization info saved on ./potential_contigs/ptg000001c/ptg000001c.circularisationCheck.txt
2024-06-21 13:55:55 [INFO] Started ptg000001c (MitoFinder) annotation
2024-06-21 13:55:56 [INFO] ptg000003l circularization done. Circularization info saved on ./potential_contigs/ptg000003l/ptg000003l.circularisationCheck.txt
2024-06-21 13:55:56 [INFO] Started ptg000003l (MitoFinder) annotation
2024-06-21 13:55:58 [INFO] ptg000001c annotation done. Annotation log saved on ./potential_contigs/ptg000001c/ptg000001c.annotation_MitoFinder.log
2024-06-21 13:58:54 [INFO] ptg000003l annotation done. Annotation log saved on ./potential_contigs/ptg000003l/ptg000003l.annotation_MitoFinder.log
2024-06-21 13:58:54 [INFO] Started ptg000001c rotation.
2024-06-21 13:58:54 [INFO] Started ptg000003l rotation.
2024-06-21 13:58:54 [INFO] tRNA-Gly is at reverse complement of ptg000003l.mitogenome.fa
2024-06-21 13:58:54 [INFO] For that reason we'll reverse complement ptg000003l.mitogenome.fa before the rotation
2024-06-21 13:58:55 [INFO] Reverse complementation completed for contig ptg000003l done
2024-06-21 13:58:55 [INFO] Rotation of ptg000003l done. Rotated is at ptg000003l.mitogenome.rotated.fa
2024-06-21 13:58:55 [INFO] Started calculating mitocontig stats... ptg000003l
2024-06-21 13:58:55 [INFO] 7. Now the rotated contigs will be aligned
2024-06-21 13:58:55 [INFO] List of contigs that will be aligned: ['ptg000003l.mitogenome.rotated.fa']

2024-06-21 13:58:55 [INFO] MAFFT alignment will be called with:
mafft --quiet --clustalout --thread 8 all_mitogenomes.rotated.fa > all_mitogenomes.rotated.aligned.aln

2024-06-21 13:58:55 [INFO] Alignment done and saved at ./final_mitogenome_choice/all_mitogenomes.rotated.aligned.aln

2024-06-21 13:58:55 [INFO] 8. Now we will choose the most representative contig

2024-06-21 13:58:56 [INFO] Representative contig is ptg000003l that belongs to Cluster 0. This contig will be our final mitogenome. See all contigs and clusters in cdhit.out.clstr
2024-06-21 13:58:56 [INFO] 9. Calculating final stats for final mitogenome and other potential contigs.
    Stats will be saved on contigs_stats.tsv file.
ptg000003l list of genes: ['tRNA-Gly', 'ND4', 'ATP6', 'ND6', 'ND2', 'tRNA-His', 'CYTB', 'ND1', 'tRNA-Glu', 'rrnL', 'tRNA-Ser', 'tRNA-Met', 'COX1', 'tRNA-Pro', 'ATP8', 'tRNA-Trp', 'ND5', 'tRNA$
2024-06-21 13:58:56 [INFO] 10. Building annotation plots for all contigs
2024-06-21 13:58:56 [INFO] 11. Building coverage distribution for each potential contig
2024-06-21 13:58:56 [INFO] contigs_to_map: ['final_mitogenome.fasta', 'ptg000003l.mitogenome.rotated.fa']
2024-06-21 13:58:56 [INFO] 11.1 Mapping HiFi (filtered) reads against potential contigs:
2024-06-21 13:58:56 [INFO] Reads mapping:
2024-06-21 13:58:56 [INFO] minimap2 -t 8 --secondary=no -ax map-pb all_potential_contigs.fa gbk.HiFiMapped.bam.fasta | samtools view -@ 8 -b -F4 -F 0x800 -q 0 -o HiFi-vs-potential_contigs.bam
[W::sam_hdr_parse] Duplicated sequence 'ptg000003l_rc_rotated'
2024-06-21 13:58:58 [INFO] Sorting mapping file:
2024-06-21 13:58:58 [INFO] samtools sort -@ 8 HiFi-vs-potential_contigs.bam -o HiFi-vs-potential_contigs.sorted.bam
[bam_sort_core] merging from 0 files and 8 in-memory blocks...
2024-06-21 13:58:58 [INFO] Indexing sorted mapping file:
2024-06-21 13:58:58 [INFO] samtools index HiFi-vs-potential_contigs.sorted.bam
2024-06-21 13:58:58 [INFO] HiFi reads mapping done. Output file: HiFi-vs-potential_contigs.sorted.bam
2024-06-21 13:58:58 [INFO] Retrieve BAM for contig ptg000003l:
2024-06-21 13:58:58 [INFO] samtools view -@ 8 -b -o ptg000003l.bam HiFi-vs-potential_contigs.sorted.bam ptg000003l_rc_rotated
2024-06-21 13:58:59 [INFO] Sorting mapping file:
2024-06-21 13:58:59 [INFO] samtools sort -@ 8 ptg000003l.bam -o ptg000003l.sorted.bam
[bam_sort_core] merging from 0 files and 8 in-memory blocks...
2024-06-21 13:58:59 [INFO] Indexing sorted mapping file:
2024-06-21 13:58:59 [INFO] samtools index ptg000003l.sorted.bam
2024-06-21 13:58:59 [INFO] Splitting mapping file done. Individual mapped contigs: ['ptg000003l']
2024-06-21 13:58:59 [INFO] 11.2 Creating coverage plot...
2024-06-21 13:58:59 [INFO] Coverage plots created.
2024-06-21 13:58:59 [INFO] 12. Building coverage distribution for final mitogenome
2024-06-21 13:58:59 [INFO] 12.1 Mapping HiFi (filtered) reads against final_mitogenome.fasta:
2024-06-21 13:58:59 [INFO] Reads mapping:
2024-06-21 13:58:59 [INFO] minimap2 -t 8 --secondary=no -ax map-pb final_mitogenome.fasta gbk.HiFiMapped.bam.fasta | samtools view -@ 8 -b -F4 -F 0x800 -q 0 -o HiFi-vs-final_mitogenome.bam
2024-06-21 13:59:00 [INFO] Sorting mapping file:
2024-06-21 13:59:00 [INFO] samtools sort -@ 8 HiFi-vs-final_mitogenome.bam -o HiFi-vs-final_mitogenome.sorted.bam
[bam_sort_core] merging from 0 files and 8 in-memory blocks...
2024-06-21 13:59:01 [INFO] Indexing sorted mapping file:
2024-06-21 13:59:01 [INFO] samtools index HiFi-vs-final_mitogenome.sorted.bam
2024-06-21 13:59:01 [INFO] HiFi reads mapping done. Output file: HiFi-vs-final_mitogenome.sorted.bam
2024-06-21 13:59:01 [INFO] 12.2 Creating coverage plot...
2024-06-21 13:59:01 [INFO] Coverage plot for final_mitogenome created...
2024-06-21 13:59:06 [INFO] Pipeline finished!
2024-06-21 13:59:06 [INFO] Run time: 554.82 seconds
Mito assembly complete! Fri Jun 21 13:59:06 EDT 2024



```

Output files of mitohifi are


```
-rw-r--r--. 1 trinity.conn putnamlab       37622 Jun 21 13:58 all_potential_contigs.fa
-rw-r--r--. 1 trinity.conn putnamlab       48250 Jun 21 13:58 contigs_annotations.png
drwxr-xr-x. 2 trinity.conn putnamlab        4096 Jun 21 13:59 contigs_circularization
drwxr-xr-x. 2 trinity.conn putnamlab        4096 Jun 21 13:59 contigs_filtering
-rw-r--r--. 1 trinity.conn putnamlab         275 Jun 21 13:58 contigs_stats.tsv
drwxr-xr-x. 2 trinity.conn putnamlab        4096 Jun 21 13:59 coverage_mapping
-rw-r--r--. 1 trinity.conn putnamlab       19459 Jun 21 13:58 coverage_plot.png
-rw-r--r--. 1 trinity.conn putnamlab       48340 Jun 21 13:58 final_mitogenome.annotation.png
-rw-r--r--. 1 trinity.conn putnamlab       19549 Jun 21 13:59 final_mitogenome.coverage.png
-rw-r--r--. 1 trinity.conn putnamlab       18811 Jun 21 13:58 final_mitogenome.fasta
-rw-r--r--. 1 trinity.conn putnamlab       32957 Jun 21 13:58 final_mitogenome.gb
drwxr-xr-x. 2 trinity.conn putnamlab        4096 Jun 21 13:59 final_mitogenome_choice
-rw-r--r--. 1 trinity.conn putnamlab 79417471867 Jun 21 12:39 m84100_240128_024355_s2.hifi_reads.bc1029.fasta
drwxr-xr-x. 4 trinity.conn putnamlab        4096 Jun 21 13:59 potential_contigs
drwxr-xr-x. 2 trinity.conn putnamlab        4096 Jun 21 13:59 reads_mapping_and_assembly
-rw-r--r--. 1 trinity.conn putnamlab        1004 Jun 21 13:58 shared_genes.tsv
```
Final MitoGenome Annotation: 

![final_mitogenome annotation](https://github.com/TrinityConn/Apulchra_Genome/assets/28198864/0a6683d3-9085-4da6-a56b-f1b56db0c12f)

It looks like the mitogenome we assembled is 18480 bp in length with 24 genes. The Acropora digitifera reference was 18479 bp in length with 17 genes. 

Given the strangeness of the run with A.millepora vs. A.digitifera I'm going to run it again with one more reference, and see if I'm able to assemble a mitogenome. Doesn't need to be that close phylogenetically, so it is strange. Could have something to do with the annotation of the A.millepora mitogenome?

### 07172024

Finally back up and running now that I am at Shedd! Looks like getting the mitogenome running for Jill was good -- she went ahead and used that assembly to purtge the mitochondrial sequences and reran the assembly after purging symbiont, bacterial/prokaryotic/mitochondrial sequenes. This left her with a final assembly using hifiasm. The fasta file with only the clean (no contaminant) reads is /data/putnamlab/jillashey/Apul_Genome/assembly/data/hifi_rr_allcontam_rem.fasta

Jill used hifiasm to assemble the genome and the primary assembly file is apul.hifiasm.s55_pa.p_ctg.gfa, alternate assembly is apul.hifiasm.s55_pa.a_ctg.gfa. Jill then ran BUSCO on the primary assembly and got a score of 93.3% total completeness, and 92% single copy BUSCO. Amaze. 

Jill then used ntlinks to scaffold the assembly and ran quast on it. N50 looks good. Final scaffolded assembly is located in apul.hifiasm.s55_pa.p_ctg.fa.k32.w100.z1000.ntLink.5rounds.fa

The next thing to do i think is to run blobtools on the final assembly to just get final confirmation/visualization that the assembly is clean. 
We will be using workflow A 

First, install blobtools on conda 

```
interactive

conda install bioconda::blobtools

```



### 072524
Beginning to run repeat masker and repeat modeler on jill's assembly

First, install repeatmodeler/masker

```
interactive

mamba install repeatmasker

```

THe first step to masking repeats is to model likely repeat regions. This is done using repeat modeler.REpeat modeler will create a database of repeats for my species to be masked.

de novo repeat library creation: 

- will sometimes label repetitive regions in genes etc. and we don't want those masked. Use a protein database from a closely related species to check the identified repeat models. --will probably download Zach Fuller's millepora protein database

```
#first we need to create the database to run the repeat modeler programs over -- using the fasta file from Jill's assembly
#!/bin/bash
#SBATCH -t 48:00:00
#SBATCH --nodes=1 --ntasks-per-node=20
#SBATCH --mem=50GB
#SBATCH --mail-type=BEGIN,END,FAIL #email you when job starts, stops and/or fails
#SBATCH --mail-user=trinity.conn@uri.edu #your email to send notifications
#SBATCH --account=putnamlab
#SBATCH -o slurm-%j.out
#SBATCH -e slurm-%j.error


#load repeatmodeler
source ~/.bashrc
conda activate repeatmasker

#build database for repeat modeler to be run over
cd /data/putnamlab/tconn/repeats

BuildDatabase -engine ncbi -name apulchra apul.hifiasm.s55_pa.p_ctg.fa.k32.w100.z1000.ntLink.5rounds.fa


```
Output of BuildDatabase: 

```
Building database apulchra:
  Reading apul.hifiasm.s55_pa.p_ctg.fa.k32.w100.z1000.ntLink.5rounds.fa...
Number of sequences (bp) added to database: 174 ( 518313916 bp )


```







