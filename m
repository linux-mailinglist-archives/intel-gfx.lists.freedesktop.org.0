Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B96EA6537D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 11:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23A226E16D;
	Thu, 11 Jul 2019 09:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 139B76E16B;
 Thu, 11 Jul 2019 09:05:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F0E5A0005;
 Thu, 11 Jul 2019 09:05:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 11 Jul 2019 09:05:37 -0000
Message-ID: <20190711090537.9537.74844@emeril.freedesktop.org>
References: <20190711065215.4004-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190711065215.4004-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B01/18=5D_drm/i915/selftests=3A_Ensur?=
 =?utf-8?q?e_we_don=27t_clamp_a_random_offset_to_32b?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzE4
XSBkcm0vaTkxNS9zZWxmdGVzdHM6IEVuc3VyZSB3ZSBkb24ndCBjbGFtcCBhIHJhbmRvbSBvZmZz
ZXQgdG8gMzJiClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy82MzUzMy8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNo
IG9yaWdpbi9kcm0tdGlwCjkxMmRjZmNhM2ZjMiBkcm0vaTkxNS9zZWxmdGVzdHM6IEVuc3VyZSB3
ZSBkb24ndCBjbGFtcCBhIHJhbmRvbSBvZmZzZXQgdG8gMzJiCmIxNWY3MmQ0YTEyNCBkcm0vaTkx
NS9zZWxmdGVzdHM6IEhvbGQgdGhlIHZtYSBtYW5hZ2VyIGxvY2sgd2hpbGUgbW9kaWZ5aW5nIG1t
YXBfb2Zmc2V0CmE3YzFkM2I2NGZhYyBkcm0vaTkxNTogTG9jayB0aGUgZW5naW5lIHdoaWxlIGR1
bXBpbmcgdGhlIGFjdGl2ZSByZXF1ZXN0CmY4OTBhYTIyNTZjNiBkcm0vaTkxNTogUmVseSBvbiBz
cGlubG9jayBwcm90ZWN0aW9uIGZvciBHUFUgZXJyb3IgY2FwdHVyZQo4YzMwZjMzZGEwOWMgZHJt
L2k5MTUvb2E6IFJlY29uZmlndXJlIGNvbnRleHRzIG9uIHRoZSBmbHkKYWVjZjNlYzdhYWM4IGRy
bS9pOTE1OiBBZGQgdG8gdGltZWxpbmUgcmVxdWlyZXMgdGhlIHRpbWVsaW5lIG11dGV4CjZiNTE4
YTdkODcwNSBkcm0vaTkxNTogVGVhY2ggZXhlY2J1ZmZlciB0byB0YWtlIHRoZSBlbmdpbmUgd2Fr
ZXJlZiBub3QgR1QKMzgyZDc5OTNmNmRmIGRybS9pOTE1L2d0OiBUcmFjayB0aW1lbGluZSBhY3Rp
dmVuZXNzIGluIGVudGVyL2V4aXQKMjhlZTk4NGQ5ZTdkIGRybS9pOTE1L2d0OiBDb252ZXJ0IHRp
bWVsaW5lIHRyYWNraW5nIHRvIHNwaW5sb2NrCmYwNWEyMDA5NzExZCBkcm0vaTkxNS9ndDogR3Vh
cmQgdGltZWxpbmUgcGlubmluZyB3aXRoIGl0cyBvd24gbXV0ZXgKMGY5ODFkNGFkMTI5IGRybS9p
OTE1OiBQcm90ZWN0IHJlcXVlc3QgcmV0aXJlbWVudCB3aXRoIHRpbWVsaW5lLT5tdXRleAozNWY3
ZDBjZDE0MTEgZHJtL2k5MTU6IFJlcGxhY2Ugc3RydWN0X211dGV4IGZvciBiYXRjaCBwb29sIHNl
cmlhbGlzYXRpb24KLTozMDU6IFdBUk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6IGFkZGVkLCBtb3Zl
ZCBvciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1cGRhdGluZz8KIzMw
NTogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjMxMDogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFH
OiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGlu
ZSAxCiMzMTA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29s
LmM6MToKKy8qCgotOjMxMTogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiMzMTE6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmM6MjoKKyAqIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBNSVQKCi06NTAwOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6
IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5l
IDEKIzUwMDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2wu
aDoxOgorLyoKCi06NTAxOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzUwMTogRklMRTog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2wuaDoyOgorICogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKLTo1NDA6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzog
TWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUg
MQojNTQwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbF90
eXBlcy5oOjE6CisvKgoKLTo1NDE6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2Vk
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojNTQxOiBG
SUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbF90eXBlcy5oOjI6
CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCgotOjU1NzogQ0hFQ0s6VU5DT01NRU5U
RURfREVGSU5JVElPTjogc3BpbmxvY2tfdCBkZWZpbml0aW9uIHdpdGhvdXQgY29tbWVudAojNTU3
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbF90eXBlcy5o
OjE4OgorCXNwaW5sb2NrX3QgbG9jazsKCnRvdGFsOiAwIGVycm9ycywgNyB3YXJuaW5ncywgMSBj
aGVja3MsIDYxMyBsaW5lcyBjaGVja2VkCjFlMDRkZjEwZDkxYiBkcm0vaTkxNS9ndDogTWFyayBj
b250ZXh0LT5hY3RpdmVfY291bnQgYXMgcHJvdGVjdGVkIGJ5IHRpbWVsaW5lLT5tdXRleApiOWQz
M2FlY2MxYzMgZHJtL2k5MTU6IEZvcmdvIGxhc3RfZmVuY2UgYWN0aXZlIHJlcXVlc3QgdHJhY2tp
bmcKYmEwMTRkOGM5NWMxIGRybS9pOTE1L292ZXJsYXk6IFN3aXRjaCB0byB1c2luZyBpOTE1X2Fj
dGl2ZSB0cmFja2luZwo4OGU5MDFjZjk2NzggZHJtL2k5MTU6IEV4dHJhY3QgaW50ZWxfZnJvbnRi
dWZmZXIgYWN0aXZlIHRyYWNraW5nCmRiZThlNjM3YjJhYyBkcm0vaTkxNTogTWFya3VwIGV4cGVj
dGVkIHRpbWVsaW5lIGxvY2tzIGZvciBpOTE1X2FjdGl2ZQotOjI4MTogQ0hFQ0s6VU5DT01NRU5U
RURfREVGSU5JVElPTjogc3RydWN0IG11dGV4IGRlZmluaXRpb24gd2l0aG91dCBjb21tZW50CiMy
ODE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlX3R5cGVzLmg6Mjg6CisJ
c3RydWN0IG11dGV4ICpsb2NrOwoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNr
cywgMjMzIGxpbmVzIGNoZWNrZWQKZmNjMDg3MjljY2E4IGRybS9pOTE1L2d0OiBVc2UgaW50ZWxf
Z3QgYXMgdGhlIHByaW1hcnkgb2JqZWN0IGZvciBoYW5kbGluZyByZXNldHMKLToyNzogV0FSTklO
RzpNRU1PUllfQkFSUklFUjogbWVtb3J5IGJhcnJpZXIgd2l0aG91dCBjb21tZW50CiMyNzogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6NDI3OToKKwlz
bXBfbWJfX2FmdGVyX2F0b21pYygpOwoKLToxODI2OiBXQVJOSU5HOk1FTU9SWV9CQVJSSUVSOiBt
ZW1vcnkgYmFycmllciB3aXRob3V0IGNvbW1lbnQKIzE4MjY6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3Jlc2V0LmM6MTI2OToKKwlzbXBfbWJfX2FmdGVyX2F0b21pYygpOwoK
LToyMDUxOiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdXJyAt
IHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzIwNTE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jlc2V0Lmg6NjQ6CisjZGVmaW5lIGludGVsX3dlZGdlX29uX3RpbWVvdXQoVywg
R1QsIFRJTUVPVVQpCQkJCVwKKwlmb3IgKF9faW50ZWxfaW5pdF93ZWRnZSgoVyksIChHVCksIChU
SU1FT1VUKSwgX19mdW5jX18pOwlcCisJICAgICAoVyktPmd0OwkJCQkJCQlcCisJICAgICBfX2lu
dGVsX2Zpbmlfd2VkZ2UoKFcpKSkKCi06MjA2NjogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzog
YWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVw
ZGF0aW5nPwojMjA2NjogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjQ0Nzk6IENIRUNLOk1BQ1JP
X0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ1QnIC0gcG9zc2libGUgc2lkZS1lZmZl
Y3RzPwojNDQ3OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zZWxmdGVzdC5oOjk0
OgorI2RlZmluZSBpbnRlbF9ndF9saXZlX3N1YnRlc3RzKFQsIGRhdGEpICh7IFwKKwl0eXBlY2hl
Y2soc3RydWN0IGludGVsX2d0ICosIGRhdGEpOyBcCisJX19pOTE1X3N1YnRlc3RzKF9fZnVuY19f
LCBcCisJCQlfX2ludGVsX2d0X2xpdmVfc2V0dXAsIF9faW50ZWxfZ3RfbGl2ZV90ZWFyZG93biwg
XAorCQkJVCwgQVJSQVlfU0laRShUKSwgZGF0YSk7IFwKK30pCgp0b3RhbDogMCBlcnJvcnMsIDMg
d2FybmluZ3MsIDIgY2hlY2tzLCA0Mjk4IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
