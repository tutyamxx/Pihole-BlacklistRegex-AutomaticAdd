#!/bin/bash
echo "[+] Purging the regex.list file..."
pihole --regex --nuke 

echo "[+] Adding a dank regex to a fresh regex.list..."
pihole --regex '^(.+[-_.])??ad[sxv]?[0-9]*[-_.]' '^(.+[-_.])??adse?rv(er?|ice)?s?[0-9]*[-.]' '^(.+[-_.])??m?ad[sxv]?[0-9]*[-_.]' '^(.+[-_.])??xn--' '^(www[0-9]*\.)?xn--' '(^|\.)xn--.*$' '^(.+[_.-])?telemetry[_.-]' '^adse?rv(e(rs?)?|ices?)?[0-9]*[-.]' '^advert(s|is(ing|ements?))?[0-9]*[-_.]' '^adim(age|g)s?[0-9]*[_.-]' '^adtrack(er|ing)?[0-9]*[_.-]' '^aff(iliat(es?|ion))?[-.]' '^analytics?[-.]' '^banners?[-.]' '^mads\.' '(.*)\.g00\.(.*)' '^beacons?[0-9]*[-.]' '^clicks?[-.]' '^count(ers?)?[0-9]*[-.]' '^pixels?[-.]' '^stat(s|istics)?[0-9]*[-.]' '^telemetry[-.]' '^track(ers?|ing)?[0-9]*[-.]' '^traff(ic)?[-.]' '(ads|logs|cloudservices).roku.com$' '^([a-z0-9]+[.])*(ads|captive|cloudservices|logs)\.roku\.com' '(^|\.)buffpanel\.com$' '(^|\.)bugsnag\.com$' '(^|\.)redshell\.io$' '(^|\.)treasuredata\.com$' '(^|\.)unity(|3d)\.com$' '(^|\.)unityads(|\.co)\.com$' '^tiles\..*services\.mozilla\.com$' '(^|\.)logs\.roku\.com$' '(^|\.)ads\.roku\.com$' '(^|\.)xbcs\.net$'

echo "[+] Done! Now restarting FTL service"
sudo service pihole-FTL restart