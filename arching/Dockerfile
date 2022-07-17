FROM archlinux:latest AS arching
MAINTAINER me

# Update the repositories
RUN pacman -Syy && pacman -Syu --noconfirm && pacman -S --noconfirm openssh && pacman -S --noconfirm neofetch neovim htop vifm httpie curl wget zsh bash grep sed awk git tmux 

# we want vim to point to our installed neovim
RUN ln -s /usr/bin/nvim /usr/bin/vim

# Generate host keys
RUN /usr/bin/ssh-keygen -A

# Add password to root user
RUN echo 'root:rootToor' | chpasswd

# Fix sshd
#RUN sed -i -e 's/^UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config
RUN sed -i -e 's/#*Port 22/Port 1022/g' /etc/ssh/sshd_config

# Expose tcp port
EXPOSE 1022

# Run openssh daemon
CMD ["/usr/sbin/sshd", "-D"]
