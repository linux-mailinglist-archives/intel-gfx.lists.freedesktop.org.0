Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8BBF1202
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 10:21:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC2AA6EC72;
	Wed,  6 Nov 2019 09:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 813896EC71;
 Wed,  6 Nov 2019 09:21:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7ADCBA0073;
 Wed,  6 Nov 2019 09:21:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 06 Nov 2019 09:21:28 -0000
Message-ID: <157303208850.12034.14428297513261674258@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191106011748.14419-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191106011748.14419-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Wrap_vm=5Fmmap=28=29_around_GEM_object?=
 =?utf-8?q?s_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBXcmFwIHZt
X21tYXAoKSBhcm91bmQgR0VNIG9iamVjdHMgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTAyNC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1t
YXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmQ5ZjY0YjE5ZTRmMyBkcm0v
aTkxNS9zZWxmdGVzdHM6IFdyYXAgdm1fbW1hcCgpIGFyb3VuZCBHRU0gb2JqZWN0cwotOjY4OiBD
SEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICd4JyAtIHBvc3NpYmxl
IHNpZGUtZWZmZWN0cz8KIzY4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2k5MTVfZ2VtX21tYW4uYzo2OTg6CisjZGVmaW5lIGV4cGFuZDMyKHgpICgoKHgpIDw8IDAp
IHwgKCh4KSA8PCA4KSB8ICgoeCkgPDwgMTYpIHwgKCh4KSA8PCAyNCkpCgotOjExOTogRVJST1I6
U1BBQ0lORzogc3BhY2UgcmVxdWlyZWQgYmVmb3JlIHRoYXQgJyonIChjdHg6VnhWKQojMTE5OiBG
SUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYzo3
NDk6CisJCXUzMiBfX3VzZXIgKnV4ID0gdTY0X3RvX3VzZXJfcHRyKCh1NjQpKGFkZHIgKyBpICog
c2l6ZW9mKih1eCkpKTsKIAkJICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBeCgotOjE3NTogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRk
ZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0
aW5nPwojMTc1OiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCi06MTgwOiBXQVJOSU5HOlNQRFhfTElD
RU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRh
ZyBpbiBsaW5lIDEKIzE4MDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ln
dF9tbWFwLmM6MToKKy8qCgotOjE4MTogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFj
ZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiMxODE6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbW1hcC5jOjI6CisgKiBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCgotOjI1MTogV0FSTklORzpTUERYX0xJQ0VOU0Vf
VEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4g
bGluZSAxCiMyNTE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbW1h
cC5oOjE6CisvKgoKLToyNTI6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojMjUyOiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X21tYXAuaDoyOgorICogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKdG90YWw6IDEgZXJyb3JzLCA1IHdhcm5pbmdzLCAxIGNo
ZWNrcywgMjM3IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
