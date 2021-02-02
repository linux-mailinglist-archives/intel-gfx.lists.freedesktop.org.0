Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3692E30C3C8
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 16:30:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880E36E193;
	Tue,  2 Feb 2021 15:30:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30ED06E193
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 15:30:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23773928-1500050 
 for multiple; Tue, 02 Feb 2021 15:29:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Feb 2021 15:29:57 +0000
Message-Id: <20210202152957.9834-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove notion of GEM from
 i915_gem_shrinker_taints_mutex
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2Ugd2UgZHJvcHBlZCB0aGUgdXNlIG9mIGRldi0+c3RydWN0X211dGV4IGZyb20gaW5zaWRl
IHRoZSBzaHJpbmtlciwKd2Ugbm8gbG9uZ2VyIGluY2x1ZGUgdGhhdCBhcyBwYXJ0IG9mIG91ciBm
c19yZWNsYWltIHRhaW50aW5nLiBXZSBjYW4KZHJvcCB0aGUgaTkxNSBhcmd1bWVudCBhbmQgcmVi
cmFuZCBpdCBhcyBhIGdlbmVyaWMgZnNfcmVjbGFpbSB0YWludGVyLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUaG9tYXMgSGVsbHN0
csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgfCAgMyArLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5jIHwgMTQgLS0tLS0tLS0tLS0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5oIHwgIDIgLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5jICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdXRpbHMuYyAgICAgICAgICAgIHwgMTMgKysrKysrKysrKysrKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oICAgICAgICAgICAgfCAgMiArKwogNyBmaWxlcyBj
aGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKaW5kZXggNzBmNzk4NDA1ZjdmLi42Y2RmZjVm
YzU4ODIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKQEAg
LTg2LDggKzg2LDcgQEAgdm9pZCBpOTE1X2dlbV9vYmplY3RfaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqLAogCW11dGV4X2luaXQoJm9iai0+bW0uZ2V0X2RtYV9wYWdlLmxvY2sp
OwogCiAJaWYgKElTX0VOQUJMRUQoQ09ORklHX0xPQ0tERVApICYmIGk5MTVfZ2VtX29iamVjdF9p
c19zaHJpbmthYmxlKG9iaikpCi0JCWk5MTVfZ2VtX3Nocmlua2VyX3RhaW50c19tdXRleCh0b19p
OTE1KG9iai0+YmFzZS5kZXYpLAotCQkJCQkgICAgICAgJm9iai0+bW0ubG9jayk7CisJCWZzX3Jl
Y2xhaW1fdGFpbnRzX211dGV4KCZvYmotPm1tLmxvY2spOwogfQogCiAvKioKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmMKaW5kZXggYzJkYmExY2Q5NTMyLi5i
NjRhMDc4ODM4MWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9zaHJpbmtlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJp
bmtlci5jCkBAIC00MTUsMjAgKzQxNSw2IEBAIHZvaWQgaTkxNV9nZW1fZHJpdmVyX3VucmVnaXN0
ZXJfX3Nocmlua2VyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXVucmVnaXN0ZXJf
c2hyaW5rZXIoJmk5MTUtPm1tLnNocmlua2VyKTsKIH0KIAotdm9pZCBpOTE1X2dlbV9zaHJpbmtl
cl90YWludHNfbXV0ZXgoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCi0JCQkJICAgIHN0
cnVjdCBtdXRleCAqbXV0ZXgpCi17Ci0JaWYgKCFJU19FTkFCTEVEKENPTkZJR19MT0NLREVQKSkK
LQkJcmV0dXJuOwotCi0JZnNfcmVjbGFpbV9hY3F1aXJlKEdGUF9LRVJORUwpOwotCi0JbXV0ZXhf
YWNxdWlyZSgmbXV0ZXgtPmRlcF9tYXAsIDAsIDAsIF9SRVRfSVBfKTsKLQltdXRleF9yZWxlYXNl
KCZtdXRleC0+ZGVwX21hcCwgX1JFVF9JUF8pOwotCi0JZnNfcmVjbGFpbV9yZWxlYXNlKEdGUF9L
RVJORUwpOwotfQotCiAjZGVmaW5lIG9ial90b19pOTE1KG9ial9fKSB0b19pOTE1KChvYmpfXykt
PmJhc2UuZGV2KQogCiB2b2lkIGk5MTVfZ2VtX29iamVjdF9tYWtlX3Vuc2hyaW5rYWJsZShzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fc2hyaW5rZXIuaAppbmRleCBiMzk3ZDc3ODU3ODkuLmEyNTc1NGE1MWFjMyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmgKQEAgLTI1LDcg
KzI1LDUgQEAgdW5zaWduZWQgbG9uZyBpOTE1X2dlbV9zaHJpbmsoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsCiB1bnNpZ25lZCBsb25nIGk5MTVfZ2VtX3Nocmlua19hbGwoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogdm9pZCBpOTE1X2dlbV9kcml2ZXJfcmVnaXN0ZXJfX3No
cmlua2VyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKIHZvaWQgaTkxNV9nZW1fZHJp
dmVyX3VucmVnaXN0ZXJfX3Nocmlua2VyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsK
LXZvaWQgaTkxNV9nZW1fc2hyaW5rZXJfdGFpbnRzX211dGV4KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LAotCQkJCSAgICBzdHJ1Y3QgbXV0ZXggKm11dGV4KTsKIAogI2VuZGlmIC8qIF9f
STkxNV9HRU1fU0hSSU5LRVJfSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5jCmlu
ZGV4IDA0YWE2NjAxZTk4NC4uZDM0NzcwYWU0YzlhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndHQuYwpAQCAtOTcsNyArOTcsNyBAQCB2b2lkIGk5MTVfYWRkcmVzc19zcGFjZV9pbml0KHN0
cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLCBpbnQgc3ViY2xhc3MpCiAJICovCiAJbXV0ZXhf
aW5pdCgmdm0tPm11dGV4KTsKIAlsb2NrZGVwX3NldF9zdWJjbGFzcygmdm0tPm11dGV4LCBzdWJj
bGFzcyk7Ci0JaTkxNV9nZW1fc2hyaW5rZXJfdGFpbnRzX211dGV4KHZtLT5pOTE1LCAmdm0tPm11
dGV4KTsKKwlmc19yZWNsYWltX3RhaW50c19tdXRleCgmdm0tPm11dGV4KTsKIAogCUdFTV9CVUdf
T04oIXZtLT50b3RhbCk7CiAJZHJtX21tX2luaXQoJnZtLT5tbSwgMCwgdm0tPnRvdGFsKTsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCmluZGV4IGM4Y2YzOTgxYWQ3Zi4uNzYzOGZi
MmE0NWY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKQEAgLTE0MDEsNyAr
MTQwMSw3IEBAIHZvaWQgaW50ZWxfZ3RfaW5pdF9yZXNldChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQog
CSAqIHdpdGhpbiB0aGUgc2hyaW5rZXIsIHdlIGZvcmJpZCBvdXJzZWx2ZXMgZnJvbSBwZXJmb3Jt
aW5nIGFueQogCSAqIGZzLXJlY2xhaW0gb3IgdGFraW5nIHJlbGF0ZWQgbG9ja3MgZHVyaW5nIHJl
c2V0LgogCSAqLwotCWk5MTVfZ2VtX3Nocmlua2VyX3RhaW50c19tdXRleChndC0+aTkxNSwgJmd0
LT5yZXNldC5tdXRleCk7CisJZnNfcmVjbGFpbV90YWludHNfbXV0ZXgoJmd0LT5yZXNldC5tdXRl
eCk7CiAKIAkvKiBubyBHUFUgdW50aWwgd2UgYXJlIHJlYWR5ISAqLwogCV9fc2V0X2JpdChJOTE1
X1dFREdFRCwgJmd0LT5yZXNldC5mbGFncyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3V0aWxzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmMKaW5k
ZXggZjllNzgwZGVlOWRlLi45MGM3ZjBjNDgzOGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdXRpbHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxz
LmMKQEAgLTExNCwzICsxMTQsMTYgQEAgdm9pZCBzZXRfdGltZXJfbXMoc3RydWN0IHRpbWVyX2xp
c3QgKnQsIHVuc2lnbmVkIGxvbmcgdGltZW91dCkKIAkvKiBLZWVwIHQtPmV4cGlyZXMgPSAwIHJl
c2VydmVkIHRvIGluZGljYXRlIGEgY2FuY2VsZWQgdGltZXIuICovCiAJbW9kX3RpbWVyKHQsIGpp
ZmZpZXMgKyB0aW1lb3V0ID86IDEpOwogfQorCit2b2lkIGZzX3JlY2xhaW1fdGFpbnRzX211dGV4
KHN0cnVjdCBtdXRleCAqbXV0ZXgpCit7CisJaWYgKCFJU19FTkFCTEVEKENPTkZJR19MT0NLREVQ
KSkKKwkJcmV0dXJuOworCisJZnNfcmVjbGFpbV9hY3F1aXJlKEdGUF9LRVJORUwpOworCisJbXV0
ZXhfYWNxdWlyZSgmbXV0ZXgtPmRlcF9tYXAsIDAsIDAsIF9SRVRfSVBfKTsKKwltdXRleF9yZWxl
YXNlKCZtdXRleC0+ZGVwX21hcCwgX1JFVF9JUF8pOworCisJZnNfcmVjbGFpbV9yZWxlYXNlKEdG
UF9LRVJORUwpOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGls
cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCmluZGV4IGFiZDRkY2Q5Zjc5
Yy4uM2Y2MTZkMDBkZTQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0
aWxzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCkBAIC0yNjYsNiAr
MjY2LDggQEAgc3RhdGljIGlubGluZSBpbnQgbGlzdF9pc19sYXN0X3JjdShjb25zdCBzdHJ1Y3Qg
bGlzdF9oZWFkICpsaXN0LAogCXJldHVybiBSRUFEX09OQ0UobGlzdC0+bmV4dCkgPT0gaGVhZDsK
IH0KIAordm9pZCBmc19yZWNsYWltX3RhaW50c19tdXRleChzdHJ1Y3QgbXV0ZXggKm11dGV4KTsK
Kwogc3RhdGljIGlubGluZSB1bnNpZ25lZCBsb25nIG1zZWNzX3RvX2ppZmZpZXNfdGltZW91dChj
b25zdCB1bnNpZ25lZCBpbnQgbSkKIHsKIAl1bnNpZ25lZCBsb25nIGogPSBtc2Vjc190b19qaWZm
aWVzKG0pOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
