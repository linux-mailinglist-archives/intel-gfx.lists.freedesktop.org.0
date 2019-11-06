Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BDDF1D9D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 19:35:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8BD86E28A;
	Wed,  6 Nov 2019 18:35:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CE21B6E286;
 Wed,  6 Nov 2019 18:35:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C844EA0003;
 Wed,  6 Nov 2019 18:35:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 06 Nov 2019 18:35:49 -0000
Message-ID: <157306534979.12036.9717228605256818260@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191106142432.14022-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191106142432.14022-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv3=2C1/5=5D_drm=3A_Move_EXPORT=5FSYM?=
 =?utf-8?q?BOL=5FFOR=5FTESTS=5FONLY_under_a_separate_Kconfig?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YzLDEv
NV0gZHJtOiBNb3ZlIEVYUE9SVF9TWU1CT0xfRk9SX1RFU1RTX09OTFkgdW5kZXIgYSBzZXBhcmF0
ZSBLY29uZmlnClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy82OTA2OC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNo
IG9yaWdpbi9kcm0tdGlwCjc3MzcyNjdiMzQ3NyBkcm06IE1vdmUgRVhQT1JUX1NZTUJPTF9GT1Jf
VEVTVFNfT05MWSB1bmRlciBhIHNlcGFyYXRlIEtjb25maWcKNWY5OTA1MzgyMDgwIGRybTogRXhw
b3NlIGEgbWV0aG9kIGZvciBjcmVhdGluZyBhbm9ueW1vdXMgc3RydWN0IGZpbGUgYXJvdW5kIGRy
bV9taW5vcgo0MWUyMjNmZDg4ZTcgZHJtL2k5MTUvc2VsZnRlc3RzOiBSZXBsYWNlIG1vY2tfZmls
ZSBoYWNrZXJ5IHdpdGggZHJtJ3MgdHJ1ZSBmYWtlCjM2MTZiOTcwNThlYyBkcm0vaTkxNS9zZWxm
dGVzdHM6IFdyYXAgdm1fbW1hcCgpIGFyb3VuZCBHRU0gb2JqZWN0cwotOjQxOiBDSEVDSzpNQUNS
T19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICd4JyAtIHBvc3NpYmxlIHNpZGUtZWZm
ZWN0cz8KIzQxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX21tYW4uYzo2OTg6CisjZGVmaW5lIGV4cGFuZDMyKHgpICgoKHgpIDw8IDApIHwgKCh4KSA8
PCA4KSB8ICgoeCkgPDwgMTYpIHwgKCh4KSA8PCAyNCkpCgotOjkxOiBFUlJPUjpTUEFDSU5HOiBz
cGFjZSByZXF1aXJlZCBiZWZvcmUgdGhhdCAnKicgKGN0eDpWeFYpCiM5MTogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmM6NzQ4OgorCQl1MzIg
X191c2VyICp1eCA9IHU2NF90b191c2VyX3B0cigodTY0KShhZGRyICsgaSAqIHNpemVvZioodXgp
KSk7CiAJCSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXgoKLToxNDc6IFdBUk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6IGFkZGVkLCBtb3ZlZCBv
ciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1cGRhdGluZz8KIzE0Nzog
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjE1MjogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBN
aXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAx
CiMxNTI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbW1hcC5jOjE6
CisvKgoKLToxNTM6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojMTUzOiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X21tYXAuYzoyOgorICogU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IE1JVAoKLToxOTc6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2lu
ZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQojMTk3
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X21tYXAuaDoxOgorLyoK
Ci06MTk4OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzE5ODogRklMRTogZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9tbWFwLmg6MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBNSVQKCnRvdGFsOiAxIGVycm9ycywgNSB3YXJuaW5ncywgMSBjaGVja3MsIDE4MCBs
aW5lcyBjaGVja2VkCmE2MDExMzY2MWExMyBkcm0vaTkxNS9zZWxmdGVzdHM6IFZlcmlmeSBtbWFw
X2d0dCByZXZvY2F0aW9uIG9uIHVuYmluZGluZwotOjY3OiBXQVJOSU5HOkxJTkVfU1BBQ0lORzog
TWlzc2luZyBhIGJsYW5rIGxpbmUgYWZ0ZXIgZGVjbGFyYXRpb25zCiM2NzogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmM6ODM3OgorCQlpbnQg
ZXJyID0gX19nZXRfdXNlcihjLCBhZGRyKTsKKwkJaWYgKGVycikKCnRvdGFsOiAwIGVycm9ycywg
MSB3YXJuaW5ncywgMCBjaGVja3MsIDExOSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
