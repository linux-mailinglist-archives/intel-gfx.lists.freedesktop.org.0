Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 171D26BBCA
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 13:48:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 736F46E11A;
	Wed, 17 Jul 2019 11:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E486E11A
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 11:48:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17369183-1500050 
 for multiple; Wed, 17 Jul 2019 12:47:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 12:47:58 +0100
Message-Id: <20190717114758.6585-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190717114758.6585-1-chris@chris-wilson.co.uk>
References: <20190717114758.6585-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Provde a local intel_context.vm
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

VHJhY2sgdGhlIGN1cnJlbnRseSBib3VuZCBhZGRyZXNzIHNwYWNlIHVzZWQgYnkgdGhlIEhXIGNv
bnRleHQuIE1pbm9yCmNvbnZlcnNpb25zIHRvIHVzZSB0aGUgbG9jYWwgaW50ZWxfY29udGV4dC52
bSBhcmUgbWFkZSwgbGVhdmluZyBiZWhpbmQKc29tZSBtb3JlIHN1cmdlcnkgcmVxdWlyZWQgdG8g
bWFrZSBpbnRlbF9jb250ZXh0IHRoZSBwcmltYXJ5IHRocm91Z2ggdGhlCnNlbGZ0ZXN0cy4KClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0LmMgfCAgNCArLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jICAgIHwgMTMgKysr
KysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIu
YyB8IDExICsrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0X2JsdC5jIHwgIDYgKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250
ZXh0LmMgICAgICAgIHwgIDQgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29u
dGV4dF90eXBlcy5oICB8ICA0ICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vy
cm9yLmMgICAgICAgICAgfCAgMiArLQogNyBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCsp
LCAyMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fY2xpZW50X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2NsaWVudF9ibHQuYwppbmRleCA2ZjUzN2U4ZTRkZWEuLjIzMTJhMGM2YWY4OSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jCkBAIC0yNTAsMTMg
KzI1MCwxMSBAQCBpbnQgaTkxNV9nZW1fc2NoZWR1bGVfZmlsbF9wYWdlc19ibHQoc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCQkgICAgIHUzMiB2YWx1ZSkKIHsKIAlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7Ci0Jc3RydWN0
IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCA9IGNlLT5nZW1fY29udGV4dDsKLQlzdHJ1Y3QgaTkxNV9h
ZGRyZXNzX3NwYWNlICp2bSA9IGN0eC0+dm0gPzogJmk5MTUtPmdndHQudm07CiAJc3RydWN0IGNs
ZWFyX3BhZ2VzX3dvcmsgKndvcms7CiAJc3RydWN0IGk5MTVfc2xlZXZlICpzbGVldmU7CiAJaW50
IGVycjsKIAotCXNsZWV2ZSA9IGNyZWF0ZV9zbGVldmUodm0sIG9iaiwgcGFnZXMsIHBhZ2Vfc2l6
ZXMpOworCXNsZWV2ZSA9IGNyZWF0ZV9zbGVldmUoY2UtPnZtLCBvYmosIHBhZ2VzLCBwYWdlX3Np
emVzKTsKIAlpZiAoSVNfRVJSKHNsZWV2ZSkpCiAJCXJldHVybiBQVFJfRVJSKHNsZWV2ZSk7CiAK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IDBmNmIw
Njc4ZjU0OC4uZGU5YmI3YWFlZjIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jb250ZXh0LmMKQEAgLTQ3NSwxMCArNDc1LDE4IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9h
ZGRyZXNzX3NwYWNlICoKIF9fc2V0X3BwZ3R0KHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgs
IHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQogewogCXN0cnVjdCBpOTE1X2FkZHJlc3Nf
c3BhY2UgKm9sZCA9IGN0eC0+dm07CisJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXNfaXRlciBpdDsK
KwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7CiAKIAljdHgtPnZtID0gaTkxNV92bV9nZXQodm0p
OwogCWN0eC0+ZGVzY190ZW1wbGF0ZSA9IGRlZmF1bHRfZGVzY190ZW1wbGF0ZShjdHgtPmk5MTUs
IHZtKTsKIAorCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsIGk5MTVfZ2VtX2NvbnRleHRfbG9ja19l
bmdpbmVzKGN0eCksIGl0KSB7CisJCWk5MTVfdm1fcHV0KGNlLT52bSk7CisJCWNlLT52bSA9IGk5
MTVfdm1fZ2V0KHZtKTsKKwl9CisJaTkxNV9nZW1fY29udGV4dF91bmxvY2tfZW5naW5lcyhjdHgp
OworCiAJcmV0dXJuIG9sZDsKIH0KIApAQCAtMTExMyw5ICsxMTIxLDggQEAgc3RhdGljIGludCBz
ZXRfcHBndHQoc3RydWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSAqZmlsZV9wcml2LAogCQkJCSAg
IHNldF9wcGd0dF9iYXJyaWVyLAogCQkJCSAgIG9sZCk7CiAJaWYgKGVycikgewotCQljdHgtPnZt
ID0gb2xkOwotCQljdHgtPmRlc2NfdGVtcGxhdGUgPSBkZWZhdWx0X2Rlc2NfdGVtcGxhdGUoY3R4
LT5pOTE1LCBvbGQpOwotCQlpOTE1X3ZtX3B1dCh2bSk7CisJCWk5MTVfdm1fcHV0KF9fc2V0X3Bw
Z3R0KGN0eCwgb2xkKSk7CisJCWk5MTVfdm1fcHV0KG9sZCk7CiAJfQogCiB1bmxvY2s6CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCA4YTIw
NDdjNGU3YzMuLmNiZDdjNmUzYTFmOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0yMjMsNyArMjIzLDYgQEAgc3RydWN0IGk5MTVfZXhl
Y2J1ZmZlciB7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOyAvKiogZW5naW5lIHRv
IHF1ZXVlIHRoZSByZXF1ZXN0IHRvICovCiAJc3RydWN0IGludGVsX2NvbnRleHQgKmNvbnRleHQ7
IC8qIGxvZ2ljYWwgc3RhdGUgZm9yIHRoZSByZXF1ZXN0ICovCiAJc3RydWN0IGk5MTVfZ2VtX2Nv
bnRleHQgKmdlbV9jb250ZXh0OyAvKiogY2FsbGVyJ3MgY29udGV4dCAqLwotCXN0cnVjdCBpOTE1
X2FkZHJlc3Nfc3BhY2UgKnZtOyAvKiogR1RUIGFuZCB2bWEgZm9yIHRoZSByZXF1ZXN0ICovCiAK
IAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0OyAvKiogb3VyIHJlcXVlc3QgdG8gYnVpbGQg
Ki8KIAlzdHJ1Y3QgaTkxNV92bWEgKmJhdGNoOyAvKiogaWRlbnRpdHkgb2YgdGhlIGJhdGNoIG9i
ai92bWEgKi8KQEAgLTY5Nyw3ICs2OTYsNyBAQCBzdGF0aWMgaW50IGViX3Jlc2VydmUoc3RydWN0
IGk5MTVfZXhlY2J1ZmZlciAqZWIpCiAKIAkJY2FzZSAxOgogCQkJLyogVG9vIGZyYWdtZW50ZWQs
IHVuYmluZCBldmVyeXRoaW5nIGFuZCByZXRyeSAqLwotCQkJZXJyID0gaTkxNV9nZW1fZXZpY3Rf
dm0oZWItPnZtKTsKKwkJCWVyciA9IGk5MTVfZ2VtX2V2aWN0X3ZtKGViLT5jb250ZXh0LT52bSk7
CiAJCQlpZiAoZXJyKQogCQkJCXJldHVybiBlcnI7CiAJCQlicmVhazsKQEAgLTcyNSwxMiArNzI0
LDggQEAgc3RhdGljIGludCBlYl9zZWxlY3RfY29udGV4dChzdHJ1Y3QgaTkxNV9leGVjYnVmZmVy
ICplYikKIAkJcmV0dXJuIC1FTk9FTlQ7CiAKIAllYi0+Z2VtX2NvbnRleHQgPSBjdHg7Ci0JaWYg
KGN0eC0+dm0pIHsKLQkJZWItPnZtID0gY3R4LT52bTsKKwlpZiAoY3R4LT52bSkKIAkJZWItPmlu
dmFsaWRfZmxhZ3MgfD0gRVhFQ19PQkpFQ1RfTkVFRFNfR1RUOwotCX0gZWxzZSB7Ci0JCWViLT52
bSA9ICZlYi0+aTkxNS0+Z2d0dC52bTsKLQl9CiAKIAllYi0+Y29udGV4dF9mbGFncyA9IDA7CiAJ
aWYgKHRlc3RfYml0KFVDT05URVhUX05PX1pFUk9NQVAsICZjdHgtPnVzZXJfZmxhZ3MpKQpAQCAt
ODMyLDcgKzgyNyw3IEBAIHN0YXRpYyBpbnQgZWJfbG9va3VwX3ZtYXMoc3RydWN0IGk5MTVfZXhl
Y2J1ZmZlciAqZWIpCiAJCQlnb3RvIGVycl92bWE7CiAJCX0KIAotCQl2bWEgPSBpOTE1X3ZtYV9p
bnN0YW5jZShvYmosIGViLT52bSwgTlVMTCk7CisJCXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9i
aiwgZWItPmNvbnRleHQtPnZtLCBOVUxMKTsKIAkJaWYgKElTX0VSUih2bWEpKSB7CiAJCQllcnIg
PSBQVFJfRVJSKHZtYSk7CiAJCQlnb3RvIGVycl9vYmo7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYwppbmRleCBjYjQyZTNhMzEyZTIuLjY4NTA2NGFm
MzJkMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dF9ibHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2Js
dC5jCkBAIC00NywxNSArNDcsMTEgQEAgaW50IGk5MTVfZ2VtX29iamVjdF9maWxsX2JsdChzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY2UsCiAJCQkgICAgIHUzMiB2YWx1ZSkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7Ci0Jc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQg
KmN0eCA9IGNlLT5nZW1fY29udGV4dDsKLQlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSA9
IGN0eC0+dm0gPzogJmk5MTUtPmdndHQudm07CiAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CiAJ
c3RydWN0IGk5MTVfdm1hICp2bWE7CiAJaW50IGVycjsKIAotCS8qIFhYWDogY2UtPnZtIHBsZWFz
ZSAqLwotCXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgdm0sIE5VTEwpOworCXZtYSA9IGk5
MTVfdm1hX2luc3RhbmNlKG9iaiwgY2UtPnZtLCBOVUxMKTsKIAlpZiAoSVNfRVJSKHZtYSkpCiAJ
CXJldHVybiBQVFJfRVJSKHZtYSk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRl
eHQuYwppbmRleCA5MjkyYjZjYTVlOWMuLjllNGY1MWNlNTJmZiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2NvbnRleHQuYwpAQCAtMTkxLDYgKzE5MSw4IEBAIGludGVsX2NvbnRleHRf
aW5pdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJa3JlZl9pbml0KCZjZS0+cmVmKTsKIAog
CWNlLT5nZW1fY29udGV4dCA9IGN0eDsKKwljZS0+dm0gPSBpOTE1X3ZtX2dldChjdHgtPnZtID86
ICZlbmdpbmUtPmd0LT5nZ3R0LT52bSk7CisKIAljZS0+ZW5naW5lID0gZW5naW5lOwogCWNlLT5v
cHMgPSBlbmdpbmUtPmNvcHM7CiAJY2UtPnNzZXUgPSBlbmdpbmUtPnNzZXU7CkBAIC0yMDYsNiAr
MjA4LDggQEAgaW50ZWxfY29udGV4dF9pbml0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAog
dm9pZCBpbnRlbF9jb250ZXh0X2Zpbmkoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogeworCWk5
MTVfdm1fcHV0KGNlLT52bSk7CisKIAltdXRleF9kZXN0cm95KCZjZS0+cGluX211dGV4KTsKIAlp
OTE1X2FjdGl2ZV9maW5pKCZjZS0+YWN0aXZlKTsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaAppbmRleCA0YzBlMjExYzcxNWQuLjY4YTdlOTc5YjFh
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF90eXBl
cy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaApA
QCAtMzYsNyArMzYsNiBAQCBzdHJ1Y3QgaW50ZWxfY29udGV4dF9vcHMgewogc3RydWN0IGludGVs
X2NvbnRleHQgewogCXN0cnVjdCBrcmVmIHJlZjsKIAotCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0
ICpnZW1fY29udGV4dDsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CiAJc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqaW5mbGlnaHQ7CiAjZGVmaW5lIGludGVsX2NvbnRleHRfaW5mbGln
aHQoY2UpIHB0cl9tYXNrX2JpdHMoKGNlKS0+aW5mbGlnaHQsIDIpCkBAIC00NCw2ICs0Myw5IEBA
IHN0cnVjdCBpbnRlbF9jb250ZXh0IHsKICNkZWZpbmUgaW50ZWxfY29udGV4dF9pbmZsaWdodF9p
bmMoY2UpIHB0cl9jb3VudF9pbmMoJihjZSktPmluZmxpZ2h0KQogI2RlZmluZSBpbnRlbF9jb250
ZXh0X2luZmxpZ2h0X2RlYyhjZSkgcHRyX2NvdW50X2RlYygmKGNlKS0+aW5mbGlnaHQpCiAKKwlz
dHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bTsKKwlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAq
Z2VtX2NvbnRleHQ7CisKIAlzdHJ1Y3QgbGlzdF9oZWFkIHNpZ25hbF9saW5rOwogCXN0cnVjdCBs
aXN0X2hlYWQgc2lnbmFsczsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9ncHVfZXJyb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKaW5k
ZXggYzViODliZjRkNjE2Li4yNDgzNWJlMzAwYmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
cHVfZXJyb3IuYwpAQCAtMTQyOSw3ICsxNDI5LDcgQEAgc3RhdGljIHZvaWQgZ2VtX3JlY29yZF9y
aW5ncyhzdHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yKQogCQkJc3RydWN0IGk5MTVfZ2VtX2Nv
bnRleHQgKmN0eCA9IHJlcXVlc3QtPmdlbV9jb250ZXh0OwogCQkJc3RydWN0IGludGVsX3Jpbmcg
KnJpbmcgPSByZXF1ZXN0LT5yaW5nOwogCi0JCQllZS0+dm0gPSBjdHgtPnZtID86ICZlbmdpbmUt
Pmd0LT5nZ3R0LT52bTsKKwkJCWVlLT52bSA9IHJlcXVlc3QtPmh3X2NvbnRleHQtPnZtOwogCiAJ
CQlyZWNvcmRfY29udGV4dCgmZWUtPmNvbnRleHQsIGN0eCk7CiAKLS0gCjIuMjIuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
