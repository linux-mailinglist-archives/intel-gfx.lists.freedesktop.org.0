Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B941005B6
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 13:36:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E86D6E4F9;
	Mon, 18 Nov 2019 12:36:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E4C606E4F8;
 Mon, 18 Nov 2019 12:36:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDA3DA0114;
 Mon, 18 Nov 2019 12:36:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 18 Nov 2019 12:36:10 -0000
Message-ID: <157408057087.2238.1275941921750163351@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Retire_dma=5Fbuf=5Fk=28un=29map?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUmV0aXJlIGRtYV9idWZfayh1biltYXAKVVJM
ICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY5NjE2LwpTdGF0
ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10
aXAKNGM2YTQ3MjhiNmIyIGRybS90ZWdyYTogTWFwIGNtZGJ1ZiBvbmNlIGZvciByZWxvYyBwcm9j
ZXNzaW5nCi06NzM6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1v
ZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0RhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNr
cywgNDMgbGluZXMgY2hlY2tlZAo0ZTc2NzM5NmM5NTUgZHJtL3RlZ3JhOiBEZWxldGUgaG9zdDF4
X2JvX29wcy0+ayh1biltYXAKLTo5NTogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3Np
bmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDEgd2Fybmlu
Z3MsIDAgY2hlY2tzLCA2NSBsaW5lcyBjaGVja2VkCjU5MjE1YTBkMGZkOCBkcm0vaTkxNTogUmVt
b3ZlIGRtYV9idWZfa21hcCBzZWxmdGVzdAotOjEzNTogV0FSTklORzpOT19BVVRIT1JfU0lHTl9P
RkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAn
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMs
IDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxMTMgbGluZXMgY2hlY2tlZAowM2FmNjMzYjQ5ZDcgc3Rh
Z2luZy9hbmRyb2lkL2lvbjogZGVsZXRlIGRtYV9idWYtPmttYXAvdW5tYXAgaW1wbGVtZW5hdGlv
bgotOjQ6IFdBUk5JTkc6VFlQT19TUEVMTElORzogJ2ltcGxlbWVuYXRpb24nIG1heSBiZSBtaXNz
cGVsbGVkIC0gcGVyaGFwcyAnaW1wbGVtZW50YXRpb24nPwojNDogClN1YmplY3Q6IFtQQVRDSF0g
c3RhZ2luZy9hbmRyb2lkL2lvbjogZGVsZXRlIGRtYV9idWYtPmttYXAvdW5tYXAgaW1wbGVtZW5h
dGlvbgoKLToxMTogV0FSTklORzpUWVBPX1NQRUxMSU5HOiAnaW1wbGVtZW5hdGlvbicgbWF5IGJl
IG1pc3NwZWxsZWQgLSBwZXJoYXBzICdpbXBsZW1lbnRhdGlvbic/CiMxMTogCmltcGxlbWVuYXRp
b24uCgotOjUxOiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQtb2Zm
LWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdEYW5pZWwgVmV0dGVyIDxkYW5pZWwu
dmV0dGVyQGZmd2xsLmNoPicKCnRvdGFsOiAwIGVycm9ycywgMyB3YXJuaW5ncywgMCBjaGVja3Ms
IDI2IGxpbmVzIGNoZWNrZWQKOTg1Zjc3ODcyOGM1IGRybS9hcm1hZGE6IERlbGV0ZSBkbWFfYnVm
LT5rKHVuKW1hcCBpbXBsZW1lbmF0aW9uCi06NDogV0FSTklORzpUWVBPX1NQRUxMSU5HOiAnaW1w
bGVtZW5hdGlvbicgbWF5IGJlIG1pc3NwZWxsZWQgLSBwZXJoYXBzICdpbXBsZW1lbnRhdGlvbic/
CiM0OiAKU3ViamVjdDogW1BBVENIXSBkcm0vYXJtYWRhOiBEZWxldGUgZG1hX2J1Zi0+ayh1bilt
YXAgaW1wbGVtZW5hdGlvbgoKLTo0MDogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3Np
bmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDIgd2Fybmlu
Z3MsIDAgY2hlY2tzLCAyNCBsaW5lcyBjaGVja2VkCjAzOWMyMDNlOGQ2OCBkcm0vaTkxNTogRHJv
cCBkbWFfYnVmLT5rKHVuKW1hcAotOjExMTogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1p
c3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDEgd2Fy
bmluZ3MsIDAgY2hlY2tzLCA3NiBsaW5lcyBjaGVja2VkCjA4Yjk4ZGVmZWM1OSBkcm0vb21hcGRy
bTogRHJvcCBkbWFfYnVmLT5rKHVuKW1hcAotOjk6IFdBUk5JTkc6VFlQT19TUEVMTElORzogJ2lt
cGxlbWVuYXRpb24nIG1heSBiZSBtaXNzcGVsbGVkIC0gcGVyaGFwcyAnaW1wbGVtZW50YXRpb24n
PwojOTogCnRoYXQgcHJvdmlkZWQgYSBrbWFwLCBidXQgbm90IGEgdm1hcCBpbXBsZW1lbmF0aW9u
LiBHaXZlbiB0aGF0IHRoZQoKLTo1NTogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3Np
bmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDIgd2Fybmlu
Z3MsIDAgY2hlY2tzLCAzMyBsaW5lcyBjaGVja2VkCjkyZTExYWExNzUyZCBkcm0vdGVncmE6IFJl
bW92ZSBkbWFfYnVmLT5rKHVuKW1hcAotOjQyOiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09GRjog
TWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPicKCnRvdGFsOiAwIGVycm9ycywgMSB3
YXJuaW5ncywgMCBjaGVja3MsIDI0IGxpbmVzIGNoZWNrZWQKODMyOWVhOTc5N2U0IGRtYS1idWY6
IERyb3AgZG1hX2J1Zl9rKHVuKW1hcAotOjExODogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6
IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDEg
d2FybmluZ3MsIDAgY2hlY2tzLCA4MyBsaW5lcyBjaGVja2VkCjkxZDgwODhhOGZlNiBkcm0vdm13
Z2Z4OiBEZWxldGUgbW1hcGluZyBmdW5jdGlvbnMKLTo3MTogV0FSTklORzpOT19BVVRIT1JfU0lH
Tl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhv
ciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJv
cnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA0NSBsaW5lcyBjaGVja2VkCmEwZGIxZGI1YjRjYyBt
ZWRpYS92aWRlb2J1ZjI6IERyb3AgZG1hX2J1Zi0+ayh1biltYXAgc3VwcG9ydAotOjk0OiBXQVJO
SU5HOk5PX0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5v
bWluYWwgcGF0Y2ggYXV0aG9yICdEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNo
PicKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDYwIGxpbmVzIGNoZWNr
ZWQKOTczZDhjYTA4OWI2IGRybS90ZWVfc2htOiBEcm9wIGRtYV9idWZfayh1bm1hcCkgc3VwcG9y
dAotOjY0OiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5
OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPicKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDM4
IGxpbmVzIGNoZWNrZWQKNmI0MmFkZTliYzhmIHhlbi9nbnRkZXYtZG1hYnVmOiBEaXRjaCBkdW1t
eSBtYXAgZnVuY3Rpb25zCi06NTc6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5n
IFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0RhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdz
LCAwIGNoZWNrcywgMzUgbGluZXMgY2hlY2tlZAphNmQ2MWU0ZTA0NTQgc2FtcGxlL3ZmaW8tbWRl
di9tYm9jczogUmVtb3ZlIGRtYV9idWZfayh1biltYXAgc3VwcG9ydAotOjQzOiBXQVJOSU5HOk5P
X0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwg
cGF0Y2ggYXV0aG9yICdEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPicKCnRv
dGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDI2IGxpbmVzIGNoZWNrZWQKMjNi
ZTIyNzljMGViIGRtYS1idWY6IFJlbW92ZSBrZXJuZWwgbWFwL3VubWFwIGhvb2tzCi06NDg6IFdB
Uk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkg
bm9taW5hbCBwYXRjaCBhdXRob3IgJ0RhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwu
Y2g+JwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMzEgbGluZXMgY2hl
Y2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
