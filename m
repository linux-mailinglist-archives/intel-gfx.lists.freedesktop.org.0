Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 617D1D5E29
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F516E177;
	Mon, 14 Oct 2019 09:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4587C6E177
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:08:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18828683-1500050 
 for multiple; Mon, 14 Oct 2019 10:07:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 10:07:44 +0100
Message-Id: <20191014090757.32111-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014090757.32111-1-chris@chris-wilson.co.uk>
References: <20191014090757.32111-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/15] drm/i915/gem: Distinguish each object type
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

U2VwYXJhdGUgZWFjaCBvYmplY3QgY2xhc3MgaW50byBhIHNlcGFyYXRlIGxvY2sgdHlwZSB0byBh
dm9pZCBsb2NrZGVwCmNyb3NzLWNvbnRhbWluYXRpb24gYmV0d2VlbiBwYXRocyAoaS5lLiB1c2Vy
cHRyISkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgICAgICAgICAgIHwgMyArKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pbnRlcm5hbC5jICAgICAgICAgfCAz
ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgICAgICAg
ICB8IDUgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAg
ICAgICAgICAgfCAzICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVt
LmMgICAgICAgICAgICB8IDMgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
c3RvbGVuLmMgICAgICAgICAgIHwgMyArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV91c2VycHRyLmMgICAgICAgICAgfCAzICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L3NlbGZ0ZXN0cy9odWdlX2dlbV9vYmplY3QuYyB8IDMgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYyAgICAgIHwgOCArKysrKy0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Z0L2RtYWJ1Zi5jICAgICAgICAgICAgICAgICAgICB8IDMgKystCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgICAgICAgIHwgMyArKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX3JlZ2lvbi5jICAgICAgICAgfCAz
ICsrLQogMTIgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCmluZGV4IDk2Y2U5
NWM4YWM1YS4uZWFlYTQ5ZDA4ZWI1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZG1hYnVmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2RtYWJ1Zi5jCkBAIC0yNTYsNiArMjU2LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0X29wcyBpOTE1X2dlbV9vYmplY3RfZG1hYnVmX29wcyA9IHsKIHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqaTkxNV9nZW1fcHJpbWVfaW1wb3J0KHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsCiAJCQkJCSAgICAgc3RydWN0IGRtYV9idWYgKmRtYV9idWYpCiB7CisJc3RhdGljIHN0
cnVjdCBsb2NrX2NsYXNzX2tleSBsb2NrX2NsYXNzOwogCXN0cnVjdCBkbWFfYnVmX2F0dGFjaG1l
bnQgKmF0dGFjaDsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwogCWludCByZXQ7
CkBAIC0yODcsNyArMjg4LDcgQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICppOTE1X2dlbV9wcmlt
ZV9pbXBvcnQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAl9CiAKIAlkcm1fZ2VtX3ByaXZhdGVf
b2JqZWN0X2luaXQoZGV2LCAmb2JqLT5iYXNlLCBkbWFfYnVmLT5zaXplKTsKLQlpOTE1X2dlbV9v
YmplY3RfaW5pdChvYmosICZpOTE1X2dlbV9vYmplY3RfZG1hYnVmX29wcyk7CisJaTkxNV9nZW1f
b2JqZWN0X2luaXQob2JqLCAmaTkxNV9nZW1fb2JqZWN0X2RtYWJ1Zl9vcHMsICZsb2NrX2NsYXNz
KTsKIAlvYmotPmJhc2UuaW1wb3J0X2F0dGFjaCA9IGF0dGFjaDsKIAlvYmotPmJhc2UucmVzdiA9
IGRtYV9idWYtPnJlc3Y7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9pbnRlcm5hbC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2lu
dGVybmFsLmMKaW5kZXggNWFlNjk0YzI0ZGY0Li45Y2ZiMGU0MWZmMDYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pbnRlcm5hbC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pbnRlcm5hbC5jCkBAIC0xNjQsNiArMTY0LDcgQEAg
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKgogaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRl
cm5hbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJCQlwaHlzX2FkZHJfdCBzaXpl
KQogeworCXN0YXRpYyBzdHJ1Y3QgbG9ja19jbGFzc19rZXkgbG9ja19jbGFzczsKIAlzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwogCXVuc2lnbmVkIGludCBjYWNoZV9sZXZlbDsKIApA
QCAtMTc4LDcgKzE3OSw3IEBAIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCiAJ
ZHJtX2dlbV9wcml2YXRlX29iamVjdF9pbml0KCZpOTE1LT5kcm0sICZvYmotPmJhc2UsIHNpemUp
OwotCWk5MTVfZ2VtX29iamVjdF9pbml0KG9iaiwgJmk5MTVfZ2VtX29iamVjdF9pbnRlcm5hbF9v
cHMpOworCWk5MTVfZ2VtX29iamVjdF9pbml0KG9iaiwgJmk5MTVfZ2VtX29iamVjdF9pbnRlcm5h
bF9vcHMsICZsb2NrX2NsYXNzKTsKIAogCS8qCiAJICogTWFyayB0aGUgb2JqZWN0IGFzIHZvbGF0
aWxlLCBzdWNoIHRoYXQgdGhlIHBhZ2VzIGFyZSBtYXJrZWQgYXMKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwppbmRleCBkYmY5YmU5YTc5ZjQuLmE1MDI5NmNjZTBk
OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwpAQCAtNDcs
OSArNDcsMTAgQEAgdm9pZCBpOTE1X2dlbV9vYmplY3RfZnJlZShzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKQogfQogCiB2b2lkIGk5MTVfZ2VtX29iamVjdF9pbml0KHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmosCi0JCQkgIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0X29wcyAqb3BzKQorCQkJICBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMg
Km9wcywKKwkJCSAgc3RydWN0IGxvY2tfY2xhc3Nfa2V5ICprZXkpCiB7Ci0JbXV0ZXhfaW5pdCgm
b2JqLT5tbS5sb2NrKTsKKwlfX211dGV4X2luaXQoJm9iai0+bW0ubG9jaywgIm9iai0+bW0ubG9j
ayIsIGtleSk7CiAKIAlzcGluX2xvY2tfaW5pdCgmb2JqLT52bWEubG9jayk7CiAJSU5JVF9MSVNU
X0hFQUQoJm9iai0+dm1hLmxpc3QpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdC5oCmluZGV4IGM1ZTE0YzljODA1Yy4uYjAyNDU1ODViNGQ1IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCkBAIC0yMyw3ICsyMyw4IEBAIHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICppOTE1X2dlbV9vYmplY3RfYWxsb2Modm9pZCk7CiB2b2lk
IGk5MTVfZ2VtX29iamVjdF9mcmVlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOwog
CiB2b2lkIGk5MTVfZ2VtX29iamVjdF9pbml0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmosCi0JCQkgIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyAqb3BzKTsKKwkJ
CSAgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzICpvcHMsCisJCQkgIHN0cnVj
dCBsb2NrX2NsYXNzX2tleSAqa2V5KTsKIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKIGk5
MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
IHU2NCBzaXplKTsKIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMKaW5kZXggNGM0OTU0ZThjZTBhLi5mMzZmN2Q2NTgz
ODAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5jCkBAIC00NTgs
NiArNDU4LDcgQEAgc3RhdGljIGludCBjcmVhdGVfc2htZW0oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsCiBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqCiBpOTE1X2dlbV9vYmplY3Rf
Y3JlYXRlX3NobWVtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1NjQgc2l6ZSkKIHsK
KwlzdGF0aWMgc3RydWN0IGxvY2tfY2xhc3Nfa2V5IGxvY2tfY2xhc3M7CiAJc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iajsKIAlzdHJ1Y3QgYWRkcmVzc19zcGFjZSAqbWFwcGluZzsKIAl1
bnNpZ25lZCBpbnQgY2FjaGVfbGV2ZWw7CkBAIC00OTQsNyArNDk1LDcgQEAgaTkxNV9nZW1fb2Jq
ZWN0X2NyZWF0ZV9zaG1lbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTY0IHNpemUp
CiAJbWFwcGluZ19zZXRfZ2ZwX21hc2sobWFwcGluZywgbWFzayk7CiAJR0VNX0JVR19PTighKG1h
cHBpbmdfZ2ZwX21hc2sobWFwcGluZykgJiBfX0dGUF9SRUNMQUlNKSk7CiAKLQlpOTE1X2dlbV9v
YmplY3RfaW5pdChvYmosICZpOTE1X2dlbV9zaG1lbV9vcHMpOworCWk5MTVfZ2VtX29iamVjdF9p
bml0KG9iaiwgJmk5MTVfZ2VtX3NobWVtX29wcywgJmxvY2tfY2xhc3MpOwogCiAJb2JqLT53cml0
ZV9kb21haW4gPSBJOTE1X0dFTV9ET01BSU5fQ1BVOwogCW9iai0+cmVhZF9kb21haW5zID0gSTkx
NV9HRU1fRE9NQUlOX0NQVTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9zdG9sZW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9s
ZW4uYwppbmRleCBjNzYyNjBjZTEzZTMuLmExZjBjZjI1MTliMyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYwpAQCAtNTUxLDYgKzU1MSw3IEBAIHN0YXRpYyBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqCiBfaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9s
ZW4oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJICAgICAgIHN0cnVjdCBk
cm1fbW1fbm9kZSAqc3RvbGVuKQogeworCXN0YXRpYyBzdHJ1Y3QgbG9ja19jbGFzc19rZXkgbG9j
a19jbGFzczsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwogCXVuc2lnbmVkIGlu
dCBjYWNoZV9sZXZlbDsKIAlpbnQgZXJyID0gLUVOT01FTTsKQEAgLTU2MCw3ICs1NjEsNyBAQCBf
aTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCQlnb3RvIGVycjsKIAogCWRybV9nZW1fcHJpdmF0ZV9vYmplY3RfaW5pdCgmZGV2
X3ByaXYtPmRybSwgJm9iai0+YmFzZSwgc3RvbGVuLT5zaXplKTsKLQlpOTE1X2dlbV9vYmplY3Rf
aW5pdChvYmosICZpOTE1X2dlbV9vYmplY3Rfc3RvbGVuX29wcyk7CisJaTkxNV9nZW1fb2JqZWN0
X2luaXQob2JqLCAmaTkxNV9nZW1fb2JqZWN0X3N0b2xlbl9vcHMsICZsb2NrX2NsYXNzKTsKIAog
CW9iai0+c3RvbGVuID0gc3RvbGVuOwogCW9iai0+cmVhZF9kb21haW5zID0gSTkxNV9HRU1fRE9N
QUlOX0NQVSB8IEk5MTVfR0VNX0RPTUFJTl9HVFQ7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX3VzZXJwdHIuYwppbmRleCA0Zjk3MDQ3NDAxM2YuLjFlMDQ1YzMzNzA0NCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCkBAIC03MjUsNiAr
NzI1LDcgQEAgaTkxNV9nZW1fdXNlcnB0cl9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAog
CQkgICAgICAgdm9pZCAqZGF0YSwKIAkJICAgICAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKIHsK
KwlzdGF0aWMgc3RydWN0IGxvY2tfY2xhc3Nfa2V5IGxvY2tfY2xhc3M7CiAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwogCXN0cnVjdCBkcm1faTkxNV9n
ZW1fdXNlcnB0ciAqYXJncyA9IGRhdGE7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
ajsKQEAgLTc2OSw3ICs3NzAsNyBAQCBpOTE1X2dlbV91c2VycHRyX2lvY3RsKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsCiAJCXJldHVybiAtRU5PTUVNOwogCiAJZHJtX2dlbV9wcml2YXRlX29iamVj
dF9pbml0KGRldiwgJm9iai0+YmFzZSwgYXJncy0+dXNlcl9zaXplKTsKLQlpOTE1X2dlbV9vYmpl
Y3RfaW5pdChvYmosICZpOTE1X2dlbV91c2VycHRyX29wcyk7CisJaTkxNV9nZW1fb2JqZWN0X2lu
aXQob2JqLCAmaTkxNV9nZW1fdXNlcnB0cl9vcHMsICZsb2NrX2NsYXNzKTsKIAlvYmotPnJlYWRf
ZG9tYWlucyA9IEk5MTVfR0VNX0RPTUFJTl9DUFU7CiAJb2JqLT53cml0ZV9kb21haW4gPSBJOTE1
X0dFTV9ET01BSU5fQ1BVOwogCWk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfY29oZXJlbmN5KG9i
aiwgSTkxNV9DQUNIRV9MTEMpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L3NlbGZ0ZXN0cy9odWdlX2dlbV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9z
ZWxmdGVzdHMvaHVnZV9nZW1fb2JqZWN0LmMKaW5kZXggM2M1ZDE3YjJiNjcwLi44OTJkMTJkYjZj
NDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9n
ZW1fb2JqZWN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdl
X2dlbV9vYmplY3QuYwpAQCAtOTYsNiArOTYsNyBAQCBodWdlX2dlbV9vYmplY3Qoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCXBoeXNfYWRkcl90IHBoeXNfc2l6ZSwKIAkJZG1hX2Fk
ZHJfdCBkbWFfc2l6ZSkKIHsKKwlzdGF0aWMgc3RydWN0IGxvY2tfY2xhc3Nfa2V5IGxvY2tfY2xh
c3M7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIAl1bnNpZ25lZCBpbnQgY2Fj
aGVfbGV2ZWw7CiAKQEAgLTExMSw3ICsxMTIsNyBAQCBodWdlX2dlbV9vYmplY3Qoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCiAJZHJt
X2dlbV9wcml2YXRlX29iamVjdF9pbml0KCZpOTE1LT5kcm0sICZvYmotPmJhc2UsIGRtYV9zaXpl
KTsKLQlpOTE1X2dlbV9vYmplY3RfaW5pdChvYmosICZodWdlX29wcyk7CisJaTkxNV9nZW1fb2Jq
ZWN0X2luaXQob2JqLCAmaHVnZV9vcHMsICZsb2NrX2NsYXNzKTsKIAogCW9iai0+cmVhZF9kb21h
aW5zID0gSTkxNV9HRU1fRE9NQUlOX0NQVTsKIAlvYmotPndyaXRlX2RvbWFpbiA9IEk5MTVfR0VN
X0RPTUFJTl9DUFU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2h1Z2VfcGFnZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVn
ZV9wYWdlcy5jCmluZGV4IGYyNzc3MmY2Nzc5YS4uZGFjODM0NDUwN2MxIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwpAQCAtMTQ5LDYgKzE0
OSw3IEBAIGh1Z2VfcGFnZXNfb2JqZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAog
CQkgIHU2NCBzaXplLAogCQkgIHVuc2lnbmVkIGludCBwYWdlX21hc2spCiB7CisJc3RhdGljIHN0
cnVjdCBsb2NrX2NsYXNzX2tleSBsb2NrX2NsYXNzOwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmo7CiAKIAlHRU1fQlVHX09OKCFzaXplKTsKQEAgLTE2NSw3ICsxNjYsNyBAQCBodWdl
X3BhZ2VzX29iamVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJcmV0dXJuIEVS
Ul9QVFIoLUVOT01FTSk7CiAKIAlkcm1fZ2VtX3ByaXZhdGVfb2JqZWN0X2luaXQoJmk5MTUtPmRy
bSwgJm9iai0+YmFzZSwgc2l6ZSk7Ci0JaTkxNV9nZW1fb2JqZWN0X2luaXQob2JqLCAmaHVnZV9w
YWdlX29wcyk7CisJaTkxNV9nZW1fb2JqZWN0X2luaXQob2JqLCAmaHVnZV9wYWdlX29wcywgJmxv
Y2tfY2xhc3MpOwogCiAJaTkxNV9nZW1fb2JqZWN0X3NldF92b2xhdGlsZShvYmopOwogCkBAIC0y
OTUsNiArMjk2LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29w
cyBmYWtlX29wc19zaW5nbGUgPSB7CiBzdGF0aWMgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
KgogZmFrZV9odWdlX3BhZ2VzX29iamVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwg
dTY0IHNpemUsIGJvb2wgc2luZ2xlKQogeworCXN0YXRpYyBzdHJ1Y3QgbG9ja19jbGFzc19rZXkg
bG9ja19jbGFzczsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwogCiAJR0VNX0JV
R19PTighc2l6ZSk7CkBAIC0zMTMsOSArMzE1LDkgQEAgZmFrZV9odWdlX3BhZ2VzX29iamVjdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTY0IHNpemUsIGJvb2wgc2luZ2xlKQogCWRy
bV9nZW1fcHJpdmF0ZV9vYmplY3RfaW5pdCgmaTkxNS0+ZHJtLCAmb2JqLT5iYXNlLCBzaXplKTsK
IAogCWlmIChzaW5nbGUpCi0JCWk5MTVfZ2VtX29iamVjdF9pbml0KG9iaiwgJmZha2Vfb3BzX3Np
bmdsZSk7CisJCWk5MTVfZ2VtX29iamVjdF9pbml0KG9iaiwgJmZha2Vfb3BzX3NpbmdsZSwgJmxv
Y2tfY2xhc3MpOwogCWVsc2UKLQkJaTkxNV9nZW1fb2JqZWN0X2luaXQob2JqLCAmZmFrZV9vcHMp
OworCQlpOTE1X2dlbV9vYmplY3RfaW5pdChvYmosICZmYWtlX29wcywgJmxvY2tfY2xhc3MpOwog
CiAJaTkxNV9nZW1fb2JqZWN0X3NldF92b2xhdGlsZShvYmopOwogCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZG1hYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQv
ZG1hYnVmLmMKaW5kZXggMTMwNDRjMDI3ZjI3Li5hODE2YWVmNjE0MmIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9kbWFidWYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndnQvZG1hYnVmLmMKQEAgLTE1Miw2ICsxNTIsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3Rfb3BzIGludGVsX3ZncHVfZ2VtX29wcyA9IHsKIHN0YXRpYyBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqdmdwdV9jcmVhdGVfZ2VtKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsCiAJCXN0cnVjdCBpbnRlbF92Z3B1X2ZiX2luZm8gKmluZm8pCiB7CisJc3RhdGljIHN0
cnVjdCBsb2NrX2NsYXNzX2tleSBsb2NrX2NsYXNzOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqOwogCkBAIC0xNjEsNyArMTYyLDcgQEAgc3RhdGljIHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICp2Z3B1X2NyZWF0ZV9nZW0oc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAogCWRybV9nZW1f
cHJpdmF0ZV9vYmplY3RfaW5pdChkZXYsICZvYmotPmJhc2UsCiAJCXJvdW5kdXAoaW5mby0+c2l6
ZSwgUEFHRV9TSVpFKSk7Ci0JaTkxNV9nZW1fb2JqZWN0X2luaXQob2JqLCAmaW50ZWxfdmdwdV9n
ZW1fb3BzKTsKKwlpOTE1X2dlbV9vYmplY3RfaW5pdChvYmosICZpbnRlbF92Z3B1X2dlbV9vcHMs
ICZsb2NrX2NsYXNzKTsKIAogCW9iai0+cmVhZF9kb21haW5zID0gSTkxNV9HRU1fRE9NQUlOX0dU
VDsKIAlvYmotPndyaXRlX2RvbWFpbiA9IDA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvaTkxNV9nZW1fZ3R0LmMKaW5kZXggZWJlNzM1ZGY2NTA0Li5hMWNiMDcyZTRhMWIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ndHQuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMKQEAgLTEw
NCw2ICsxMDQsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3Bz
IGZha2Vfb3BzID0gewogc3RhdGljIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKIGZha2Vf
ZG1hX29iamVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTY0IHNpemUpCiB7CisJ
c3RhdGljIHN0cnVjdCBsb2NrX2NsYXNzX2tleSBsb2NrX2NsYXNzOwogCXN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmo7CiAKIAlHRU1fQlVHX09OKCFzaXplKTsKQEAgLTExNyw3ICsxMTgs
NyBAQCBmYWtlX2RtYV9vYmplY3Qoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHU2NCBz
aXplKQogCQlnb3RvIGVycjsKIAogCWRybV9nZW1fcHJpdmF0ZV9vYmplY3RfaW5pdCgmaTkxNS0+
ZHJtLCAmb2JqLT5iYXNlLCBzaXplKTsKLQlpOTE1X2dlbV9vYmplY3RfaW5pdChvYmosICZmYWtl
X29wcyk7CisJaTkxNV9nZW1fb2JqZWN0X2luaXQob2JqLCAmZmFrZV9vcHMsICZsb2NrX2NsYXNz
KTsKIAogCWk5MTVfZ2VtX29iamVjdF9zZXRfdm9sYXRpbGUob2JqKTsKIApkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfcmVnaW9uLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19yZWdpb24uYwppbmRleCA3YjBjOTlkZGMyZDUuLmIy
YWQ0MWMyN2U2NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21v
Y2tfcmVnaW9uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfcmVn
aW9uLmMKQEAgLTE5LDYgKzE5LDcgQEAgbW9ja19vYmplY3RfY3JlYXRlKHN0cnVjdCBpbnRlbF9t
ZW1vcnlfcmVnaW9uICptZW0sCiAJCSAgIHJlc291cmNlX3NpemVfdCBzaXplLAogCQkgICB1bnNp
Z25lZCBpbnQgZmxhZ3MpCiB7CisJc3RhdGljIHN0cnVjdCBsb2NrX2NsYXNzX2tleSBsb2NrX2Ns
YXNzOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gbWVtLT5pOTE1OwogCXN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAKQEAgLTMwLDcgKzMxLDcgQEAgbW9ja19vYmpl
Y3RfY3JlYXRlKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCiAJCXJldHVybiBFUlJf
UFRSKC1FTk9NRU0pOwogCiAJZHJtX2dlbV9wcml2YXRlX29iamVjdF9pbml0KCZpOTE1LT5kcm0s
ICZvYmotPmJhc2UsIHNpemUpOwotCWk5MTVfZ2VtX29iamVjdF9pbml0KG9iaiwgJm1vY2tfcmVn
aW9uX29ial9vcHMpOworCWk5MTVfZ2VtX29iamVjdF9pbml0KG9iaiwgJm1vY2tfcmVnaW9uX29i
al9vcHMsICZsb2NrX2NsYXNzKTsKIAogCW9iai0+cmVhZF9kb21haW5zID0gSTkxNV9HRU1fRE9N
QUlOX0NQVSB8IEk5MTVfR0VNX0RPTUFJTl9HVFQ7CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
