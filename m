Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CEF6C9D8
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 09:16:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F01EB6E312;
	Thu, 18 Jul 2019 07:16:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1D806E312;
 Thu, 18 Jul 2019 07:16:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DAE58A3ECB;
 Thu, 18 Jul 2019 07:16:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 18 Jul 2019 07:16:41 -0000
Message-ID: <20190718071641.17743.39962@emeril.freedesktop.org>
References: <20190718070024.21781-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190718070024.21781-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B01/20=5D_drm/i915=3A_Move_aliasing?=
 =?utf-8?q?=5Fppgtt_underneath_its_i915=5Fggtt?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzIw
XSBkcm0vaTkxNTogTW92ZSBhbGlhc2luZ19wcGd0dCB1bmRlcm5lYXRoIGl0cyBpOTE1X2dndHQK
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYzODU3LwpT
dGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2Ry
bS10aXAKMzA1MmUxNmE4NTFjIGRybS9pOTE1OiBNb3ZlIGFsaWFzaW5nX3BwZ3R0IHVuZGVybmVh
dGggaXRzIGk5MTVfZ2d0dAoxNjg0ZjNhOGQ5NGUgZHJtL2k5MTUvZ3Q6IEhvb2sgdXAgaW50ZWxf
Y29udGV4dF9maW5pKCkKZDIwNjBlZDcxZjYxIGRybS9pOTE1L2d0OiBQcm92ZGUgYSBsb2NhbCBp
bnRlbF9jb250ZXh0LnZtCmY2ODEzZDhlNjVmMCBkcm0vaTkxNS9leGVjbGlzdHM6IENhbmNlbCBi
cmVhZGNydW1iIG9uIHByZWVtcHRpbmcgdGhlIHZpcnR1YWwgZW5naW5lCjdlMTgwYWYxY2I0OCBk
cm0vaTkxNTogSGlkZSB1bnNocmlua2FibGUgY29udGV4dCBvYmplY3RzIGZyb20gdGhlIHNocmlu
a2VyCmM3ZDc2MjY3YWM1MiBkcm0vaTkxNTogUmVtb3ZlIG9ic29sZXRlIGVuZ2luZSBjbGVhbnVw
CmE2MWY5MTIyYWM2MSBkcm0vaTkxNS9ndDogTW92ZSB0aGUgW2NsYXNzXVtpbnN0XSBsb29rdXAg
Zm9yIGVuZ2luZXMgb250byB0aGUgR1QKLToyMjI6IFdBUk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6
IGFkZGVkLCBtb3ZlZCBvciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1
cGRhdGluZz8KIzIyMjogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjIyNzogV0FSTklORzpTUERY
X0xJQ0VOU0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
ciB0YWcgaW4gbGluZSAxCiMyMjc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV91c2VyLmM6MToKKy8qCgotOjIyODogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBN
aXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFk
CiMyMjg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2VyLmM6
MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKCi06Mjk5OiBXQVJOSU5HOlNQRFhf
TElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
IHRhZyBpbiBsaW5lIDEKIzI5OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX3VzZXIuaDoxOgorLyoKCi06MzAwOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1p
c3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQK
IzMwMDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3VzZXIuaDoy
OgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKdG90YWw6IDAgZXJyb3JzLCA1IHdh
cm5pbmdzLCAwIGNoZWNrcywgNDE1IGxpbmVzIGNoZWNrZWQKMzI2MWE1MWIxNWUwIGRybS9pOTE1
OiBJbnRyb2R1Y2UgZm9yX2VhY2hfdXNlcl9lbmdpbmUoKQotOjIxNTogQ0hFQ0s6TUFDUk9fQVJH
X1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAnZW5naW5lX18nIC0gcG9zc2libGUgc2lkZS1l
ZmZlY3RzPwojMjE1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oOjE5MjE6
CisjZGVmaW5lIGZvcl9lYWNoX3VzZXJfZW5naW5lKGVuZ2luZV9fLCBpOTE1X18pIFwKKwlmb3Ig
KChlbmdpbmVfXykgPSByYl90b191YWJpX2VuZ2luZShyYl9maXJzdCgmKGk5MTVfXyktPnVhYmlf
ZW5naW5lcykpO1wKKwkgICAgIChlbmdpbmVfXyk7IFwKKwkgICAgIChlbmdpbmVfXykgPSByYl90
b191YWJpX2VuZ2luZShyYl9uZXh0KCYoZW5naW5lX18pLT51YWJpX25vZGUpKSkKCnRvdGFsOiAw
IGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDE4NyBsaW5lcyBjaGVja2VkCmM5ZjRjZmUy
MDgxMiBkcm0vaTkxNTogVXNlIGludGVsX2VuZ2luZV9sb29rdXBfdXNlciBmb3IgcHJvYmluZyBI
QVNfQlNEIGV0YwpmNWQ4MmZkZjFmMTAgZHJtL2k5MTU6IElzb2xhdGUgaTkxNV9nZXRwYXJhbV9p
b2N0bCgpCi06MjM1OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3Ig
ZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiMyMzU6IApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAoKLToyNDA6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlz
c2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQoj
MjQwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dldHBhcmFtLmM6MToKKy8qCgot
OjI0MTogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiMyNDE6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0uYzoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IE1JVAoKdG90YWw6IDAgZXJyb3JzLCAzIHdhcm5pbmdzLCAwIGNoZWNrcywgMzc0IGxpbmVzIGNo
ZWNrZWQKMzZmYmYxOGI4YmJjIGRybS9pOTE1OiBSZWx5IG9uIHNwaW5sb2NrIHByb3RlY3Rpb24g
Zm9yIEdQVSBlcnJvciBjYXB0dXJlCmRhYjZhNzY0N2I2ZCBkcm0vaTkxNTogT25seSBpbmNsdWRl
IGFjdGl2ZSBlbmdpbmVzIGluIHRoZSBjYXB0dXJlIHN0YXRlCmVhNThiYmNiY2MwZCBkcm0vaTkx
NTogVGVhY2ggZXhlY2J1ZmZlciB0byB0YWtlIHRoZSBlbmdpbmUgd2FrZXJlZiBub3QgR1QKZmZk
NGE5Njk5M2FkIGRybS9pOTE1L2d0OiBUcmFjayB0aW1lbGluZSBhY3RpdmVuZXNzIGluIGVudGVy
L2V4aXQKOWFlMzRjM2VlYTFiIGRybS9pOTE1L2d0OiBDb252ZXJ0IHRpbWVsaW5lIHRyYWNraW5n
IHRvIHNwaW5sb2NrCjRkYzBjY2M5NWVmNiBkcm0vaTkxNS9ndDogR3VhcmQgdGltZWxpbmUgcGlu
bmluZyB3aXRoIGl0cyBvd24gbXV0ZXgKMmEyYzk4ZjI0YTkwIGRybS9pOTE1L2d0OiBBZGQgdG8g
dGltZWxpbmUgcmVxdWlyZXMgdGhlIHRpbWVsaW5lIG11dGV4CmZkM2Y5Y2EzYmExZCBkcm0vaTkx
NTogUHJvdGVjdCByZXF1ZXN0IHJldGlyZW1lbnQgd2l0aCB0aW1lbGluZS0+bXV0ZXgKY2ZjNWM2
YzJlZGYyIGRybS9pOTE1OiBSZXBsYWNlIHN0cnVjdF9tdXRleCBmb3IgYmF0Y2ggcG9vbCBzZXJp
YWxpc2F0aW9uCi06MzA1OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQg
b3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiMzMDU6
IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLTozMTA6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzog
TWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUg
MQojMzEwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5j
OjE6CisvKgoKLTozMTE6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojMzExOiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5jOjI6CisgKiBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogTUlUCgotOjQ5MzogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBN
aXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAx
CiM0OTM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmg6
MToKKy8qCgotOjQ5NDogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiM0OTQ6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmg6MjoKKyAqIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBNSVQKCi06NTMzOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1p
c3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEK
IzUzMzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlw
ZXMuaDoxOgorLyoKCi06NTM0OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzUzNDogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaDoyOgor
ICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKLTo1NTA6IENIRUNLOlVOQ09NTUVOVEVE
X0RFRklOSVRJT046IHNwaW5sb2NrX3QgZGVmaW5pdGlvbiB3aXRob3V0IGNvbW1lbnQKIzU1MDog
RklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaDox
ODoKKwlzcGlubG9ja190IGxvY2s7Cgp0b3RhbDogMCBlcnJvcnMsIDcgd2FybmluZ3MsIDEgY2hl
Y2tzLCA2MDQgbGluZXMgY2hlY2tlZAozYmMwYjFiNjg0YWUgZHJtL2k5MTUvZ3Q6IE1hcmsgY29u
dGV4dC0+YWN0aXZlX2NvdW50IGFzIHByb3RlY3RlZCBieSB0aW1lbGluZS0+bXV0ZXgKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
