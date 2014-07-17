provenance-tools
================

Contains all the packaging tools used so far.

Parrot packaging tool
---------------------
Contact: Haiyan Meng, University of Notre Dame

Installation Steps:
-------------------
A. From Source(for latest version)
--------------
1. git clone git://github.com/cooperative-computing-lab/cctools.git cctools-src	
2. cd cctools-src	
3. ./configure --prefix $HOME/cctools	
4. make	
5. make install	
6. export PATH=$HOME/cctools/bin:$PATH

B. From tarball
---------------
1. cd $HOME
2. git clone https://github.com/SISC2014/provenance-tools.git
3. tar xvf provenance-tools/parrot.tar
4. export PATH=$HOME/cctools/bin:$PATH

Execution Instructions:
-----------------------
# Run your desired program inside of parrot, giving options to record the files accessed	
1. parrot_run --name-list my.namelist --env-list my.envlist <execution-command>

More details at http://ccl.cse.nd.edu/software/autobuild-doc/man/parrot_run.html
	
# Package up the files mentioned in the namelist	
2. parrot_package_create --name-list my.namelist --env-list my.envlist --package-path my.package

More details at http://ccl.cse.nd.edu/software/autobuild-doc/man/parrot_package_create.html
	
# Now, my.package contains a complete filesystem sufficient to run the original command.	
# It is just a plain filesystem tree, so you can edit and add/remove files as needed.	
# To re-run it, you need a tool that can provide the modified namespace.	
# We provide tools to do that with parrot or chroot, but docker or vms are also possible	

3. parrot_package_run --package-path my.package <execution-command>	
   
   (or)
   
   chroot_package_run --package-path my.package <execution-command>
   
More details at http://ccl.cse.nd.edu/software/autobuild-doc/man/parrot_package_run.html
More details at http://ccl.cse.nd.edu/software/autobuild-doc/man/chroot_package_run.html