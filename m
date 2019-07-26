Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4383375BD5
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 02:03:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9015B6E83B;
	Fri, 26 Jul 2019 00:03:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15DC86E839;
 Fri, 26 Jul 2019 00:03:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F956A010C;
 Fri, 26 Jul 2019 00:03:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 26 Jul 2019 00:03:27 -0000
Message-ID: <20190726000327.29716.71869@emeril.freedesktop.org>
References: <20190725224407.4206-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190725224407.4206-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/5=5D_drm/i915=3A_Capture_vma_conte?=
 =?utf-8?q?nts_outside_of_spinlock?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNV0g
ZHJtL2k5MTU6IENhcHR1cmUgdm1hIGNvbnRlbnRzIG91dHNpZGUgb2Ygc3BpbmxvY2sKVVJMICAg
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY0MjY4LwpTdGF0ZSA6
IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAK
N2JkZjRlMjQ5OTkxIGRybS9pOTE1OiBDYXB0dXJlIHZtYSBjb250ZW50cyBvdXRzaWRlIG9mIHNw
aW5sb2NrCjRlMmQzN2Y2MDMxZiBkcm0vaTkxNS9ndDogQWRkIHRvIHRpbWVsaW5lIHJlcXVpcmVz
IHRoZSB0aW1lbGluZSBtdXRleAozN2M3MmQ5YTRlYmUgZHJtL2k5MTU6IFVuc2hhcmUgdGhlIGlk
bGUtYmFycmllciBmcm9tIG90aGVyIGtlcm5lbCByZXF1ZXN0cwotOjExMjogV0FSTklORzpGSUxF
X1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlO
VEFJTkVSUyBuZWVkIHVwZGF0aW5nPwojMTEyOiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCi06MTE3
OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzExNzogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jOjE6CisvKgoKLToxMTg6IFdBUk5JTkc6U1BEWF9M
SUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBs
aW5lIDEgaW5zdGVhZAojMTE4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF9jb250ZXh0LmM6MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCgp0b3Rh
bDogMCBlcnJvcnMsIDMgd2FybmluZ3MsIDAgY2hlY2tzLCA1MTkgbGluZXMgY2hlY2tlZApmNzQz
NDI1OTRiZjAgZHJtL2k5MTUvZXhlY2xpc3RzOiBGb3JjZSBwcmVlbXB0aW9uCjE2MzQ0MWUyMjYx
YSBkcm0vaTkxNTogUmVwbGFjZSBoYW5nY2hlY2sgYnkgaGVhcnRiZWF0cwotOjEyMzogV0FSTklO
RzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9l
cyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5nPwojMTIzOiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
Ci06MTI4OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzEyODogRklMRTogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5jOjE6CisvKgoKLToxMjk6IFdB
Uk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
IHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojMTI5OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmM6MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBNSVQKCi06MTcxOiBXQVJOSU5HOkVNQkVEREVEX0ZVTkNUSU9OX05BTUU6IFByZWZlciB1
c2luZyAnIiVzLi4uIiwgX19mdW5jX18nIHRvIHVzaW5nICdoZWFydGJlYXQnLCB0aGlzIGZ1bmN0
aW9uJ3MgbmFtZSwgaW4gYSBzdHJpbmcKIzE3MTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5jOjQ0OgorCQkJCSAgICAgICJzdG9wcGVkIGhlYXJ0
YmVhdCBvbiAlcyIsIGVuZ2luZS0+bmFtZSk7CgotOjIzMDogV0FSTklORzpTUERYX0xJQ0VOU0Vf
VEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4g
bGluZSAxCiMyMzA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9o
ZWFydGJlYXQuaDoxOgorLyoKCi06MjMxOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Bs
YWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzIz
MTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5o
OjI6CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCgp0b3RhbDogMCBlcnJvcnMsIDYg
d2FybmluZ3MsIDAgY2hlY2tzLCA1NTEgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
