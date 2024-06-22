# Working file to describe the workflow of annotating the Acropora pulchra genome 

Funannotate Github: https://github.com/nextgenusfs/funannotate 

Funannotate requires a soft-masked genome file. A.pulchra genome will need to be run with Repeat Modeler and Repeat Masker to identify and mask repeat regions. 

# Repeat Modeler 

Ok so the first step is running Repeat Modeler. Repeat Modeler and Repeat Masker are both used. Repeat Modeler discovers TE. We will use Repeat Modeler to identify likely TEs and then RepeatMasker to identify those in the assembled genome. 
