Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2E8A2F7E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 08:12:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D79E46E258;
	Fri, 30 Aug 2019 06:12:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C996E24D
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 06:12:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18312339-1500050 
 for multiple; Fri, 30 Aug 2019 07:12:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 07:11:55 +0100
Message-Id: <20190830061204.21206-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190830061204.21206-1-chris@chris-wilson.co.uk>
References: <20190830061204.21206-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/21] drm/i915: Mark up address spaces that may
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
b24uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDMgKysrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaCB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwg
NSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCA2ZTQ4
ZjNiMjg3YTQuLmJlMTA2ODY1NzZkNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
QEAgLTE1MDAsNiArMTUwMCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wcGd0dCAqZ2VuOF9wcGd0
dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCQlnb3RvIGVycl9mcmVl
X3BkOwogCX0KIAorCXBwZ3R0LT52bS5iaW5kX2FsbG9jID0gSTkxNV9WTUFfTE9DQUxfQklORDsK
IAlwcGd0dC0+dm0uaW5zZXJ0X2VudHJpZXMgPSBnZW44X3BwZ3R0X2luc2VydDsKIAlwcGd0dC0+
dm0uYWxsb2NhdGVfdmFfcmFuZ2UgPSBnZW44X3BwZ3R0X2FsbG9jOwogCXBwZ3R0LT52bS5jbGVh
cl9yYW5nZSA9IGdlbjhfcHBndHRfY2xlYXI7CkBAIC0xOTQ3LDYgKzE5NDgsNyBAQCBzdGF0aWMg
c3RydWN0IGk5MTVfcHBndHQgKmdlbjZfcHBndHRfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogCXBwZ3R0X2luaXQoJnBwZ3R0LT5iYXNlLCAmaTkxNS0+Z3QpOwogCXBwZ3R0
LT5iYXNlLnZtLnRvcCA9IDE7CiAKKwlwcGd0dC0+YmFzZS52bS5iaW5kX2FsbG9jID0gSTkxNV9W
TUFfTE9DQUxfQklORDsKIAlwcGd0dC0+YmFzZS52bS5hbGxvY2F0ZV92YV9yYW5nZSA9IGdlbjZf
YWxsb2NfdmFfcmFuZ2U7CiAJcHBndHQtPmJhc2Uudm0uY2xlYXJfcmFuZ2UgPSBnZW42X3BwZ3R0
X2NsZWFyX3JhbmdlOwogCXBwZ3R0LT5iYXNlLnZtLmluc2VydF9lbnRyaWVzID0gZ2VuNl9wcGd0
dF9pbnNlcnRfZW50cmllczsKQEAgLTI1NzgsNiArMjU4MCw3IEBAIHN0YXRpYyBpbnQgaW5pdF9h
bGlhc2luZ19wcGd0dChzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogCQlnb3RvIGVycl9wcGd0dDsK
IAogCWdndHQtPmFsaWFzID0gcHBndHQ7CisJZ2d0dC0+dm0uYmluZF9hbGxvYyB8PSBwcGd0dC0+
dm0uYmluZF9hbGxvYzsKIAogCUdFTV9CVUdfT04oZ2d0dC0+dm0udm1hX29wcy5iaW5kX3ZtYSAh
PSBnZ3R0X2JpbmRfdm1hKTsKIAlnZ3R0LT52bS52bWFfb3BzLmJpbmRfdm1hID0gYWxpYXNpbmdf
Z3R0X2JpbmRfdm1hOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaAppbmRleCA1N2QyNzg5
ODYzOWEuLjAwN2JkYWY0YmEwMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKQEAg
LTMwNSw2ICszMDUsOCBAQCBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlIHsKIAl1NjQgdG90YWw7
CQkvKiBzaXplIGFkZHIgc3BhY2UgbWFwcyAoZXguIDJHQiBmb3IgZ2d0dCkgKi8KIAl1NjQgcmVz
ZXJ2ZWQ7CQkvKiBzaXplIGFkZHIgc3BhY2UgcmVzZXJ2ZWQgKi8KIAorCXVuc2lnbmVkIGludCBi
aW5kX2FsbG9jOworCiAJYm9vbCBjbG9zZWQ7CiAKIAlzdHJ1Y3QgbXV0ZXggbXV0ZXg7IC8qIHBy
b3RlY3RzIHZtYSBhbmQgb3VyIGxpc3RzICovCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
