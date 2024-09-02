To Initialize the folder and set up-
* chmod +x install.sh sources.list nachos-project-master/ mips-decstation.linux-xgcc.gz
* ./install.sh
* tar -zxvf mips-decstation.linux-xgcc.gz
* cd nachos-project-master
* chmod +x full_install.sh lint.sh coff2noff
* ./full_install.sh
* ./build_nachos.sh
* ./build_test.sh
* If error - chmod +x ./coff2noff/coff2noff.x86Linux, then ./build_test.sh
* cd code/build.linux/
* ./nachos -x ../text/add
