#!/bin/bash
wget https://ftp.gromacs.org/gromacs/gromacs-2020.6.tar.gz
tar xfz gromacs-2020.6.tar.gz
cd gromacs-2020.6
mkdir build
cd build
cmake .. -DGMX_BUILD_OWN_FFTW=ON -DREGRESSIONTEST_DOWNLOAD=ON -DGMX_GPU=CUDA -DCMAKE_INSTALL_PREFIX=$HOME/gromacs_2020.6
make
make check
make install
echo 'source $HOME/gromacs_2020.6/bin/GMXRC' >> $HOME/.bashrc
rm -r gromacs-2020.6
rm gromacs-2020.6.tar.gz
