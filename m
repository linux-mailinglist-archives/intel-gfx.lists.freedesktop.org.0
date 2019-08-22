Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 964CF98B3D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 08:09:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90AC96E427;
	Thu, 22 Aug 2019 06:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE4426E425
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 06:09:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18221642-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 07:09:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Aug 2019 07:09:14 +0100
Message-Id: <20190822060914.2671-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190822060914.2671-1-chris@chris-wilson.co.uk>
References: <20190822060914.2671-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915: Replace i915_vma_put_fence()
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

QXZvaWQgY2FsbGluZyBpOTE1X3ZtYV9wdXRfZmVuY2UoKSBieSB1c2luZyBvdXIgYWx0ZXJuYXRl
IHBhdGhzIHRoYXQKYmluZCBhIHNlY29uZGFyeSB2bWEgYXZvaWRpbmcgdGhlIG9yaWdpbmFsIGZl
bmNlZCB2bWEuIEZvciB0aGUgZmV3Cmluc3RhbmNlcyB3aGVyZSB3ZSBuZWVkIHRvIHJlbGVhc2Ug
dGhlIGZlbmNlIChpLmUuIG9uIGJpbmRpbmcgd2hlbiB0aGUKR0dUVCByYW5nZSBiZWNvbWVzIGlu
dmFsaWQpLCByZXBsYWNlIHRoZSBwdXRfZmVuY2Ugd2l0aCBhIHJldm9rZV9mZW5jZS4KClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdl
ZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5jICB8ICA0IC0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jICAgIHwgMTggKysrKysrKy0tLQogLi4u
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgIDkgKystLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICB8IDM2ICsrKysrKysr
LS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jICAg
ICB8IDE2ICsrKy0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyAgICAgICAg
ICAgICAgIHwgIDQgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5oICAgICAgICAg
ICAgICAgfCAgNCArLS0KIDcgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgNTIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9vdmVybGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX292ZXJsYXku
YwppbmRleCBlY2E0MWM0YTVhYTYuLjI5ZWRmYzM0MzcxNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMKQEAgLTc3MCwxMCArNzcwLDYgQEAgc3RhdGlj
IGludCBpbnRlbF9vdmVybGF5X2RvX3B1dF9pbWFnZShzdHJ1Y3QgaW50ZWxfb3ZlcmxheSAqb3Zl
cmxheSwKIAl9CiAJaW50ZWxfZnJvbnRidWZmZXJfZmx1c2gobmV3X2JvLT5mcm9udGJ1ZmZlciwg
T1JJR0lOX0RJUlRZRkIpOwogCi0JcmV0ID0gaTkxNV92bWFfcHV0X2ZlbmNlKHZtYSk7Ci0JaWYg
KHJldCkKLQkJZ290byBvdXRfdW5waW47Ci0KIAlpZiAoIW92ZXJsYXktPmFjdGl2ZSkgewogCQl1
MzIgb2NvbmZpZzsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2RvbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5j
CmluZGV4IGExYWZjMjY5MGU5ZS4uYmI1MTkwYzA2ZWRjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCkBAIC0yMjEsNiArMjIxLDggQEAgaW50IGk5MTVfZ2Vt
X29iamVjdF9zZXRfY2FjaGVfbGV2ZWwoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
IAkgKiBzdGF0ZSBhbmQgc28gaW52b2x2ZXMgbGVzcyB3b3JrLgogCSAqLwogCWlmIChhdG9taWNf
cmVhZCgmb2JqLT5iaW5kX2NvdW50KSkgeworCQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7CisKIAkJLyogQmVmb3JlIHdlIGNoYW5nZSB0aGUg
UFRFLCB0aGUgR1BVIG11c3Qgbm90IGJlIGFjY2Vzc2luZyBpdC4KIAkJICogSWYgd2Ugd2FpdCB1
cG9uIHRoZSBvYmplY3QsIHdlIGtub3cgdGhhdCBhbGwgdGhlIGJvdW5kCiAJCSAqIFZNQSBhcmUg
bm8gbG9uZ2VyIGFjdGl2ZS4KQEAgLTIzMiw4ICsyMzQsOSBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0
X3NldF9jYWNoZV9sZXZlbChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQlpZiAo
cmV0KQogCQkJcmV0dXJuIHJldDsKIAotCQlpZiAoIUhBU19MTEModG9faTkxNShvYmotPmJhc2Uu
ZGV2KSkgJiYKLQkJICAgIGNhY2hlX2xldmVsICE9IEk5MTVfQ0FDSEVfTk9ORSkgeworCQlpZiAo
IUhBU19MTEMoaTkxNSkgJiYgY2FjaGVfbGV2ZWwgIT0gSTkxNV9DQUNIRV9OT05FKSB7CisJCQlp
OTE1X2dlbV9vYmplY3RfcmVsZWFzZV9tbWFwKG9iaik7CisKIAkJCS8qIEFjY2VzcyB0byBzbm9v
cGFibGUgcGFnZXMgdGhyb3VnaCB0aGUgR1RUIGlzCiAJCQkgKiBpbmNvaGVyZW50IGFuZCBvbiBz
b21lIG1hY2hpbmVzIGNhdXNlcyBhIGhhcmQKIAkJCSAqIGxvY2t1cC4gUmVsaW5xdWlzaCB0aGUg
Q1BVIG1tYXBpbmcgdG8gZm9yY2UKQEAgLTI0MSw3ICsyNDQsOSBAQCBpbnQgaTkxNV9nZW1fb2Jq
ZWN0X3NldF9jYWNoZV9sZXZlbChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJ
ICogdGhlbiBkb3VibGUgY2hlY2sgaWYgdGhlIEdUVCBtYXBwaW5nIGlzIHN0aWxsCiAJCQkgKiB2
YWxpZCBmb3IgdGhhdCBwb2ludGVyIGFjY2Vzcy4KIAkJCSAqLwotCQkJaTkxNV9nZW1fb2JqZWN0
X3JlbGVhc2VfbW1hcChvYmopOworCQkJcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZp
OTE1LT5nZ3R0LnZtLm11dGV4KTsKKwkJCWlmIChyZXQpCisJCQkJcmV0dXJuIHJldDsKIAogCQkJ
LyogQXMgd2Ugbm8gbG9uZ2VyIG5lZWQgYSBmZW5jZSBmb3IgR1RUIGFjY2VzcywKIAkJCSAqIHdl
IGNhbiByZWxpbnF1aXNoIGl0IG5vdyAoYW5kIHNvIHByZXZlbnQgaGF2aW5nCkBAIC0yNTEsMTAg
KzI1NiwxMyBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0X3NldF9jYWNoZV9sZXZlbChzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJICogc3VwcG9zZWQgdG8gYmUgbGluZWFyLgogCQkJ
ICovCiAJCQlmb3JfZWFjaF9nZ3R0X3ZtYSh2bWEsIG9iaikgewotCQkJCXJldCA9IGk5MTVfdm1h
X3B1dF9mZW5jZSh2bWEpOworCQkJCXJldCA9IGk5MTVfdm1hX3Jldm9rZV9mZW5jZSh2bWEpOwog
CQkJCWlmIChyZXQpCi0JCQkJCXJldHVybiByZXQ7CisJCQkJCWJyZWFrOwogCQkJfQorCQkJbXV0
ZXhfdW5sb2NrKCZpOTE1LT5nZ3R0LnZtLm11dGV4KTsKKwkJCWlmIChyZXQpCisJCQkJcmV0dXJu
IHJldDsKIAkJfSBlbHNlIHsKIAkJCS8qIFdlIGVpdGhlciBoYXZlIGluY29oZXJlbnQgYmFja2lu
ZyBzdG9yZSBhbmQKIAkJCSAqIHNvIG5vIEdUVCBhY2Nlc3Mgb3IgdGhlIGFyY2hpdGVjdHVyZSBp
cyBmdWxseQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4
ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVy
LmMKaW5kZXggMmRjYTI5NjJjNzNhLi5iNWY2OTM3MzY5ZWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpAQCAtMTAyNCw2ICsxMDI0LDkgQEAg
c3RhdGljIHZvaWQgKnJlbG9jX2lvbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmos
CiAJCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCQlpbnQgZXJyOwogCisJCWlmIChpOTE1X2dlbV9v
YmplY3RfaXNfdGlsZWQob2JqKSkKKwkJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOworCiAJCWlm
ICh1c2VfY3B1X3JlbG9jKGNhY2hlLCBvYmopKQogCQkJcmV0dXJuIE5VTEw7CiAKQEAgLTEwNDcs
MTIgKzEwNTAsNiBAQCBzdGF0aWMgdm9pZCAqcmVsb2NfaW9tYXAoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaiwKIAkJCWlmIChlcnIpIC8qIG5vIGluYWN0aXZlIGFwZXJ0dXJlIHNwYWNl
LCB1c2UgY3B1IHJlbG9jICovCiAJCQkJcmV0dXJuIE5VTEw7CiAJCX0gZWxzZSB7Ci0JCQllcnIg
PSBpOTE1X3ZtYV9wdXRfZmVuY2Uodm1hKTsKLQkJCWlmIChlcnIpIHsKLQkJCQlpOTE1X3ZtYV91
bnBpbih2bWEpOwotCQkJCXJldHVybiBFUlJfUFRSKGVycik7Ci0JCQl9Ci0KIAkJCWNhY2hlLT5u
b2RlLnN0YXJ0ID0gdm1hLT5ub2RlLnN0YXJ0OwogCQkJY2FjaGUtPm5vZGUubW0gPSAodm9pZCAq
KXZtYTsKIAkJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggNjg5NzY2ODlkNTY5Li5lYjMx
YjY5YTMxNmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMzQzLDIwICszNDMsMTYgQEAg
aTkxNV9nZW1fZ3R0X3ByZWFkKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCXJl
dHVybiByZXQ7CiAKIAl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXQoJmk5MTUtPnJ1bnRp
bWVfcG0pOwotCXZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3BpbihvYmosIE5VTEwsIDAsIDAs
Ci0JCQkJICAgICAgIFBJTl9NQVBQQUJMRSB8Ci0JCQkJICAgICAgIFBJTl9OT05CTE9DSyAvKiBO
T1dBUk4gKi8gfAotCQkJCSAgICAgICBQSU5fTk9FVklDVCk7CisJdm1hID0gRVJSX1BUUigtRU5P
REVWKTsKKwlpZiAoIWk5MTVfZ2VtX29iamVjdF9pc190aWxlZChvYmopKQorCQl2bWEgPSBpOTE1
X2dlbV9vYmplY3RfZ2d0dF9waW4ob2JqLCBOVUxMLCAwLCAwLAorCQkJCQkgICAgICAgUElOX01B
UFBBQkxFIHwKKwkJCQkJICAgICAgIFBJTl9OT05CTE9DSyAvKiBOT1dBUk4gKi8gfAorCQkJCQkg
ICAgICAgUElOX05PRVZJQ1QpOwogCWlmICghSVNfRVJSKHZtYSkpIHsKIAkJbm9kZS5zdGFydCA9
IGk5MTVfZ2d0dF9vZmZzZXQodm1hKTsKIAkJbm9kZS5hbGxvY2F0ZWQgPSBmYWxzZTsKLQkJcmV0
ID0gaTkxNV92bWFfcHV0X2ZlbmNlKHZtYSk7Ci0JCWlmIChyZXQpIHsKLQkJCWk5MTVfdm1hX3Vu
cGluKHZtYSk7Ci0JCQl2bWEgPSBFUlJfUFRSKHJldCk7Ci0JCX0KLQl9Ci0JaWYgKElTX0VSUih2
bWEpKSB7CisJfSBlbHNlIHsKIAkJcmV0ID0gaW5zZXJ0X21hcHBhYmxlX25vZGUoZ2d0dCwgJm5v
ZGUsIFBBR0VfU0laRSk7CiAJCWlmIChyZXQpCiAJCQlnb3RvIG91dF91bmxvY2s7CkBAIC01NTcs
MjAgKzU1MywxNiBAQCBpOTE1X2dlbV9ndHRfcHdyaXRlX2Zhc3Qoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaiwKIAkJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KHJwbSk7CiAJ
fQogCi0Jdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluKG9iaiwgTlVMTCwgMCwgMCwKLQkJ
CQkgICAgICAgUElOX01BUFBBQkxFIHwKLQkJCQkgICAgICAgUElOX05PTkJMT0NLIC8qIE5PV0FS
TiAqLyB8Ci0JCQkJICAgICAgIFBJTl9OT0VWSUNUKTsKKwl2bWEgPSBFUlJfUFRSKC1FTk9ERVYp
OworCWlmICghaTkxNV9nZW1fb2JqZWN0X2lzX3RpbGVkKG9iaikpCisJCXZtYSA9IGk5MTVfZ2Vt
X29iamVjdF9nZ3R0X3BpbihvYmosIE5VTEwsIDAsIDAsCisJCQkJCSAgICAgICBQSU5fTUFQUEFC
TEUgfAorCQkJCQkgICAgICAgUElOX05PTkJMT0NLIC8qIE5PV0FSTiAqLyB8CisJCQkJCSAgICAg
ICBQSU5fTk9FVklDVCk7CiAJaWYgKCFJU19FUlIodm1hKSkgewogCQlub2RlLnN0YXJ0ID0gaTkx
NV9nZ3R0X29mZnNldCh2bWEpOwogCQlub2RlLmFsbG9jYXRlZCA9IGZhbHNlOwotCQlyZXQgPSBp
OTE1X3ZtYV9wdXRfZmVuY2Uodm1hKTsKLQkJaWYgKHJldCkgewotCQkJaTkxNV92bWFfdW5waW4o
dm1hKTsKLQkJCXZtYSA9IEVSUl9QVFIocmV0KTsKLQkJfQotCX0KLQlpZiAoSVNfRVJSKHZtYSkp
IHsKKwl9IGVsc2UgewogCQlyZXQgPSBpbnNlcnRfbWFwcGFibGVfbm9kZShnZ3R0LCAmbm9kZSwg
UEFHRV9TSVpFKTsKIAkJaWYgKHJldCkKIAkJCWdvdG8gb3V0X3JwbTsKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMKaW5kZXggNmEzM2EwYmI5N2E5Li42MTVhOWY0ZWYz
MGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jCkBAIC0yODcs
NyArMjg3LDcgQEAgc3RhdGljIGludCBmZW5jZV91cGRhdGUoc3RydWN0IGk5MTVfZmVuY2VfcmVn
ICpmZW5jZSwKIH0KIAogLyoqCi0gKiBpOTE1X3ZtYV9wdXRfZmVuY2UgLSBmb3JjZS1yZW1vdmUg
ZmVuY2UgZm9yIGEgVk1BCisgKiBpOTE1X3ZtYV9yZXZva2VfZmVuY2UgLSBmb3JjZS1yZW1vdmUg
ZmVuY2UgZm9yIGEgVk1BCiAgKiBAdm1hOiB2bWEgdG8gbWFwIGxpbmVhcmx5IChub3QgdGhyb3Vn
aCBhIGZlbmNlIHJlZykKICAqCiAgKiBUaGlzIGZ1bmN0aW9uIGZvcmNlLXJlbW92ZXMgYW55IGZl
bmNlIGZyb20gdGhlIGdpdmVuIG9iamVjdCwgd2hpY2ggaXMgdXNlZnVsCkBAIC0yOTcsMjYgKzI5
NywxOCBAQCBzdGF0aWMgaW50IGZlbmNlX3VwZGF0ZShzdHJ1Y3QgaTkxNV9mZW5jZV9yZWcgKmZl
bmNlLAogICoKICAqIDAgb24gc3VjY2VzcywgbmVnYXRpdmUgZXJyb3IgY29kZSBvbiBmYWlsdXJl
LgogICovCi1pbnQgaTkxNV92bWFfcHV0X2ZlbmNlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQoraW50
IGk5MTVfdm1hX3Jldm9rZV9mZW5jZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIHsKLQlzdHJ1Y3Qg
aTkxNV9nZ3R0ICpnZ3R0ID0gaTkxNV92bV90b19nZ3R0KHZtYS0+dm0pOwogCXN0cnVjdCBpOTE1
X2ZlbmNlX3JlZyAqZmVuY2UgPSB2bWEtPmZlbmNlOwotCWludCBlcnI7CiAKKwlsb2NrZGVwX2Fz
c2VydF9oZWxkKCZ2bWEtPnZtLT5tdXRleCk7CiAJaWYgKCFmZW5jZSkKIAkJcmV0dXJuIDA7CiAK
IAlpZiAoYXRvbWljX3JlYWQoJmZlbmNlLT5waW5fY291bnQpKQogCQlyZXR1cm4gLUVCVVNZOwog
Ci0JZXJyID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZnZ3R0LT52bS5tdXRleCk7Ci0JaWYg
KGVycikKLQkJcmV0dXJuIGVycjsKLQotCWVyciA9IGZlbmNlX3VwZGF0ZShmZW5jZSwgTlVMTCk7
Ci0JbXV0ZXhfdW5sb2NrKCZnZ3R0LT52bS5tdXRleCk7Ci0KLQlyZXR1cm4gZXJyOworCXJldHVy
biBmZW5jZV91cGRhdGUoZmVuY2UsIE5VTEwpOwogfQogCiBzdGF0aWMgc3RydWN0IGk5MTVfZmVu
Y2VfcmVnICpmZW5jZV9maW5kKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfdm1hLmMKaW5kZXggOTg0MGNiMmY3MGI5Li5lMGU2NzdiMmEzYTkgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV92bWEuYwpAQCAtOTgyLDcgKzk4Miw5IEBAIGludCBpOTE1X3ZtYV91bmJpbmQo
c3RydWN0IGk5MTVfdm1hICp2bWEpCiAJCUdFTV9CVUdfT04oaTkxNV92bWFfaGFzX2dndHRfd3Jp
dGUodm1hKSk7CiAKIAkJLyogcmVsZWFzZSB0aGUgZmVuY2UgcmVnIF9hZnRlcl8gZmx1c2hpbmcg
Ki8KLQkJcmV0ID0gaTkxNV92bWFfcHV0X2ZlbmNlKHZtYSk7CisJCW11dGV4X2xvY2soJnZtYS0+
dm0tPm11dGV4KTsKKwkJcmV0ID0gaTkxNV92bWFfcmV2b2tlX2ZlbmNlKHZtYSk7CisJCW11dGV4
X3VubG9jaygmdm1hLT52bS0+bXV0ZXgpOwogCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsKIApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfdm1hLmgKaW5kZXggY2Y2YzA0MzcwOTFkLi44ODlmYzdjYjkxMGEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV92bWEuaApAQCAtNDIxLDggKzQyMSw4IEBAIHN0YXRpYyBpbmxpbmUg
c3RydWN0IHBhZ2UgKmk5MTVfdm1hX2ZpcnN0X3BhZ2Uoc3RydWN0IGk5MTVfdm1hICp2bWEpCiAg
KgogICogVHJ1ZSBpZiB0aGUgdm1hIGhhcyBhIGZlbmNlLCBmYWxzZSBvdGhlcndpc2UuCiAgKi8K
LWludCBpOTE1X3ZtYV9waW5fZmVuY2Uoc3RydWN0IGk5MTVfdm1hICp2bWEpOwotaW50IF9fbXVz
dF9jaGVjayBpOTE1X3ZtYV9wdXRfZmVuY2Uoc3RydWN0IGk5MTVfdm1hICp2bWEpOworaW50IF9f
bXVzdF9jaGVjayBpOTE1X3ZtYV9waW5fZmVuY2Uoc3RydWN0IGk5MTVfdm1hICp2bWEpOworaW50
IF9fbXVzdF9jaGVjayBpOTE1X3ZtYV9yZXZva2VfZmVuY2Uoc3RydWN0IGk5MTVfdm1hICp2bWEp
OwogCiBzdGF0aWMgaW5saW5lIHZvaWQgX19pOTE1X3ZtYV91bnBpbl9mZW5jZShzdHJ1Y3QgaTkx
NV92bWEgKnZtYSkKIHsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
