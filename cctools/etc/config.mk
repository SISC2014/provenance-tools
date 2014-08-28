# Generated at Thu Jul 10 16:13:51 CDT 2014 by rkommineni@login.atlas.ci-connect.net

CCTOOLS_INSTALL_DIR=/home/rkommineni/cctools
CCTOOLS_PACKAGES= dttools chirp work_queue sand allpairs wavefront makeflow ftp_lite parrot resource_monitor resource_monitor_visualizer makeflow_linker doc

CCTOOLS_CC=@echo COMPILE $@;gcc
CCTOOLS_BASE_CCFLAGS=-D__EXTENSIONS__ -D_LARGEFILE64_SOURCE -D__LARGE64_FILES -Wall -Wextra -Wno-unused-parameter -Wno-unknown-pragmas -Wno-deprecated-declarations -fPIC -DHAS_ISNAN -DHAVE_ISNAN -DSQLITE_HAVE_ISNAN -DHAS_PREAD -DHAS_PWRITE -DHAS_STRSIGNAL -DHAS_USLEEP -DHAVE_USLEEP -DHAS_UTIME -DHAVE_UTIME -DHAS_FTS_H -DHAS_INTTYPES_H -DHAVE_INTTYPES_H -DHAS_STDINT_H -DHAVE_STDINT_H -DHAS_SYS_STATFS_H -DHAS_SYS_STATVFS_H -DHAS_SYS_XATTR_H -DHAS_SYSLOG_H -DINSTALL_PATH='"/home/rkommineni/cctools"' -g -D_REENTRANT -D_GNU_SOURCE -DBUILD_USER='"rkommineni"' -DBUILD_HOST='"login.atlas.ci-connect.net"' -DCCTOOLS_VERSION_MAJOR=4 -DCCTOOLS_VERSION_MINOR=3 -DCCTOOLS_VERSION_MICRO='"0"' -DCCTOOLS_VERSION='"4.3.0-TRUNK"' -DCCTOOLS_RELEASE_DATE='"07/10/2014"' -DCCTOOLS_CONFIGURE_ARGUMENTS='"--prefix /home/rkommineni/cctools"' -DCCTOOLS_SYSTEM_INFORMATION='"Linux login.atlas.ci-connect.net 3.11.0-UL1.el6 \#1 SMP Wed Sep 11 13:47:29 CDT 2013 x86_64 x86_64 x86_64 GNU/Linux"' -DCCTOOLS_OPSYS_LINUX -DCCTOOLS_CPU_X86_64
CCTOOLS_INTERNAL_CCFLAGS= -I/home/rkommineni/cctools-src/dttools/src -I/home/rkommineni/cctools-src/chirp/src -I/home/rkommineni/cctools-src/work_queue/src -I/home/rkommineni/cctools-src/sand/src -I/home/rkommineni/cctools-src/allpairs/src -I/home/rkommineni/cctools-src/wavefront/src -I/home/rkommineni/cctools-src/makeflow/src -I/home/rkommineni/cctools-src/ftp_lite/src -I/home/rkommineni/cctools-src/parrot/src -I/home/rkommineni/cctools-src/resource_monitor/src -I/home/rkommineni/cctools-src/resource_monitor_visualizer/src -I/home/rkommineni/cctools-src/makeflow_linker/src ${CCTOOLS_BASE_CCFLAGS}
CCTOOLS_CCFLAGS=-I${CCTOOLS_INSTALL_DIR}/include/cctools ${CCTOOLS_BASE_CCFLAGS}

CCTOOLS_CXX=@echo COMPILE $@;g++
CCTOOLS_BASE_CXXFLAGS=-D__EXTENSIONS__ -D_LARGEFILE64_SOURCE -D__LARGE64_FILES -Wall -Wextra -Wno-unused-parameter -Wno-unknown-pragmas -Wno-deprecated-declarations -fPIC -DHAS_ISNAN -DHAVE_ISNAN -DSQLITE_HAVE_ISNAN -DHAS_PREAD -DHAS_PWRITE -DHAS_STRSIGNAL -DHAS_USLEEP -DHAVE_USLEEP -DHAS_UTIME -DHAVE_UTIME -DHAS_FTS_H -DHAS_INTTYPES_H -DHAVE_INTTYPES_H -DHAS_STDINT_H -DHAVE_STDINT_H -DHAS_SYS_STATFS_H -DHAS_SYS_STATVFS_H -DHAS_SYS_XATTR_H -DHAS_SYSLOG_H -DINSTALL_PATH='"/home/rkommineni/cctools"' -g -D_REENTRANT -D_GNU_SOURCE -DBUILD_USER='"rkommineni"' -DBUILD_HOST='"login.atlas.ci-connect.net"' -DCCTOOLS_VERSION_MAJOR=4 -DCCTOOLS_VERSION_MINOR=3 -DCCTOOLS_VERSION_MICRO='"0"' -DCCTOOLS_VERSION='"4.3.0-TRUNK"' -DCCTOOLS_RELEASE_DATE='"07/10/2014"' -DCCTOOLS_CONFIGURE_ARGUMENTS='"--prefix /home/rkommineni/cctools"' -DCCTOOLS_SYSTEM_INFORMATION='"Linux login.atlas.ci-connect.net 3.11.0-UL1.el6 \#1 SMP Wed Sep 11 13:47:29 CDT 2013 x86_64 x86_64 x86_64 GNU/Linux"' -DCCTOOLS_OPSYS_LINUX -DCCTOOLS_CPU_X86_64
CCTOOLS_INTERNAL_CXXFLAGS= -I/home/rkommineni/cctools-src/dttools/src -I/home/rkommineni/cctools-src/chirp/src -I/home/rkommineni/cctools-src/work_queue/src -I/home/rkommineni/cctools-src/sand/src -I/home/rkommineni/cctools-src/allpairs/src -I/home/rkommineni/cctools-src/wavefront/src -I/home/rkommineni/cctools-src/makeflow/src -I/home/rkommineni/cctools-src/ftp_lite/src -I/home/rkommineni/cctools-src/parrot/src -I/home/rkommineni/cctools-src/resource_monitor/src -I/home/rkommineni/cctools-src/resource_monitor_visualizer/src -I/home/rkommineni/cctools-src/makeflow_linker/src ${CCTOOLS_BASE_CXXFLAGS}
CCTOOLS_CXXFLAGS=-I${CCTOOLS_INSTALL_DIR}/include/cctools ${CCTOOLS_BASE_CXXFLAGS}

CCTOOLS_LD = @echo LINK $@;gcc
CCTOOLS_BASE_LDFLAGS = -Xlinker -Bstatic -static-libgcc -Xlinker -Bdynamic -Xlinker --as-needed -g
CCTOOLS_INTERNAL_LDFLAGS = $(CCTOOLS_BASE_LDFLAGS) 
CCTOOLS_EXTERNAL_ARCHIVES = 
CCTOOLS_EXTERNAL_DYNLIBS =  -lssl -lcrypto -lresolv -lnsl -lrt -ldl -lz -lstdc++ -lpthread -lz -lc -lm
CCTOOLS_EXTERNAL_LINKAGE = $(CCTOOLS_EXTERNAL_ARCHIVES) $(CCTOOLS_EXTERNAL_DYNLIBS)
CCTOOLS_LDFLAGS = -L$(CCTOOLS_INSTALL_DIR)/lib $(CCTOOLS_BASE_LDFLAGS)

CCTOOLS_MPI_LD=@echo MPI_LINK $@;
CCTOOLS_USE_MPI=false

CCTOOLS_READLINE_LDFLAGS=

CCTOOLS_DYNAMIC_SUFFIX=so
CCTOOLS_DYNAMIC_FLAG=-shared

CC=$(CCTOOLS_CC)
CCFLAGS=$(CCTOOLS_CCFLAGS)
LD=$(CCTOOLS_LD)
LDFLAGS=$(CCTOOLS_LDFLAGS)
CXX=$(CCTOOLS_CXX)
CXXFLAGS=$(CCTOOLS_CXXFLAGS)
MPILD=$(CCTOOLS_MPI_LD)

CCTOOLS_AR=ar

CCTOOLS_SWIG=/usr/bin/swig

CCTOOLS_PERL=0
CCTOOLS_PERL_CCFLAGS=
CCTOOLS_PERL_LDFLAGS=
CCTOOLS_PERL_VERSION=5.10.1

CCTOOLS_PYTHON=/usr/bin/python2
CCTOOLS_PYTHON_CCFLAGS=-I/usr/include/python2.6 -I/usr/include/python2.6 -fno-strict-aliasing -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -m64 -mtune=generic -D_GNU_SOURCE -fPIC -fwrapv -DNDEBUG -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -m64 -mtune=generic -D_GNU_SOURCE -fPIC -fwrapv
CCTOOLS_PYTHON_LDFLAGS=-lpthread -ldl -lutil -lm
CCTOOLS_PYTHON_VERSION=2.6

CCTOOLS_PYTHON3=0
CCTOOLS_PYTHON3_CCFLAGS=
CCTOOLS_PYTHON3_LDFLAGS=
CCTOOLS_PYTHON3_VERSION=.
CCTOOLS_PYTHON3_2TO3=

CCTOOLS_WORK_QUEUE_BINDINGS= python

CCTOOLS_DOCTARGETS= apipages htmlpages manpages

CCTOOLS_M4_ARGS=-DCCTOOLS_VERSION=4.3.0 -DCCTOOLS_RELEASE_DATE=07/10/2014

CCTOOLS_BUILD_LIB64PARROT_HELPER=yes
CCTOOLS_BUILD_LIB32PARROT_HELPER=yes

CCTOOLS_VERSION=4.3.0-TRUNK
CCTOOLS_RELEASEDATE=07/10/2014

