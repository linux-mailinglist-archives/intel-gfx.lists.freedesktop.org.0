Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA09F39F5
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 21:59:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C36146F7BE;
	Thu,  7 Nov 2019 20:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A0B36F7BB;
 Thu,  7 Nov 2019 20:59:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 433ACA00FA;
 Thu,  7 Nov 2019 20:59:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 07 Nov 2019 20:59:45 -0000
Message-ID: <157316038525.21754.14535383875421639268@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191107180601.30815-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191107180601.30815-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/5=5D_drm=3A_Move_EXPORT=5FSYM?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
NV0gZHJtOiBNb3ZlIEVYUE9SVF9TWU1CT0xfRk9SX1RFU1RTX09OTFkgdW5kZXIgYSBzZXBhcmF0
ZSBLY29uZmlnClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy82OTE0Ny8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNo
IG9yaWdpbi9kcm0tdGlwCmZlMDc5YTJjN2YwNiBkcm06IE1vdmUgRVhQT1JUX1NZTUJPTF9GT1Jf
VEVTVFNfT05MWSB1bmRlciBhIHNlcGFyYXRlIEtjb25maWcKMTVjMmRhNjI3MWQxIGRybTogRXhw
b3NlIGEgbWV0aG9kIGZvciBjcmVhdGluZyBhbm9ueW1vdXMgc3RydWN0IGZpbGUgYXJvdW5kIGRy
bV9taW5vcgo4NzgzZjIxZmUyZDcgZHJtL2k5MTUvc2VsZnRlc3RzOiBSZXBsYWNlIG1vY2tfZmls
ZSBoYWNrZXJ5IHdpdGggZHJtJ3MgdHJ1ZSBmYWtlCjE3YzdiNGI5NTViMyBkcm0vaTkxNS9zZWxm
dGVzdHM6IFdyYXAgdm1fbW1hcCgpIGFyb3VuZCBHRU0gb2JqZWN0cwotOjQyOiBDSEVDSzpNQUNS
T19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICd4JyAtIHBvc3NpYmxlIHNpZGUtZWZm
ZWN0cz8KIzQyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX21tYW4uYzo2OTg6CisjZGVmaW5lIGV4cGFuZDMyKHgpICgoKHgpIDw8IDApIHwgKCh4KSA8
PCA4KSB8ICgoeCkgPDwgMTYpIHwgKCh4KSA8PCAyNCkpCgotOjk1OiBFUlJPUjpTUEFDSU5HOiBz
cGFjZSByZXF1aXJlZCBiZWZvcmUgdGhhdCAnKicgKGN0eDpWeFYpCiM5NTogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmM6NzUxOgorCQl1MzIg
X191c2VyICp1eCA9IHU2NF90b191c2VyX3B0cigodTY0KShhZGRyICsgaSAqIHNpemVvZioodXgp
KSk7CiAJCSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXgoKLToxNTE6IFdBUk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6IGFkZGVkLCBtb3ZlZCBv
ciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1cGRhdGluZz8KIzE1MTog
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjE1NjogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBN
aXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAx
CiMxNTY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbW1hcC5jOjE6
CisvKgoKLToxNTc6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojMTU3OiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X21tYXAuYzoyOgorICogU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IE1JVAoKLToyMDE6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2lu
ZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQojMjAx
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X21tYXAuaDoxOgorLyoK
Ci06MjAyOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzIwMjogRklMRTogZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9tbWFwLmg6MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBNSVQKCnRvdGFsOiAxIGVycm9ycywgNSB3YXJuaW5ncywgMSBjaGVja3MsIDE4MyBs
aW5lcyBjaGVja2VkCjMwNzRkYmRkNDAyNyBkcm0vaTkxNS9zZWxmdGVzdHM6IFZlcmlmeSBtbWFw
X2d0dCByZXZvY2F0aW9uIG9uIHVuYmluZGluZwotOjY4OiBXQVJOSU5HOkxJTkVfU1BBQ0lORzog
TWlzc2luZyBhIGJsYW5rIGxpbmUgYWZ0ZXIgZGVjbGFyYXRpb25zCiM2ODogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmM6ODQwOgorCQlpbnQg
ZXJyID0gX19nZXRfdXNlcihjLCBhZGRyKTsKKwkJaWYgKGVycikKCnRvdGFsOiAwIGVycm9ycywg
MSB3YXJuaW5ncywgMCBjaGVja3MsIDEyMiBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
