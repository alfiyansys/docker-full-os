# all of these commands are modified from chat GPT's generated Dockerfile with modifications, generated Dockerfile itself is based on Sifo's 'concept of docker full os' (forked repo)

# Use the base image with the desired host OS (e.g., Debian Stable)
FROM debian:stable

# Inside the Kali Linux Docker image, install the required apps
RUN apt update && apt full-upgrade -y && apt install -y nano pulseaudio* neofetch vlc* smplayer* wget \
	alsa-utils* network-manager net-tools* \
    dbus dbus-x11 thunar* chromium* \
	terminator* sudo kate* \
	qt5-style-kvantum-themes qt5-style-kvantum-l10n \
	qt5-style-kvantum \
	isomaster* k3b* apt-utils* git htop*  \
	fusion-icon* simple-ccsm* \
	usbutils* lxqt* bleachbit* nmap* xrdp* openssh-server openssh-client -y

# Set root password
RUN echo 'root:root' | chpasswd

# Add a user
RUN useradd -m -G sudo username

# Set the user password
RUN echo 'toor:toor' | chpasswd

CMD [ "/bin/bash" ]