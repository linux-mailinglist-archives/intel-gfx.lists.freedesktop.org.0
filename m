Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 464DE684E1
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2019 10:10:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76D5E8981D;
	Mon, 15 Jul 2019 08:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D1838981D
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jul 2019 08:10:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17303254-1500050 
 for multiple; Mon, 15 Jul 2019 09:09:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Jul 2019 09:09:39 +0100
Message-Id: <20190715080946.15593-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715080946.15593-1-chris@chris-wilson.co.uk>
References: <20190715080946.15593-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/24] drm/i915: Forgo last_fence active request
 tracking
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

V2Ugd2VyZSB1c2luZyB0aGUgbGFzdF9mZW5jZSB0byB0cmFjayB0aGUgbGFzdCByZXF1ZXN0IHRo
YXQgdXNlZCB0aGlzCnZtYSB0aGF0IG1pZ2h0IGJlIGludGVycHJldGVkIGJ5IGEgZmVuY2UgcmVn
aXN0ZXIgYW5kIGZvcmNlZCBvdXJzZWx2ZXMKdG8gd2FpdCBmb3IgdGhpcyByZXF1ZXN0IGJlZm9y
ZSBtb2RpZnlpbmcgYW55IGZlbmNlIHJlZ2lzdGVyIHRoYXQKb3ZlcmxhcHBlZCBvdXIgdm1hLiBE
dWUgdG8gcmVxdWlyZW1lbnQgdGhhdCB3ZSBuZWVkIHRvIHRyYWNrIGFueSBYWV9CTFQKY29tbWFu
ZCwgbGluZWFyIG9yIHRpbGVkLCB0aGlzIGluIGVmZmVjdCBtZWFudCB0aGF0IHdlIGhhdmUgdG8g
dHJhY2sgdGhlCnZtYSBmb3IgaXRzIGFjdGl2ZSBsaWZlc3BhbiBhbnl3YXksIHNvIHdlIGNhbiBm
b3JnbyB0aGUgZXhwbGljaXQKbGFzdF9mZW5jZSB0cmFja2luZyBhbmQganVzdCB1c2UgdGhlIHdo
b2xlIHZtYS0+YWN0aXZlLgoKQW5vdGhlciBzb2x1dGlvbiB3b3VsZCBiZSB0byBwaXBlbGluZSB0
aGUgcmVnaXN0ZXIgdXBkYXRlcywgYW5kIHdvdWxkCmhlbHAgcmVzb2x2ZSBzb21lIGxvbmcgcnVu
bmluZyBzdGFsbHMgZm9yIGdlbjMgKGJ1dCBvbmx5IGdlbiAyIGFuZCAzISkKClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgIHwgIDQgKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMgfCAgNiArKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jICAgICAgIHwgIDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92
bWEuYyAgICAgICAgICAgfCAxMyAtLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3ZtYS5oICAgICAgICAgICB8ICAxIC0KIDUgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4
IDRmYTIyN2YwMWE2MC4uOGY2MzllZDYwMzRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVn
ZnMuYwpAQCAtMjEwLDkgKzIxMCw3IEBAIGRlc2NyaWJlX29iaihzdHJ1Y3Qgc2VxX2ZpbGUgKm0s
IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJCQl9CiAJCX0KIAkJaWYgKHZtYS0+
ZmVuY2UpCi0JCQlzZXFfcHJpbnRmKG0sICIgLCBmZW5jZTogJWQlcyIsCi0JCQkJICAgdm1hLT5m
ZW5jZS0+aWQsCi0JCQkJICAgaTkxNV9hY3RpdmVfcmVxdWVzdF9pc3NldCgmdm1hLT5sYXN0X2Zl
bmNlKSA/ICIqIiA6ICIiKTsKKwkJCXNlcV9wcmludGYobSwgIiAsIGZlbmNlOiAlZCIsIHZtYS0+
ZmVuY2UtPmlkKTsKIAkJc2VxX3B1dHMobSwgIikiKTsKIAogCQlzcGluX2xvY2soJm9iai0+dm1h
LmxvY2spOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2Vf
cmVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYwppbmRleCBi
Y2FjMzU5ZWM2NjEuLmM5NjU0ZjFhNDY4ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZmVuY2VfcmVnLmMKQEAgLTIzMCwxNiArMjMwLDE0IEBAIHN0YXRpYyBpbnQgZmVuY2VfdXBk
YXRlKHN0cnVjdCBpOTE1X2ZlbmNlX3JlZyAqZmVuY2UsCiAJCQkgaTkxNV9nZW1fb2JqZWN0X2dl
dF90aWxpbmcodm1hLT5vYmopKSkKIAkJCXJldHVybiAtRUlOVkFMOwogCi0JCXJldCA9IGk5MTVf
YWN0aXZlX3JlcXVlc3RfcmV0aXJlKCZ2bWEtPmxhc3RfZmVuY2UsCi0JCQkJCSAgICAgJnZtYS0+
b2JqLT5iYXNlLmRldi0+c3RydWN0X211dGV4KTsKKwkJcmV0ID0gaTkxNV9hY3RpdmVfd2FpdCgm
dm1hLT5hY3RpdmUpOwogCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsKIAl9CiAKIAlvbGQgPSB4
Y2hnKCZmZW5jZS0+dm1hLCBOVUxMKTsKIAlpZiAob2xkKSB7Ci0JCXJldCA9IGk5MTVfYWN0aXZl
X3JlcXVlc3RfcmV0aXJlKCZvbGQtPmxhc3RfZmVuY2UsCi0JCQkJCSAgICAgJm9sZC0+b2JqLT5i
YXNlLmRldi0+c3RydWN0X211dGV4KTsKKwkJcmV0ID0gaTkxNV9hY3RpdmVfd2FpdCgmb2xkLT5h
Y3RpdmUpOwogCQlpZiAocmV0KSB7CiAJCQlmZW5jZS0+dm1hID0gb2xkOwogCQkJcmV0dXJuIHJl
dDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggNWM5YzdjYWU0ODE3Li40NGY4
N2Y4YWNhMGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0xODY0LDcgKzE4
NjQsNiBAQCBzdGF0aWMgc3RydWN0IGk5MTVfdm1hICpwZF92bWFfY3JlYXRlKHN0cnVjdCBnZW42
X3BwZ3R0ICpwcGd0dCwgaW50IHNpemUpCiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCiAJ
aTkxNV9hY3RpdmVfaW5pdChpOTE1LCAmdm1hLT5hY3RpdmUsIE5VTEwsIE5VTEwpOwotCUlOSVRf
QUNUSVZFX1JFUVVFU1QoJnZtYS0+bGFzdF9mZW5jZSk7CiAKIAl2bWEtPnZtID0gJmdndHQtPnZt
OwogCXZtYS0+b3BzID0gJnBkX3ZtYV9vcHM7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwppbmRleCAx
ZDAwM2VjOWRhMTkuLjg1YjRhOTA2YmUxZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV92bWEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCkBAIC0x
MTksNyArMTE5LDYgQEAgdm1hX2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
LAogCiAJaTkxNV9hY3RpdmVfaW5pdCh2bS0+aTkxNSwgJnZtYS0+YWN0aXZlLAogCQkJIF9faTkx
NV92bWFfYWN0aXZlLCBfX2k5MTVfdm1hX3JldGlyZSk7Ci0JSU5JVF9BQ1RJVkVfUkVRVUVTVCgm
dm1hLT5sYXN0X2ZlbmNlKTsKIAogCS8qIERlY2xhcmUgb3Vyc2VsdmVzIHNhZmUgZm9yIHVzZSBp
bnNpZGUgc2hyaW5rZXJzICovCiAJaWYgKElTX0VOQUJMRUQoQ09ORklHX0xPQ0tERVApKSB7CkBA
IC04MDEsOCArODAwLDYgQEAgc3RhdGljIHZvaWQgX19pOTE1X3ZtYV9kZXN0cm95KHN0cnVjdCBp
OTE1X3ZtYSAqdm1hKQogCUdFTV9CVUdfT04odm1hLT5ub2RlLmFsbG9jYXRlZCk7CiAJR0VNX0JV
R19PTih2bWEtPmZlbmNlKTsKIAotCUdFTV9CVUdfT04oaTkxNV9hY3RpdmVfcmVxdWVzdF9pc3Nl
dCgmdm1hLT5sYXN0X2ZlbmNlKSk7Ci0KIAltdXRleF9sb2NrKCZ2bWEtPnZtLT5tdXRleCk7CiAJ
bGlzdF9kZWwoJnZtYS0+dm1fbGluayk7CiAJbXV0ZXhfdW5sb2NrKCZ2bWEtPnZtLT5tdXRleCk7
CkBAIC05MzgsOSArOTM1LDYgQEAgaW50IGk5MTVfdm1hX21vdmVfdG9fYWN0aXZlKHN0cnVjdCBp
OTE1X3ZtYSAqdm1hLAogCW9iai0+cmVhZF9kb21haW5zIHw9IEk5MTVfR0VNX0dQVV9ET01BSU5T
OwogCW9iai0+bW0uZGlydHkgPSB0cnVlOwogCi0JaWYgKGZsYWdzICYgRVhFQ19PQkpFQ1RfTkVF
RFNfRkVOQ0UpCi0JCV9faTkxNV9hY3RpdmVfcmVxdWVzdF9zZXQoJnZtYS0+bGFzdF9mZW5jZSwg
cnEpOwotCiAJZXhwb3J0X2ZlbmNlKHZtYSwgcnEsIGZsYWdzKTsKIAogCUdFTV9CVUdfT04oIWk5
MTVfdm1hX2lzX2FjdGl2ZSh2bWEpKTsKQEAgLTk3MywxNCArOTY3LDcgQEAgaW50IGk5MTVfdm1h
X3VuYmluZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIAkJICogYmVmb3JlIHdlIGFyZSBmaW5pc2hl
ZCkuCiAJCSAqLwogCQlfX2k5MTVfdm1hX3Bpbih2bWEpOwotCiAJCXJldCA9IGk5MTVfYWN0aXZl
X3dhaXQoJnZtYS0+YWN0aXZlKTsKLQkJaWYgKHJldCkKLQkJCWdvdG8gdW5waW47Ci0KLQkJcmV0
ID0gaTkxNV9hY3RpdmVfcmVxdWVzdF9yZXRpcmUoJnZtYS0+bGFzdF9mZW5jZSwKLQkJCQkJICAg
ICAgJnZtYS0+dm0tPmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwotdW5waW46CiAJCV9faTkxNV92
bWFfdW5waW4odm1hKTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV92bWEuaAppbmRleCBhMjRiZDY3ODdlZjcuLmQzZDE4NDk0NjM5MyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3ZtYS5oCkBAIC0xMTEsNyArMTExLDYgQEAgc3RydWN0IGk5MTVfdm1hIHsKICNkZWZpbmUg
STkxNV9WTUFfR0dUVF9XUklURQlCSVQoMTQpCiAKIAlzdHJ1Y3QgaTkxNV9hY3RpdmUgYWN0aXZl
OwotCXN0cnVjdCBpOTE1X2FjdGl2ZV9yZXF1ZXN0IGxhc3RfZmVuY2U7CiAKIAkvKioKIAkgKiBT
dXBwb3J0IGRpZmZlcmVudCBHR1RUIHZpZXdzIGludG8gdGhlIHNhbWUgb2JqZWN0LgotLSAKMi4y
Mi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
