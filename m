Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB40E45566
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 09:11:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738DE89402;
	Fri, 14 Jun 2019 07:11:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6075789349
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 07:10:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16897544-1500050 
 for multiple; Fri, 14 Jun 2019 08:10:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 08:10:17 +0100
Message-Id: <20190614071023.17929-34-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614071023.17929-1-chris@chris-wilson.co.uk>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 33/39] revoke-fence
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

LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgICAgfCAxNiAr
KysrKystLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwg
IDkgKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICB8
IDM4ICsrKysrKysrLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2Zl
bmNlX3JlZy5jICAgICB8IDE2ICsrLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Zt
YS5jICAgICAgICAgICAgICAgfCAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEu
aCAgICAgICAgICAgICAgIHwgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX292ZXJs
YXkuYyAgICAgICAgICB8ICA0IC0tCiA3IGZpbGVzIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKyks
IDUxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9kb21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21h
aW4uYwppbmRleCA3ZTZlZDc2NzM0OGMuLmE2MmY3ZjBlMjk0NyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwpAQCAtMjIwLDYgKzIyMCw4IEBAIGludCBpOTE1
X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2xldmVsKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmosCiAJICogc3RhdGUgYW5kIHNvIGludm9sdmVzIGxlc3Mgd29yay4KIAkgKi8KIAlpZiAoYXRv
bWljX3JlYWQoJm9iai0+YmluZF9jb3VudCkpIHsKKwkJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSB0b19pOTE1KG9iai0+YmFzZS5kZXYpOworCiAJCS8qIEJlZm9yZSB3ZSBjaGFuZ2Ug
dGhlIFBURSwgdGhlIEdQVSBtdXN0IG5vdCBiZSBhY2Nlc3NpbmcgaXQuCiAJCSAqIElmIHdlIHdh
aXQgdXBvbiB0aGUgb2JqZWN0LCB3ZSBrbm93IHRoYXQgYWxsIHRoZSBib3VuZAogCQkgKiBWTUEg
YXJlIG5vIGxvbmdlciBhY3RpdmUuCkBAIC0yMzEsOCArMjMzLDcgQEAgaW50IGk5MTVfZ2VtX29i
amVjdF9zZXRfY2FjaGVfbGV2ZWwoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJ
aWYgKHJldCkKIAkJCXJldHVybiByZXQ7CiAKLQkJaWYgKCFIQVNfTExDKHRvX2k5MTUob2JqLT5i
YXNlLmRldikpICYmCi0JCSAgICBjYWNoZV9sZXZlbCAhPSBJOTE1X0NBQ0hFX05PTkUpIHsKKwkJ
aWYgKCFIQVNfTExDKGk5MTUpICYmIGNhY2hlX2xldmVsICE9IEk5MTVfQ0FDSEVfTk9ORSkgewog
CQkJLyogQWNjZXNzIHRvIHNub29wYWJsZSBwYWdlcyB0aHJvdWdoIHRoZSBHVFQgaXMKIAkJCSAq
IGluY29oZXJlbnQgYW5kIG9uIHNvbWUgbWFjaGluZXMgY2F1c2VzIGEgaGFyZAogCQkJICogbG9j
a3VwLiBSZWxpbnF1aXNoIHRoZSBDUFUgbW1hcGluZyB0byBmb3JjZQpAQCAtMjQwLDYgKzI0MSwx
MCBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0X3NldF9jYWNoZV9sZXZlbChzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqLAogCQkJICogdGhlbiBkb3VibGUgY2hlY2sgaWYgdGhlIEdUVCBtYXBw
aW5nIGlzIHN0aWxsCiAJCQkgKiB2YWxpZCBmb3IgdGhhdCBwb2ludGVyIGFjY2Vzcy4KIAkJCSAq
LworCQkJcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZpOTE1LT5nZ3R0LnZtLm11dGV4
KTsKKwkJCWlmIChyZXQpCisJCQkJcmV0dXJuIHJldDsKKwogCQkJaTkxNV9nZW1fb2JqZWN0X3Jl
bGVhc2VfbW1hcChvYmopOwogCiAJCQkvKiBBcyB3ZSBubyBsb25nZXIgbmVlZCBhIGZlbmNlIGZv
ciBHVFQgYWNjZXNzLApAQCAtMjUwLDEwICsyNTUsMTMgQEAgaW50IGk5MTVfZ2VtX29iamVjdF9z
ZXRfY2FjaGVfbGV2ZWwoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCSAqIHN1
cHBvc2VkIHRvIGJlIGxpbmVhci4KIAkJCSAqLwogCQkJZm9yX2VhY2hfZ2d0dF92bWEodm1hLCBv
YmopIHsKLQkJCQlyZXQgPSBpOTE1X3ZtYV9wdXRfZmVuY2Uodm1hKTsKKwkJCQlyZXQgPSBpOTE1
X3ZtYV9yZXZva2VfZmVuY2Uodm1hKTsKIAkJCQlpZiAocmV0KQotCQkJCQlyZXR1cm4gcmV0Owor
CQkJCQlicmVhazsKIAkJCX0KKwkJCW11dGV4X3VubG9jaygmaTkxNS0+Z2d0dC52bS5tdXRleCk7
CisJCQlpZiAocmV0KQorCQkJCXJldHVybiByZXQ7CiAJCX0gZWxzZSB7CiAJCQkvKiBXZSBlaXRo
ZXIgaGF2ZSBpbmNvaGVyZW50IGJhY2tpbmcgc3RvcmUgYW5kCiAJCQkgKiBzbyBubyBHVFQgYWNj
ZXNzIG9yIHRoZSBhcmNoaXRlY3R1cmUgaXMgZnVsbHkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCmluZGV4IDY5MDVmZDE0MzYxYi4uZjEyZGMwZjUy
MWM5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1
ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVy
LmMKQEAgLTEwOTEsNiArMTA5MSw5IEBAIHN0YXRpYyB2b2lkICpyZWxvY19pb21hcChzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKIAkJaW50
IGVycjsKIAorCQlpZiAoaTkxNV9nZW1fb2JqZWN0X2lzX3RpbGVkKG9iaikpCisJCQlyZXR1cm4g
RVJSX1BUUigtRUlOVkFMKTsKKwogCQlpZiAodXNlX2NwdV9yZWxvYyhjYWNoZSwgb2JqKSkKIAkJ
CXJldHVybiBOVUxMOwogCkBAIC0xMTE0LDEyICsxMTE3LDYgQEAgc3RhdGljIHZvaWQgKnJlbG9j
X2lvbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQlpZiAoZXJyKSAvKiBu
byBpbmFjdGl2ZSBhcGVydHVyZSBzcGFjZSwgdXNlIGNwdSByZWxvYyAqLwogCQkJCXJldHVybiBO
VUxMOwogCQl9IGVsc2UgewotCQkJZXJyID0gaTkxNV92bWFfcHV0X2ZlbmNlKHZtYSk7Ci0JCQlp
ZiAoZXJyKSB7Ci0JCQkJaTkxNV92bWFfdW5waW4odm1hKTsKLQkJCQlyZXR1cm4gRVJSX1BUUihl
cnIpOwotCQkJfQotCiAJCQljYWNoZS0+bm9kZS5zdGFydCA9IHZtYS0+bm9kZS5zdGFydDsKIAkJ
CWNhY2hlLT5ub2RlLm1tID0gKHZvaWQgKil2bWE7CiAJCX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
CmluZGV4IGZjYmNhOGEwNmY0MS4uZmQ0NDhhZmFlNDkyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMKQEAgLTM4MCwyMCArMzgwLDE3IEBAIGk5MTVfZ2VtX2d0dF9wcmVhZChzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLAogCQlyZXR1cm4gcmV0OwogCiAJd2FrZXJlZiA9IGludGVsX3J1
bnRpbWVfcG1fZ2V0KGk5MTUpOwotCXZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3BpbihvYmos
IE5VTEwsIDAsIDAsCi0JCQkJICAgICAgIFBJTl9NQVBQQUJMRSB8Ci0JCQkJICAgICAgIFBJTl9O
T05GQVVMVCB8Ci0JCQkJICAgICAgIFBJTl9OT05CTE9DSyk7CisJdm1hID0gRVJSX1BUUigtRU5P
REVWKTsKKwlpZiAoIWk5MTVfZ2VtX29iamVjdF9pc190aWxlZChvYmopKSB7CisJCXZtYSA9IGk5
MTVfZ2VtX29iamVjdF9nZ3R0X3BpbihvYmosIE5VTEwsIDAsIDAsCisJCQkJCSAgICAgICBQSU5f
TUFQUEFCTEUgfAorCQkJCQkgICAgICAgUElOX05PTkZBVUxUIHwKKwkJCQkJICAgICAgIFBJTl9O
T05CTE9DSyk7CisJfQogCWlmICghSVNfRVJSKHZtYSkpIHsKIAkJbm9kZS5zdGFydCA9IGk5MTVf
Z2d0dF9vZmZzZXQodm1hKTsKIAkJbm9kZS5hbGxvY2F0ZWQgPSBmYWxzZTsKLQkJcmV0ID0gaTkx
NV92bWFfcHV0X2ZlbmNlKHZtYSk7Ci0JCWlmIChyZXQpIHsKLQkJCWk5MTVfdm1hX3VucGluKHZt
YSk7Ci0JCQl2bWEgPSBFUlJfUFRSKHJldCk7Ci0JCX0KLQl9Ci0JaWYgKElTX0VSUih2bWEpKSB7
CisJfSBlbHNlIHsKIAkJcmV0ID0gaW5zZXJ0X21hcHBhYmxlX25vZGUoZ2d0dCwgJm5vZGUsIFBB
R0VfU0laRSk7CiAJCWlmIChyZXQpCiAJCQlnb3RvIG91dF91bmxvY2s7CkBAIC01OTYsMjAgKzU5
MywxNyBAQCBpOTE1X2dlbV9ndHRfcHdyaXRlX2Zhc3Qoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaiwKIAkJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KGk5MTUpOwogCX0KIAot
CXZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3BpbihvYmosIE5VTEwsIDAsIDAsCi0JCQkJICAg
ICAgIFBJTl9NQVBQQUJMRSB8Ci0JCQkJICAgICAgIFBJTl9OT05GQVVMVCB8Ci0JCQkJICAgICAg
IFBJTl9OT05CTE9DSyk7CisJdm1hID0gRVJSX1BUUigtRU5PREVWKTsKKwlpZiAoaTkxNV9nZW1f
b2JqZWN0X2lzX3RpbGVkKG9iaikpIHsKKwkJdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dndHRfcGlu
KG9iaiwgTlVMTCwgMCwgMCwKKwkJCQkJICAgICAgIFBJTl9NQVBQQUJMRSB8CisJCQkJCSAgICAg
ICBQSU5fTk9ORkFVTFQgfAorCQkJCQkgICAgICAgUElOX05PTkJMT0NLKTsKKwl9CiAJaWYgKCFJ
U19FUlIodm1hKSkgewogCQlub2RlLnN0YXJ0ID0gaTkxNV9nZ3R0X29mZnNldCh2bWEpOwogCQlu
b2RlLmFsbG9jYXRlZCA9IGZhbHNlOwotCQlyZXQgPSBpOTE1X3ZtYV9wdXRfZmVuY2Uodm1hKTsK
LQkJaWYgKHJldCkgewotCQkJaTkxNV92bWFfdW5waW4odm1hKTsKLQkJCXZtYSA9IEVSUl9QVFIo
cmV0KTsKLQkJfQotCX0KLQlpZiAoSVNfRVJSKHZtYSkpIHsKKwl9IGVsc2UgewogCQlyZXQgPSBp
bnNlcnRfbWFwcGFibGVfbm9kZShnZ3R0LCAmbm9kZSwgUEFHRV9TSVpFKTsKIAkJaWYgKHJldCkK
IAkJCWdvdG8gb3V0X3JwbTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2ZlbmNlX3JlZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVn
LmMKaW5kZXggZjI0YjYyNmJmMGY4Li5lNTk2ZGQ1YWUxZTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jCkBAIC0yODcsNyArMjg3LDcgQEAgc3RhdGljIGludCBm
ZW5jZV91cGRhdGUoc3RydWN0IGk5MTVfZmVuY2VfcmVnICpmZW5jZSwKIH0KIAogLyoqCi0gKiBp
OTE1X3ZtYV9wdXRfZmVuY2UgLSBmb3JjZS1yZW1vdmUgZmVuY2UgZm9yIGEgVk1BCisgKiBpOTE1
X3ZtYV9yZXZva2VfZmVuY2UgLSBmb3JjZS1yZW1vdmUgZmVuY2UgZm9yIGEgVk1BCiAgKiBAdm1h
OiB2bWEgdG8gbWFwIGxpbmVhcmx5IChub3QgdGhyb3VnaCBhIGZlbmNlIHJlZykKICAqCiAgKiBU
aGlzIGZ1bmN0aW9uIGZvcmNlLXJlbW92ZXMgYW55IGZlbmNlIGZyb20gdGhlIGdpdmVuIG9iamVj
dCwgd2hpY2ggaXMgdXNlZnVsCkBAIC0yOTcsMjYgKzI5NywxOCBAQCBzdGF0aWMgaW50IGZlbmNl
X3VwZGF0ZShzdHJ1Y3QgaTkxNV9mZW5jZV9yZWcgKmZlbmNlLAogICoKICAqIDAgb24gc3VjY2Vz
cywgbmVnYXRpdmUgZXJyb3IgY29kZSBvbiBmYWlsdXJlLgogICovCi1pbnQgaTkxNV92bWFfcHV0
X2ZlbmNlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQoraW50IGk5MTVfdm1hX3Jldm9rZV9mZW5jZShz
dHJ1Y3QgaTkxNV92bWEgKnZtYSkKIHsKLQlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gaTkxNV92
bV90b19nZ3R0KHZtYS0+dm0pOwogCXN0cnVjdCBpOTE1X2ZlbmNlX3JlZyAqZmVuY2UgPSB2bWEt
PmZlbmNlOwotCWludCBlcnI7CiAKKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZ2bWEtPnZtLT5tdXRl
eCk7CiAJaWYgKCFmZW5jZSkKIAkJcmV0dXJuIDA7CiAKIAlpZiAoYXRvbWljX3JlYWQoJmZlbmNl
LT5waW5fY291bnQpKQogCQlyZXR1cm4gLUVCVVNZOwogCi0JZXJyID0gbXV0ZXhfbG9ja19pbnRl
cnJ1cHRpYmxlKCZnZ3R0LT52bS5tdXRleCk7Ci0JaWYgKGVycikKLQkJcmV0dXJuIGVycjsKLQot
CWVyciA9IGZlbmNlX3VwZGF0ZShmZW5jZSwgTlVMTCk7Ci0JbXV0ZXhfdW5sb2NrKCZnZ3R0LT52
bS5tdXRleCk7Ci0KLQlyZXR1cm4gZXJyOworCXJldHVybiBmZW5jZV91cGRhdGUoZmVuY2UsIE5V
TEwpOwogfQogCiBzdGF0aWMgc3RydWN0IGk5MTVfZmVuY2VfcmVnICpmZW5jZV9maW5kKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKaW5kZXggMzNj
NjQ2MGVhZThhLi5iNTg3NWRiNmYyYzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfdm1hLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwpAQCAtMTA2
NSw3ICsxMDY1LDkgQEAgaW50IGk5MTVfdm1hX3VuYmluZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkK
IAkJR0VNX0JVR19PTihpOTE1X3ZtYV9oYXNfZ2d0dF93cml0ZSh2bWEpKTsKIAogCQkvKiByZWxl
YXNlIHRoZSBmZW5jZSByZWcgX2FmdGVyXyBmbHVzaGluZyAqLwotCQlyZXQgPSBpOTE1X3ZtYV9w
dXRfZmVuY2Uodm1hKTsKKwkJbXV0ZXhfbG9jaygmdm1hLT52bS0+bXV0ZXgpOworCQlyZXQgPSBp
OTE1X3ZtYV9yZXZva2VfZmVuY2Uodm1hKTsKKwkJbXV0ZXhfdW5sb2NrKCZ2bWEtPnZtLT5tdXRl
eCk7CiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3ZtYS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuaApp
bmRleCBlNTRlZDBiMzgwYTMuLmY5ZjRjYmI5OWU2MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV92bWEuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5o
CkBAIC00MzEsOCArNDMxLDggQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgcGFnZSAqaTkxNV92bWFf
Zmlyc3RfcGFnZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKICAqCiAgKiBUcnVlIGlmIHRoZSB2bWEg
aGFzIGEgZmVuY2UsIGZhbHNlIG90aGVyd2lzZS4KICAqLwotaW50IGk5MTVfdm1hX3Bpbl9mZW5j
ZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSk7Ci1pbnQgX19tdXN0X2NoZWNrIGk5MTVfdm1hX3B1dF9m
ZW5jZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSk7CitpbnQgX19tdXN0X2NoZWNrIGk5MTVfdm1hX3Bp
bl9mZW5jZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSk7CitpbnQgX19tdXN0X2NoZWNrIGk5MTVfdm1h
X3Jldm9rZV9mZW5jZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSk7CiAKIHN0YXRpYyBpbmxpbmUgdm9p
ZCBfX2k5MTVfdm1hX3VucGluX2ZlbmNlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogewpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfb3ZlcmxheS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfb3ZlcmxheS5jCmluZGV4IDAwOWNkZGMwOTM2Ny4uY2RjMDI4MjIwODQ4
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9vdmVybGF5LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfb3ZlcmxheS5jCkBAIC03NzEsMTAgKzc3MSw2IEBA
IHN0YXRpYyBpbnQgaW50ZWxfb3ZlcmxheV9kb19wdXRfaW1hZ2Uoc3RydWN0IGludGVsX292ZXJs
YXkgKm92ZXJsYXksCiAJfQogCWludGVsX2Zyb250YnVmZmVyX2ZsdXNoKG5ld19iby0+ZnJvbnRi
dWZmZXIsIE9SSUdJTl9ESVJUWUZCKTsKIAotCXJldCA9IGk5MTVfdm1hX3B1dF9mZW5jZSh2bWEp
OwotCWlmIChyZXQpCi0JCWdvdG8gb3V0X3VucGluOwotCiAJaWYgKCFvdmVybGF5LT5hY3RpdmUp
IHsKIAkJdTMyIG9jb25maWc7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
