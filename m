Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01307F7AAB
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 19:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B84806E9BB;
	Mon, 11 Nov 2019 18:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 194F06E1D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 18:21:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19163802-1500050 
 for multiple; Mon, 11 Nov 2019 18:21:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 18:21:43 +0000
Message-Id: <20191111182143.23479-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191111182143.23479-1-chris@chris-wilson.co.uk>
References: <20191111182143.23479-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Pass mem region to
 preallocated stolen
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgdGhlIG1lbW9yeSByZWdpb25zIGFyZSBzZXR1cCBlYXJseSwgd2UgY2FuIHJlbHkgb24gaXRz
IGV4aXN0ZW5jZSBhcwp3ZSB0YWtlb3ZlciB0aGUgSFcgc2V0dGluZ3MgZnJvbSBCSU9TLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBN
YXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3N0b2xlbi5jIHwgMjIgKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYwppbmRleCA1NTQyMmZlYzc0MjIuLmFmYjA4
YTE3MDRhMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0
b2xlbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYwpA
QCAtNTQ5LDExICs1NDksMTAgQEAgaTkxNV9nZW1fb2JqZWN0X3JlbGVhc2Vfc3RvbGVuKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAKIAlHRU1fQlVHX09OKCFzdG9sZW4pOwogCisJ
aTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbWVtb3J5X3JlZ2lvbihvYmopOworCiAJaTkxNV9nZW1f
c3RvbGVuX3JlbW92ZV9ub2RlKGk5MTUsIHN0b2xlbik7CiAJa2ZyZWUoc3RvbGVuKTsKLQotCWlm
IChvYmotPm1tLnJlZ2lvbikKLQkJaTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbWVtb3J5X3JlZ2lv
bihvYmopOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3Bz
IGk5MTVfZ2VtX29iamVjdF9zdG9sZW5fb3BzID0gewpAQCAtNTYzLDkgKzU2Miw4IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgaTkxNV9nZW1fb2JqZWN0X3N0
b2xlbl9vcHMgPSB7CiB9OwogCiBzdGF0aWMgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKgot
X19pOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwKLQkJCQlzdHJ1Y3QgZHJtX21tX25vZGUgKnN0b2xlbiwKLQkJCQlzdHJ1Y3QgaW50ZWxf
bWVtb3J5X3JlZ2lvbiAqbWVtKQorX19pOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihzdHJ1
Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAorCQkJCXN0cnVjdCBkcm1fbW1fbm9kZSAqc3Rv
bGVuKQogewogCXN0YXRpYyBzdHJ1Y3QgbG9ja19jbGFzc19rZXkgbG9ja19jbGFzczsKIAlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwpAQCAtNTc2LDIwICs1NzQsMTkgQEAgX19pOTE1
X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwK
IAlpZiAoIW9iaikKIAkJZ290byBlcnI7CiAKLQlkcm1fZ2VtX3ByaXZhdGVfb2JqZWN0X2luaXQo
Jmk5MTUtPmRybSwgJm9iai0+YmFzZSwgc3RvbGVuLT5zaXplKTsKKwlkcm1fZ2VtX3ByaXZhdGVf
b2JqZWN0X2luaXQoJm1lbS0+aTkxNS0+ZHJtLCAmb2JqLT5iYXNlLCBzdG9sZW4tPnNpemUpOwog
CWk5MTVfZ2VtX29iamVjdF9pbml0KG9iaiwgJmk5MTVfZ2VtX29iamVjdF9zdG9sZW5fb3BzLCAm
bG9ja19jbGFzcyk7CiAKIAlvYmotPnN0b2xlbiA9IHN0b2xlbjsKIAlvYmotPnJlYWRfZG9tYWlu
cyA9IEk5MTVfR0VNX0RPTUFJTl9DUFUgfCBJOTE1X0dFTV9ET01BSU5fR1RUOwotCWNhY2hlX2xl
dmVsID0gSEFTX0xMQyhpOTE1KSA/IEk5MTVfQ0FDSEVfTExDIDogSTkxNV9DQUNIRV9OT05FOwor
CWNhY2hlX2xldmVsID0gSEFTX0xMQyhtZW0tPmk5MTUpID8gSTkxNV9DQUNIRV9MTEMgOiBJOTE1
X0NBQ0hFX05PTkU7CiAJaTkxNV9nZW1fb2JqZWN0X3NldF9jYWNoZV9jb2hlcmVuY3kob2JqLCBj
YWNoZV9sZXZlbCk7CiAKIAllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CiAJ
aWYgKGVycikKIAkJZ290byBjbGVhbnVwOwogCi0JaWYgKG1lbSkKLQkJaTkxNV9nZW1fb2JqZWN0
X2luaXRfbWVtb3J5X3JlZ2lvbihvYmosIG1lbSwgMCk7CisJaTkxNV9nZW1fb2JqZWN0X2luaXRf
bWVtb3J5X3JlZ2lvbihvYmosIG1lbSwgMCk7CiAKIAlyZXR1cm4gb2JqOwogCkBAIC02MjUsNyAr
NjIyLDcgQEAgX2k5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKHN0cnVjdCBpbnRlbF9tZW1v
cnlfcmVnaW9uICptZW0sCiAJCWdvdG8gZXJyX2ZyZWU7CiAJfQogCi0Jb2JqID0gX19pOTE1X2dl
bV9vYmplY3RfY3JlYXRlX3N0b2xlbihpOTE1LCBzdG9sZW4sIG1lbSk7CisJb2JqID0gX19pOTE1
X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihtZW0sIHN0b2xlbik7CiAJaWYgKElTX0VSUihvYmop
KQogCQlnb3RvIGVycl9yZW1vdmU7CiAKQEAgLTY4MSw2ICs2NzgsNyBAQCBpOTE1X2dlbV9vYmpl
Y3RfY3JlYXRlX3N0b2xlbl9mb3JfcHJlYWxsb2NhdGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LAogCQkJCQkgICAgICAgcmVzb3VyY2Vfc2l6ZV90IGd0dF9vZmZzZXQsCiAJCQkJCSAg
ICAgICByZXNvdXJjZV9zaXplX3Qgc2l6ZSkKIHsKKwlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lv
biAqbWVtID0gaTkxNS0+bW0ucmVnaW9uc1tJTlRFTF9SRUdJT05fU1RPTEVOXTsKIAlzdHJ1Y3Qg
aTkxNV9nZ3R0ICpnZ3R0ID0gJmk5MTUtPmdndHQ7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iajsKIAlzdHJ1Y3QgZHJtX21tX25vZGUgKnN0b2xlbjsKQEAgLTcxNCw3ICs3MTIsNyBA
QCBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbl9mb3JfcHJlYWxsb2NhdGVkKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LAogCQlyZXR1cm4gRVJSX1BUUihyZXQpOwogCX0KIAotCW9i
aiA9IF9faTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oaTkxNSwgc3RvbGVuLCBOVUxMKTsK
KwlvYmogPSBfX2k5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKG1lbSwgc3RvbGVuKTsKIAlp
ZiAoSVNfRVJSKG9iaikpIHsKIAkJRFJNX0RFQlVHX0RSSVZFUigiZmFpbGVkIHRvIGFsbG9jYXRl
IHN0b2xlbiBvYmplY3RcbiIpOwogCQlpOTE1X2dlbV9zdG9sZW5fcmVtb3ZlX25vZGUoaTkxNSwg
c3RvbGVuKTsKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
