Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32ACC11359B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 20:23:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ABBB6EA03;
	Wed,  4 Dec 2019 19:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C95576E974
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 19:23:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19462013-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Dec 2019 19:23:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Dec 2019 19:23:43 +0000
Message-Id: <20191204192343.3939007-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204192343.3939007-1-chris@chris-wilson.co.uk>
References: <20191204192343.3939007-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915: Try hard to bind the context
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQgaXMgbm90IGFjY2VwdGFibGUgZm9yIGNvbnRleHQgcGlubmluZyB0byBmYWlsIHdpdGggLUVO
T1NQQyBhcyB3ZQpzaG91bGQgYWx3YXlzIGJlIGFibGUgdG8gbWFrZSBzcGFjZSBpbiB0aGUgR0dU
VC4gVGhlIG9ubHkgcmVhc29uIHdlIG1heQpmYWlsIGlzIHRoYXQgb3RoZXIgInRlbXBvcmFyeSIg
Y29udGV4dCBwaW5zIGFyZSByZXNlcnZpbmcgdGhlaXIgc3BhY2UKYW5kIHdlIG5lZWQgdG8gd2Fp
dCBmb3IgYW4gYXZhaWxhYmxlIHNsb3QuCgpDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzY3NgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYyB8IDIxICsrKysrKysrKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDE4
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYwppbmRleCAxMGIzZDZkNDQwNDUuLjdlMjBjNmY2MmNkNSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMKQEAgLTE5MzQsOSArMTkzNCwyNCBAQCBpbnQgZ2VuNl9wcGd0dF9waW4o
c3RydWN0IGk5MTVfcHBndHQgKmJhc2UpCiAJICogc2l6ZS4gV2UgYWxsb2NhdGUgYXQgdGhlIHRv
cCBvZiB0aGUgR1RUIHRvIGF2b2lkIGZyYWdtZW50YXRpb24uCiAJICovCiAJaWYgKCFhdG9taWNf
cmVhZCgmcHBndHQtPnBpbl9jb3VudCkpIHsKLQkJZXJyID0gaTkxNV92bWFfcGluKHBwZ3R0LT52
bWEsCi0JCQkJICAgMCwgR0VONl9QRF9BTElHTiwKLQkJCQkgICBQSU5fR0xPQkFMIHwgUElOX0hJ
R0gpOworCQlkbyB7CisJCQlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSA9IHBwZ3R0LT52
bWEtPnZtOworCisJCQllcnIgPSBpOTE1X3ZtYV9waW4ocHBndHQtPnZtYSwKKwkJCQkJICAgMCwg
R0VONl9QRF9BTElHTiwKKwkJCQkJICAgUElOX0dMT0JBTCB8IFBJTl9ISUdIKTsKKwkJCWlmIChl
cnIgIT0gLUVOT1NQQykKKwkJCQlicmVhazsKKworCQkJLyogV2UgZG9uJ3QgdGFrZSBubyBmb3Ig
YW4gYW5zd2VyISAqLworCQkJZXJyID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZ2bS0+bXV0
ZXgpOworCQkJaWYgKGVyciA9PSAwKSB7CisJCQkJZXJyID0gaTkxNV9nZW1fZXZpY3Rfdm0odm0p
OworCQkJCW11dGV4X3VubG9jaygmdm0tPm11dGV4KTsKKwkJCX0KKwkJCWlmIChlcnIpCisJCQkJ
YnJlYWs7CisJCX0gd2hpbGUgKDEpOwogCX0KIAlpZiAoIWVycikKIAkJYXRvbWljX2luYygmcHBn
dHQtPnBpbl9jb3VudCk7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
