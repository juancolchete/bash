su root
pacman -S arch-install-scripts
mkdir /neovimLab/
pacstrap -K /neovimLab base base-devel
mount --bind /neovimLab /neovimLab
arch-chroot /neovimLab
