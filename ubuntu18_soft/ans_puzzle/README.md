# owncloudXauto
automation owncloud setup/coonfig/maintainance

requirements:
apt install -y git python3-pip ssh
git clone https://github.com/sergko/srv_tech_puzzle.git
cd srv_tech_puzzle
make useradd
pip3 install ansible==2.8.4


set in commandline
$ ansible localhost -m ping -e 'ansible_python_interpreter=/usr/bin/python3'
$ ansible-playbook sample-playbook.yml -e 'ansible_python_interpreter=/usr/bin/python3'
$ mkdir /etc/ansible #+ touch hosts (as at Python3 link above)
https://docs.ansible.com/ansible/latest/cli/ansible-config.html#ansible-config
$ ansible-config -c /etc/ansible/ansible.cfg  
$ ansible all -m setup | less # from hosts - print all config in json
$ ansible -m setup | less
$ ansible-doc -l # list all modules
$ ansible-inventory --list  or --graph - see in Inventory

ansible.cfg usefull # есть в /etc/ansible/ если установлен apt/yum but not pip
#лучше всегда держать в папке с проектом именно конкретный
[defaults]
host_key_checking = false # не будет спрашивать подтверждение фингерпринта при первом подключении, чтобы добавлять в известные хосты authorization_keys
inventory = ./inventory # or ./hosts.txt



serg@np:~/Rep_gitkraken/srv_tech_puzzle/ubuntu18_soft/ans_puzzle$ pip3 freeze | grep ans
ansible==2.6.1
serg@np:~/Rep_gitkraken/srv_tech_puzzle/ubuntu18_soft/ans_puzzle$ pip3 install ansible==2.8.4
Collecting ansible==2.8.4
  Downloading https://files.pythonhosted.org/packages/93/cd/914c5f323b705afc53e521afe591490e5eb0bf118ec144547eb6cf84a87c/ansible-2.8.4.tar.gz (14.3MB)
    100% |████████████████████████████████| 14.4MB 86kB/s 
Collecting jinja2 (from ansible==2.8.4)
  Downloading https://files.pythonhosted.org/packages/1d/e7/fd8b501e7a6dfe492a433deb7b9d833d39ca74916fa8bc63dd1a4947a671/Jinja2-2.10.1-py2.py3-none-any.whl (124kB)
    100% |████████████████████████████████| 133kB 4.2MB/s 
Collecting PyYAML (from ansible==2.8.4)
  Downloading https://files.pythonhosted.org/packages/e3/e8/b3212641ee2718d556df0f23f78de8303f068fe29cdaa7a91018849582fe/PyYAML-5.1.2.tar.gz (265kB)
    100% |████████████████████████████████| 266kB 2.9MB/s 
Collecting cryptography (from ansible==2.8.4)
  Downloading https://files.pythonhosted.org/packages/97/18/c6557f63a6abde34707196fb2cad1c6dc0dbff25a200d5044922496668a4/cryptography-2.7-cp34-abi3-manylinux1_x86_64.whl (2.3MB)
    100% |████████████████████████████████| 2.3MB 457kB/s 
Collecting MarkupSafe>=0.23 (from jinja2->ansible==2.8.4)
  Downloading https://files.pythonhosted.org/packages/b2/5f/23e0023be6bb885d00ffbefad2942bc51a620328ee910f64abe5a8d18dd1/MarkupSafe-1.1.1-cp36-cp36m-manylinux1_x86_64.whl
Collecting cffi!=1.11.3,>=1.8 (from cryptography->ansible==2.8.4)
  Downloading https://files.pythonhosted.org/packages/5f/bf/6aa1925384c23ffeb579e97a5569eb9abce41b6310b329352b8252cee1c3/cffi-1.12.3-cp36-cp36m-manylinux1_x86_64.whl (430kB)
    100% |████████████████████████████████| 440kB 1.6MB/s 
Collecting asn1crypto>=0.21.0 (from cryptography->ansible==2.8.4)
  Downloading https://files.pythonhosted.org/packages/ea/cd/35485615f45f30a510576f1a56d1e0a7ad7bd8ab5ed7cdc600ef7cd06222/asn1crypto-0.24.0-py2.py3-none-any.whl (101kB)
    100% |████████████████████████████████| 102kB 7.6MB/s 
Collecting six>=1.4.1 (from cryptography->ansible==2.8.4)
  Downloading https://files.pythonhosted.org/packages/73/fb/00a976f728d0d1fecfe898238ce23f502a721c0ac0ecfedb80e0d88c64e9/six-1.12.0-py2.py3-none-any.whl
Collecting pycparser (from cffi!=1.11.3,>=1.8->cryptography->ansible==2.8.4)
  Downloading https://files.pythonhosted.org/packages/68/9e/49196946aee219aead1290e00d1e7fdeab8567783e83e1b9ab5585e6206a/pycparser-2.19.tar.gz (158kB)
    100% |████████████████████████████████| 163kB 3.6MB/s 
Building wheels for collected packages: ansible, PyYAML, pycparser
  Running setup.py bdist_wheel for ansible ... done
  Stored in directory: /home/serg/.cache/pip/wheels/6c/fd/b4/cba196b35ad1c8b3497c8112122f29640001a05457d2b70948
  Running setup.py bdist_wheel for PyYAML ... done
  Stored in directory: /home/serg/.cache/pip/wheels/d9/45/dd/65f0b38450c47cf7e5312883deb97d065e030c5cca0a365030
  Running setup.py bdist_wheel for pycparser ... done
  Stored in directory: /home/serg/.cache/pip/wheels/f2/9a/90/de94f8556265ddc9d9c8b271b0f63e57b26fb1d67a45564511
Successfully built ansible PyYAML pycparser
Installing collected packages: MarkupSafe, jinja2, PyYAML, pycparser, cffi, asn1crypto, six, cryptography, ansible
Successfully installed MarkupSafe-1.1.1 PyYAML-5.1.2 ansible-2.8.4 asn1crypto-0.24.0 cffi-1.12.3 cryptography-2.7 jinja2-2.10.1 pycparser-2.19 six-1.12.0
