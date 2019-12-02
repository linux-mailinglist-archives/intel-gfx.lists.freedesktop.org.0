Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA4610E91E
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 11:44:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 043986E11B;
	Mon,  2 Dec 2019 10:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4314D6E11B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 10:44:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19425144-1500050 
 for multiple; Mon, 02 Dec 2019 10:44:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 10:44:10 +0000
Message-Id: <20191202104410.2278251-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202104410.2278251-1-chris@chris-wilson.co.uk>
References: <20191202104410.2278251-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Try hard to bind the context
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
X2dlbV9ndHQuYyB8IDE1ICsrKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwpp
bmRleCAxMGIzZDZkNDQwNDUuLmJjZjQ0NzlhNmY4ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMKQEAgLTE5MzQsOSArMTkzNCwxOCBAQCBpbnQgZ2VuNl9wcGd0dF9waW4oc3RydWN0
IGk5MTVfcHBndHQgKmJhc2UpCiAJICogc2l6ZS4gV2UgYWxsb2NhdGUgYXQgdGhlIHRvcCBvZiB0
aGUgR1RUIHRvIGF2b2lkIGZyYWdtZW50YXRpb24uCiAJICovCiAJaWYgKCFhdG9taWNfcmVhZCgm
cHBndHQtPnBpbl9jb3VudCkpIHsKLQkJZXJyID0gaTkxNV92bWFfcGluKHBwZ3R0LT52bWEsCi0J
CQkJICAgMCwgR0VONl9QRF9BTElHTiwKLQkJCQkgICBQSU5fR0xPQkFMIHwgUElOX0hJR0gpOwor
CQlkbyB7CisJCQllcnIgPSBpOTE1X3ZtYV9waW4ocHBndHQtPnZtYSwKKwkJCQkJICAgMCwgR0VO
Nl9QRF9BTElHTiwKKwkJCQkJICAgUElOX0dMT0JBTCB8IFBJTl9ISUdIKTsKKwkJCWlmIChlcnIg
IT0gLUVOT1NQQykKKwkJCQlicmVhazsKKworCQkJLyogV2UgZG9uJ3QgdGFrZSBubyBmb3IgYW4g
YW5zd2VyICovCisJCQllcnIgPSBpOTE1X2dlbV9ldmljdF92bShwcGd0dC0+dm1hLT52bSk7CisJ
CQlpZiAoZXJyKQorCQkJCWJyZWFrOworCQl9IHdoaWxlICgxKTsKIAl9CiAJaWYgKCFlcnIpCiAJ
CWF0b21pY19pbmMoJnBwZ3R0LT5waW5fY291bnQpOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
