#!/bin/bash

if [ -e project_vim ]; then
    # rmdir project_vim
    rm -rf project_vim
fi
mkdir project_vim

# find block/                                     -name \*.[csSh] >> project_vim/cscope.files 
# find crypto/                                    -name \*.[csSh] >> project_vim/cscope.files 
find drivers/                                   -name \*.[csSh] >> project_vim/cscope.files 
# find firmware/                                  -name \*.[csSh] >> project_vim/cscope.files 
# find fs/                                        -name \*.[csSh] >> project_vim/cscope.files 
find include/                                   -name \*.[csSh] >> project_vim/cscope.files 
find init/                                      -name \*.[csSh] >> project_vim/cscope.files 
find ipc/                                       -name \*.[csSh] >> project_vim/cscope.files 
find kernel/                                    -name \*.[csSh] >> project_vim/cscope.files 
find lib/                                       -name \*.[csSh] >> project_vim/cscope.files 
find mm/                                        -name \*.[csSh] >> project_vim/cscope.files 
# find net/                                       -name \*.[csSh] >> project_vim/cscope.files 
# find samples/                                   -name \*.[csSh] >> project_vim/cscope.files 
# find scripts/                                   -name \*.[csSh] >> project_vim/cscope.files 
# find security/                                  -name \*.[csSh] >> project_vim/cscope.files 
# find sound/                                     -name \*.[csSh] >> project_vim/cscope.files 
# find tools/                                     -name \*.[csSh] >> project_vim/cscope.files 
# find usr/                                       -name \*.[csSh] >> project_vim/cscope.files 
# find virt/                                      -name \*.[csSh] >> project_vim/cscope.files           

find arch/arm/boot/                             -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/common/                           -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/configs/                          -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/crypto/                           -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/firmware/                         -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/include/                          -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/kernel/                           -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/kvm/                              -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/lib/                              -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/mach-imx/                         -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/mm/                               -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/net/                              -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/nwfpe/                            -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/oprofile/                         -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/probes/                           -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/tools/                            -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/vdso/                             -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/vfp/                              -name \*.[csSh] >> project_vim/cscope.files
find arch/arm/xen/                              -name \*.[csSh] >> project_vim/cscope.files

cscope -bqk -i project_vim/cscope.files -f project_vim/cstags
ctags -R --c++-kinds=+px --fields=+aiKSz --extra=+q -L project_vim/cscope.files -o project_vim/tags
exit 0
