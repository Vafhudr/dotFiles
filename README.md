# Notes & Dotfiles

# Software
## Linux
**OS;**
Arch Linux

**Shell;**
Zsh

**WM;**
i3-Gaps

**Browsers;**
w3m, qutebrowser

**File Sharing;**
Nextcloud, DriveSync, Dropbox, rTorrent, Curl, Wget

**Communication;**
Irssi, NeoMutt

**Multimedia;**
feh, mpd, ncmpcpp, mpv

**Utility;**
ranger, htop, neofetch, neovim, KeepassC, dunst, tmux, fzf, openssh, zathura

## Windows
**OS**
Windows 10 Enterprise LTSC

**Browsers;**
Vivaldi 

**Browser Extentions;**
Ublock Origin, HTTPS everywhere, Decentraleyes, Privacy Badger, Private Internet Access, Reddit Enchancement Suite, 4chanX

**File Sharing;**
Nextcloud, GoogleDrive, Dropbox, qBittorrent

**Communication;**
Discord 

**Gaming;**
Steam, Battle.net, Origin, Magic the Gathering: Online, Magic The Gathering: Arena, Raider.io Client, TradeSkillMaster Client, Tukui Client, SimulationCraft, Twitch

**Multimedia;**
VLC, Spotify, Ifranview

**Utility;**
7zip, Autohotkey, Bleachbit, Classic Shell, cmdr, KeepassXC, Teracopy, SumatraPDF

# Arch Installation
**1. Check Internet connection**

**2. Update System Clock**

    1. timedatectl set-ntp true
    
**3. Partition Disks**

    1. cfdisk
    2. /home
    3. /swap
    
**4. Format Partitions**

    1. mkfs.ext4 /dev/sda1    
    2. mkswap /dev/sda2    
    3. swapon /dev/sda2
    
**5. Mount the file system**

    1. mount /dev/sdX1 /mnt
    
**6. Select Mirrors**

    1. vi /etc/pacman.d/mirrorlist
    
**7. Install Packages**

    1. pacstrap /mnt Base Base-Devel grub git
    
**8. Generate Fstab**

    1. genfstab -U /mnt >> /mnt/etc/fstab
    
**9. Chroot into System**

    1. arch-chroot /mnt
    
**10. Timezone**

    1. ln -sf /usr/share/zoneinfo/Australia/Sydney /etc/localtime
    
**11. Localisation**

    1. vi /etc/locale.gen    
    2. en__AU.UTF-8 UTF-8    
    3. locale-gen    
    4. vi /etc/locale.conf    
    5. LANG=en_AU.UTF-8
    
**12. Network Config**

    1. Create hostname file;    
        1. vi /etc/hostname        
            'myhostname'        
            
    2. Add Entries to hosts    
        1. vi /etc/hosts        
            127.0.0.1          localhost            
            ::1                localhost            
            127.0.1.1         'myhostname.localdomain          'myhostname'
            
    3. Enable network manager service    
        1. systemctl enable NetworkManager.service
        
**13. Root Password**

    1. passwd
    
**14. Config GRUB**

    1. grub-install /dev/sda    
    2. grub-mkconfig -o /boot/grub/grub.cfg    
    3. Edit grub.cfg
    
**15. Add user & sudo**

    1. useradd -m -G wheel     
    2. passwd
    3. visduo    
    4. Uncomment wheel group    
    
**16. Update System**

    1. pacman -Syu
    
**17. Reboot**

**18. Install Yay**

    1. git clone https://aur.archlinux.org/yay.git    
    2. cd yay    
    3. makepkg -si    
    4. yay -Syu
    
**19. Install Graphical Environment**

    1. pacman -S xorg-server xorg-xinit i3-gaps conky dmenu rxvt-unicode mensa xf86-video-intel tp_smapi compton    
    2. yay -S polybar
    3. Set Wallpaper
    
**20. Reboot System**

**21. Install rest of software**

**22. Networking Set-up**

    1. pacman -S ifplugd dialog**
    
**23. Configure Terminal**

    Zsh + OhMyZsh + Powerline10k
    
**24. Configure VIM**

    Airline
    
# Windows Install Guide

**1. Install Drivers**

    1. Motherboard    
    2. Lan    
    3. Chipset
    4. Video Card

**2. Install chocolatey**

    1. Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    2. choco install 7zip autohotkey bleachbit classic-shell cmder dropbox irfanview keepassxc qbittorrent spotify teracopy vivaldi vlc flashplayerplugin jre8 steam origin discord twitch sumatra
    3. battlenet Privateinternetacess MTGO MTGA Tukui Client TSM SimicSetup Raider.io
