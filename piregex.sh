#!/bin/bash
echo "[+] Purging the regex.list file..."
pihole --regex --nuke 

echo "[+] Adding regex to a fresh regex.list..."
pihole --regex '^(.+[-_.])??ad[sxv]?[0-9]*[-_.]' '^(.+[-_.])??adse?rv(er?|ice)?s?[0-9]*[-.]' '^(.+[-_.])??m?ad[sxv]?[0-9]*[-_.]' '^(.+[-_.])??xn--' '^(.+[_.-])?ad[sxv]?[0-9]*[_.-]' '^(.+[_.-])?adse?rv(er?|ice)?s?[0-9]*[_.-]' '^(.+[_.-])?telemetry[_.-]' '^(www[0-9]*\.)?xn--' '^adim(age|g)s?[0-9]*[_.-]' '^adse?rv(e(rs?)?|ices?)?[0-9]*[-.]' '^adtrack(er|ing)?[0-9]*[_.-]' '^advert(s|is(ing|ements?))?[0-9]*[-_.]' '^advert(s|is(ing|ements?))?[0-9]*[_.-]' '^aff(iliat(es?|ion))?[-.]' '^aff(iliat(es?|ion))?[_.-]' '^analytics?[-.]' '^analytics?[_.-]' '^banners?[-.]' '^banners?[_.-]' '^beacons?[0-9]*[-.]' '^beacons?[0-9]*[_.-]' '^clicks?[-.]' '^count(ers?)?[0-9]*[-.]' '^count(ers?)?[0-9]*[_.-]' '^mads\.' '^stat(s|istics)?[0-9]*[-.]' '^stat(s|istics)?[0-9]*[_.-]' '^telemetry[-.]' '^track(ers?|ing)?[0-9]*[-.]' '^track(ers?|ing)?[0-9]*[_.-]' '^traff(ic)?[-.]' '^traff(ic)?[.-]'

echo "[+] Done!"