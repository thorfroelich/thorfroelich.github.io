---
title: Thunderbird og IMAP
author: Thor Frølich
layout: post
permalink: /thunderbird-og-imap/
categories:
  - "Thor's ting"
---
Hvis man ønsker at Mozilla Thunderbird skal lede alle subfolders igennem for nye mails skal man føje følgende linie til *user.js* i sit profil-dir:

user\_pref(“mail.check\_all\_imap\_folders\_for\_new”, true);

Så burde jeg kunne finde det, næste gang jeg får brug for det: Bare spørg aben, hvad det nu var jeg skulle gøre.