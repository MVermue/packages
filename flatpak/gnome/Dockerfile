FROM fedora:29

MAINTAINER ZetaoYang "https://github.com/ZetaoYang"

# Install Flatpak and dependencies
RUN dnf -y update && \
    dnf install flatpak flatpak-builder ostree fuse wget curl git bzip2 dconf bzr elfutils -y && \
    dnf clean all

RUN flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install runtimes, merged into one layer because of xattr attributes
RUN flatpak install -y flathub org.gnome.Platform//3.30 && \
    flatpak install -y flathub org.gnome.Sdk//3.30