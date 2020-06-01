https://github.com/elthonf/DemonstracaoEnvironments.git

echo "Este script não faz parte do exercício, apenas das respostas."
conda create -n myenv01A -y python=3.6
conda create -n myenv01B -y python=2.7
conda create -n myenv01C -y python=3.7

echo "##### ##### ##### ##### ##### #####"
echo "To check envs, use 'conda env list'"
conda env list

echo "To change to a env, use 'conda activate name'"


# Instala pacotes

conda activate myenv01A
pip list
pip install -r Pacote01/requirements.txt

conda activate myenv01B
pip list
pip install -r Pacote02/requirements.txt

conda activate myenv01C
pip list
pip install -r Pacote03/requirements.txt


# Testa / exec modulos

conda activate myenv01A
python Pacote01/main01.py

conda activate myenv01B
python Pacote02/main02.py

conda activate myenv01C
python Pacote03/main03.py