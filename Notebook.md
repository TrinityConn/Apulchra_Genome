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
Met with Ross, Hollie and Jill to establish status of genome assembly. Jill is currently removing contaminant reads (bacteria, viruses, symbionts etc.). Jill is trying to work on getting MitoHifi to work, and then the next steps will be to ID and mask repeats, and then annotate the genome using Funannotate. 

### 06212024

I gained affiliate access to the URI cluster and began to set up my conda environments and such. All data on the URI cluster should be located under data/putnamlab/tconn. There is no scratch environment in 

'''
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

'''


