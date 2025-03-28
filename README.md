# Asterix Saigon

## My adaptation of Aurora KDE

I am always hunting for that barebone KDE install. And if it could be immutable/atomic/composable that would be even more great.

The UniversalBlue project (https://universal-blue.org/) provides a number of excellent images to start off with. Bluefin for Gnome, Bazzite for a gaming focus and Aurora as the KDE one.  They include codecs, printing support, homebrew for all your cli wishes, distrobox etc. out of the box.

## Why adjusting at all?

That's right, those images are already very complete, yet application-wise pretty minimal. Adjusting those images has become much more easy than it was in the first couple of years. And for me there's always some fluff that can be removed.

So, you'll find an Aurora install in which I added:

-    krusader
-    gwenview
-    okular

And I removed:

-    fcitx5
-    input-remapper
-    kcharselect
-    kdebugsettings
-    kde-connect
-    kjournald
-    ksystemlog
-    nvtop
-    plasma-welcome
-    ptyxis

# Rebase

Install Fedora Kinoite or Sway first, then:

rpm-ostree rebase ostree-unverified-registry:ghcr.io/thesaigoneer/asterix-saigon:latest

systemctl reboot

rpm-ostree rebase ostree-image-signed:docker://ghcr.io/thesaigoneer/asterix-saigon:latest

--------------

This about concludes a bare-bone install of asterix-saigon. I personally added a number of KDE applications afterwards and installed and activated flatpak. But that's all up to the end user (being yourself obviously).


--------------

Feel free to use these builds and dots. I do not, however, offer or imply any form of support or ongoing maintenance. And of course, you use them entirely at your own risk. Have fun!

Enjoy your freshly installed asterix-saigon!


