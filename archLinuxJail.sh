su root
pacman -S arch-install-scripts
mkdir /mnt/neovimLab/
mount -o subvol=@ /dev/sda2 /mnt/neovimLab
mount -o subvol=@home /dev/sda2 /mnt/neovimLab/home
mount -o subvol=@pkg /dev/sda2 /mnt/neovimLab/var/cache/pacman/pkg
mount -o subvol=@log /dev/sda2 /mnt/neovimLab/var/log
mount -o subvol=@.snapshots /dev/sda2 /mnt/neovimLab/.snapshots
mount /dev/sda2 /mnt/neovimLab/boot
arch-chroot /mnt/neovimLab
