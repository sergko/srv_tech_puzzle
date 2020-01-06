Role Name
=========

A brief description of the role goes here.

Requirements
------------

####################################
# CONFIGURATION #
# /mnt/zfs05tb_kvm/vbox
# VM STORAGE
# https://www.virtualbox.org/manual/ch08.html#vboxmanage-setproperty
# VBoxManage setproperty
# This command is used to change global settings which affect the entire Oracle VM VirtualBox installation. Some of these correspond to the settings in the Global Settings dialog in the graphical user interface. The following properties are available:
# machinefolder
#     Specifies the default folder in which virtual machine definitions are kept. See Section 10.1, “Where Oracle VM VirtualBox Stores its Files”.

vboxmanage list [--long|-l] [--sorted|-s]
  vms|runningvms|ostypes|hostdvds|hostfloppies|intnets|bridgedifs|hostonlyifs|natnets|dhcpservers|hostinfo|hostcpuids|hddbackends|hdds|dvds|floppies|usbhost|usbfilters|systemproperties|extpacks|groups|webcams|screenshotformats|cloudproviders|cloudprofiles
vboxmanage list systemproperties #for user who run this command!!!!

vboxmanage   setproperty
  machinefolder default|<folder> |
  hwvirtexclusive on|off |
  vrdeauthlibrary default|<library> |
  websrvauthlibrary default|null|<library> |
  vrdeextpack null|<library> |
  autostartdbpath null|<folder> |
  loghistorycount <value>
  defaultfrontend default|<name>
  logginglevel <log setting>
  proxymode system|noproxy|manual
  proxyurl <url>

vboxmanage setproperty machinefolder /mnt/zfs05tb_kvm/vbox


vboxmanage
  natnetwork                list [<pattern>]
                            add /  remove / start / stop

root@usrv:~/VirtualBox VMs# VBoxManage list vms
"ubuntu1804-v0.1" {7116bece-8a7f-411d-9b89-3fd8ecd98003}

VBoxManage controlvm ubuntu1804-v0.1 acpipowerbutton

VBoxManage unregistervm  ubuntu1804-v0.1 --delete # delete from disk!!!!! could be skipped