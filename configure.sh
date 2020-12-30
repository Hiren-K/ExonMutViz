clear
echo "**********************************************************************************************************************************"
echo "***********************************                                                             **********************************"
echo "***********************************                                                             **********************************"
echo "************   WELCOME TO PAPVIZ, A VISUALIATION TOOL FOR MAP READ COVERAGE ON GENOMIC TRANSCRIPTS   *****************************"
echo "***********************************           PREPARED BY Hiren Karathia, PhD                   **********************************"
echo "***********************************                                                             **********************************"
echo "***********************************                                                             **********************************"
echo "***********************************                                                             **********************************"
echo "**********************************************************************************************************************************"

echo "Please enter directory whewre you want to install Python 3: "
read py_dir
echo "You entered: $py_dir"
cd $py_dir

if [ -d $py_dir/miniconda3 ];
then
  echo ""
  echo ""
  echo "MiniConda is already Exista !! Do not need to install "
  conda_home=$py_dir/miniconda3
  echo ""
  echo ""
else
  echo ""
  echo ""
  wget "https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh"
  bash Miniconda3-latest-Linux-x86_64.sh
  conda_home=$py_dir/miniconda3
  unset PYTHON
  unset PYTHONPATH
  PYTHON=$conda_home/bin/python
  export PATH=$conda_home/bin:$PATH
  export PYTHONPATH=$conda_home/bin:$PYTHONPATH
  export PYTHONPATH=$conda_home/lib/python3.6/site-packages:$PYTHONPATH
fi
  
if [ -d $py_dir/miniconda3/envs/Py3 ];
then
  echo ""
  echo ""
  echo "Virtual Python for the PyViz is also Configured "
  conda_home=$py_dir/miniconda3
  echo ""
  echo ""
  pyconda="$conda_home/envs/Py3"
  source activate $pyconda
else  
  $conda_home/bin/conda create --name Py3 python=3 numpy matplotlib Pillow
  pyconda="$conda_home/envs/Py3"
  source activate $pyconda
fi

python $py_dir/script/PapViz.py

echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "**********************************************************************************************************************************"
echo "*********************************** CONGRATULATIONS YOUR JOB IS FINISED SUCCESSFULLY   *******************************************"
echo "**********************************************************************************************************************************"
