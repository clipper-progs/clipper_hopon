# Clipper Hop On 


This repository contains a template for how to use clipper in a C++ program. It supplies the libraries and base of makefile to enable simple clipper based program creation. 


### Development

#### Prerequisites

You must have 
 - Clipper
 - MMDB2

installed, which come included in the CCP4. To ensure they are in your path, you must source the appropriate script. To do this run: 

    source /opt/xtal/ccp4-X.X/bin/ccp4.setup-sh 
where X.X is your CCP4 version. 
 
#### Development

To compile this, just simply run: 

    make
and the executable 'cnautilus' should be created in the root directory of the project. 

### Running

To run the executable run: 

    ./<EXEC_NAME>