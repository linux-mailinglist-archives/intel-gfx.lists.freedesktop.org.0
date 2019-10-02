Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29641C8724
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 13:22:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 617796E946;
	Wed,  2 Oct 2019 11:22:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D63A86E945
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 11:21:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18692020-1500050 
 for multiple; Wed, 02 Oct 2019 12:20:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 12:19:35 +0100
Message-Id: <20191002112000.12280-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002112000.12280-1-chris@chris-wilson.co.uk>
References: <20191002112000.12280-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/30] drm/i915: Mark up address spaces that may
 need to allocate
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

U2luY2Ugd2UgY2Fubm90IGFsbG9jYXRlIHVuZGVybmVhdGggdGhlIHZtLT5tdXRleCAoaXQgaXMg
dXNlZCBpbiB0aGUKZGlyZWN0LXJlY2xhaW0gcGF0aHMpLCB3ZSBuZWVkIHRvIHNoaWZ0IHRoZSBh
bGxvY2F0aW9ucyBvZmYgaW50byBhCm11dGV4bGVzcyB3b3JrZXIgd2l0aCBmZW5jZSByZWN1cnNp
b24gcHJldmVudGlvbi4gVG8ga25vdyB3aGVuIHdlIG5lZWQKdGhpcyBwcm90ZWN0aW9uLCB3ZSBt
YXJrIHVwIHRoZSBhZGRyZXNzIHNwYWNlcyB0aGF0IGRvIGFsbG9jYXRlIGJlZm9yZQppbnNlcnRp
b24uIEluIHRoZSBmdXR1cmUsIHdlIG1heSB3aXNoIHRvIGV4dGVuZCB0aGUgYXN5bmMgYmluZCBz
Y2hlbWUgdG8KbW9yZSB0aGFuIGp1c3QgYWxsb2NhdGlvbnMuCgp2Mjogcy92bS0+YmluZF9hbGxv
Yy92bS0+YmluZF9hc3luY19mbGFncy8KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDMg
KysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaCB8IDIgKysKIDIgZmlsZXMg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwpp
bmRleCBhZDllYjJkNjhmM2YuLjhlYmE2M2VjZGIwMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMKQEAgLTE1MDIsNiArMTUwMiw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wcGd0dCAq
Z2VuOF9wcGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCQlnb3Rv
IGVycl9mcmVlX3BkOwogCX0KIAorCXBwZ3R0LT52bS5iaW5kX2FzeW5jX2ZsYWdzID0gSTkxNV9W
TUFfTE9DQUxfQklORDsKIAlwcGd0dC0+dm0uaW5zZXJ0X2VudHJpZXMgPSBnZW44X3BwZ3R0X2lu
c2VydDsKIAlwcGd0dC0+dm0uYWxsb2NhdGVfdmFfcmFuZ2UgPSBnZW44X3BwZ3R0X2FsbG9jOwog
CXBwZ3R0LT52bS5jbGVhcl9yYW5nZSA9IGdlbjhfcHBndHRfY2xlYXI7CkBAIC0xOTUwLDYgKzE5
NTEsNyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfcHBndHQgKmdlbjZfcHBndHRfY3JlYXRlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXBwZ3R0X2luaXQoJnBwZ3R0LT5iYXNlLCAmaTkx
NS0+Z3QpOwogCXBwZ3R0LT5iYXNlLnZtLnRvcCA9IDE7CiAKKwlwcGd0dC0+YmFzZS52bS5iaW5k
X2FzeW5jX2ZsYWdzID0gSTkxNV9WTUFfTE9DQUxfQklORDsKIAlwcGd0dC0+YmFzZS52bS5hbGxv
Y2F0ZV92YV9yYW5nZSA9IGdlbjZfYWxsb2NfdmFfcmFuZ2U7CiAJcHBndHQtPmJhc2Uudm0uY2xl
YXJfcmFuZ2UgPSBnZW42X3BwZ3R0X2NsZWFyX3JhbmdlOwogCXBwZ3R0LT5iYXNlLnZtLmluc2Vy
dF9lbnRyaWVzID0gZ2VuNl9wcGd0dF9pbnNlcnRfZW50cmllczsKQEAgLTI1ODEsNiArMjU4Myw3
IEBAIHN0YXRpYyBpbnQgaW5pdF9hbGlhc2luZ19wcGd0dChzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0
KQogCQlnb3RvIGVycl9wcGd0dDsKIAogCWdndHQtPmFsaWFzID0gcHBndHQ7CisJZ2d0dC0+dm0u
YmluZF9hc3luY19mbGFncyB8PSBwcGd0dC0+dm0uYmluZF9hc3luY19mbGFnczsKIAogCUdFTV9C
VUdfT04oZ2d0dC0+dm0udm1hX29wcy5iaW5kX3ZtYSAhPSBnZ3R0X2JpbmRfdm1hKTsKIAlnZ3R0
LT52bS52bWFfb3BzLmJpbmRfdm1hID0gYWxpYXNpbmdfZ3R0X2JpbmRfdm1hOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuaAppbmRleCBiYmRjNzM1NDY2YzEuLjM1MDJiOWM4NWE4ZSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKQEAgLTMwNSw2ICszMDUsOCBAQCBzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlIHsKIAl1NjQgdG90YWw7CQkvKiBzaXplIGFkZHIgc3BhY2UgbWFw
cyAoZXguIDJHQiBmb3IgZ2d0dCkgKi8KIAl1NjQgcmVzZXJ2ZWQ7CQkvKiBzaXplIGFkZHIgc3Bh
Y2UgcmVzZXJ2ZWQgKi8KIAorCXVuc2lnbmVkIGludCBiaW5kX2FzeW5jX2ZsYWdzOworCiAJYm9v
bCBjbG9zZWQ7CiAKIAlzdHJ1Y3QgbXV0ZXggbXV0ZXg7IC8qIHByb3RlY3RzIHZtYSBhbmQgb3Vy
IGxpc3RzICovCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
