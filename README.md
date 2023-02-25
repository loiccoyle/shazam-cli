# 🎶 shazam-cli

<p align="center">
  <a href="./LICENSE.md"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
  <a href="https://aur.archlinux.org/packages/shazam-cli-git/"><img src="https://img.shields.io/aur/version/shazam-cli-git"></a>
</p>

Record audio and use the [Shazam](https://rapidapi.com/apidojo/api/shazam/) music recognition API from the command line. It is free for 500 queries per month.

The [`shazam`](./shazam) scripts queries the Shazam API. This repository also contains [`shazam-notif`](./shazam-notif) which uses [`shazam`](./shazam) and `libnotify` to return the match result.

## 📦 Installation

### Dependencies:

The `shazam` script requires:

- [curl](https://github.com/curl/curl)
- [ffmpeg](https://git.ffmpeg.org/ffmpeg.git)

In addition to the above the `shazam-notif` script requires:

- [jq](https://github.com/stedolan/jq)
- notify-send
- [dunst](https://github.com/dunst-project/dunst) (optional)

#### Manual

Just clone this repo and place the `shazam` and `shazam-notif` scripts on your `$PATH`.

#### Arch (AUR):

Using your favourite AUR helper:

```sh
$ paru -S shazam-cli-git
```

## 📋 Usage

To use these scripts you'll need your own API key.
It can be obtained from [`rapidapi`](https://rapidapi.com/apidojo/api/shazam/) you'll need a RapidAPI account and subscribe to the Shazam API (there is a free a plan).
Provide the API key either through the `-a` flag or by writing to `${XDG_CONFIG_HOME:-$HOME/.config}/shazam-cli/key`.

<!-- help start -->

```
$ shazam -h
```

<!-- help end -->

> You can use `ffmpeg -sources pulse` to list available sources.
