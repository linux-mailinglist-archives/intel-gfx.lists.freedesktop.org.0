Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 666EC87E4C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 17:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF506EE31;
	Fri,  9 Aug 2019 15:41:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 018236EE31
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 15:41:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17945316-1500050 
 for multiple; Fri, 09 Aug 2019 16:41:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 16:41:43 +0100
Message-Id: <20190809154146.16397-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Remove
 i915_gem_context_create_gvt()
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

QXMgd2UgYXJlIHBoYXNpbmcgb3V0IHVzaW5nIHRoZSBHRU0gY29udGV4dCBmb3IgaW50ZXJuYWwg
Y2xpZW50cyB0aGF0Cm5lZWQgdG8gbWFuaXB1bGF0ZSBsb2dpY2FsIGNvbnRleHQgc3RhdGUgZGly
ZWN0bHksIHJlbW92ZSB0aGUKY29uc3RydWN0b3IgZm9yIHRoZSBHVlQgY29udGV4dC4gV2UgYXJl
IG5vdCB1c2luZyBpdCBmb3IgYW55dGhpbmcgb3RoZXIKdGhhbiBkZWZhdWx0IHNldHVwIGFuZCBh
bGxvY2F0aW9uIG9mIGFuIGk5MTVfcHBndHQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fY29udGV4dC5jIHwgNDcgLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5oIHwgIDIgLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Z0L3NjaGVkdWxlci5jICAgICAgICB8IDIyICsrKysrKystLS0KIDMgZmlsZXMgY2hh
bmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKaW5kZXggYjQwN2JhYWYwMDE0Li5hZmQ5OTQz
OTFhZDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250
ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwpA
QCAtNTI5LDUzICs1MjksNiBAQCBpOTE1X2dlbV9jcmVhdGVfY29udGV4dChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHVuc2lnbmVkIGludCBmbGFncykKIAlyZXR1cm4gY3R4Owog
fQogCi0vKioKLSAqIGk5MTVfZ2VtX2NvbnRleHRfY3JlYXRlX2d2dCAtIGNyZWF0ZSBhIEdWVCBH
RU0gY29udGV4dAotICogQGRldjogZHJtIGRldmljZSAqCi0gKgotICogVGhpcyBmdW5jdGlvbiBp
cyB1c2VkIHRvIGNyZWF0ZSBhIEdWVCBzcGVjaWZpYyBHRU0gY29udGV4dC4KLSAqCi0gKiBSZXR1
cm5zOgotICogcG9pbnRlciB0byBpOTE1X2dlbV9jb250ZXh0IG9uIHN1Y2Nlc3MsIGVycm9yIHBv
aW50ZXIgaWYgZmFpbGVkCi0gKgotICovCi1zdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqCi1pOTE1
X2dlbV9jb250ZXh0X2NyZWF0ZV9ndnQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKLXsKLQlzdHJ1
Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4OwotCWludCByZXQ7Ci0KLQlpZiAoIUlTX0VOQUJMRUQo
Q09ORklHX0RSTV9JOTE1X0dWVCkpCi0JCXJldHVybiBFUlJfUFRSKC1FTk9ERVYpOwotCi0JcmV0
ID0gaTkxNV9tdXRleF9sb2NrX2ludGVycnVwdGlibGUoZGV2KTsKLQlpZiAocmV0KQotCQlyZXR1
cm4gRVJSX1BUUihyZXQpOwotCi0JY3R4ID0gaTkxNV9nZW1fY3JlYXRlX2NvbnRleHQodG9faTkx
NShkZXYpLCAwKTsKLQlpZiAoSVNfRVJSKGN0eCkpCi0JCWdvdG8gb3V0OwotCi0JcmV0ID0gaTkx
NV9nZW1fY29udGV4dF9waW5faHdfaWQoY3R4KTsKLQlpZiAocmV0KSB7Ci0JCWNvbnRleHRfY2xv
c2UoY3R4KTsKLQkJY3R4ID0gRVJSX1BUUihyZXQpOwotCQlnb3RvIG91dDsKLQl9Ci0KLQljdHgt
PmZpbGVfcHJpdiA9IEVSUl9QVFIoLUVCQURGKTsKLQlpOTE1X2dlbV9jb250ZXh0X3NldF9jbG9z
ZWQoY3R4KTsgLyogbm90IHVzZXIgYWNjZXNzaWJsZSAqLwotCWk5MTVfZ2VtX2NvbnRleHRfY2xl
YXJfYmFubmFibGUoY3R4KTsKLQlpOTE1X2dlbV9jb250ZXh0X3NldF9mb3JjZV9zaW5nbGVfc3Vi
bWlzc2lvbihjdHgpOwotCWlmICghVVNFU19HVUNfU1VCTUlTU0lPTih0b19pOTE1KGRldikpKQot
CQljdHgtPnJpbmdfc2l6ZSA9IDUxMiAqIFBBR0VfU0laRTsgLyogTWF4IHJpbmcgYnVmZmVyIHNp
emUgKi8KLQotCUdFTV9CVUdfT04oaTkxNV9nZW1fY29udGV4dF9pc19rZXJuZWwoY3R4KSk7Ci1v
dXQ6Ci0JbXV0ZXhfdW5sb2NrKCZkZXYtPnN0cnVjdF9tdXRleCk7Ci0JcmV0dXJuIGN0eDsKLX0K
LQogc3RhdGljIHZvaWQKIGRlc3Ryb3lfa2VybmVsX2NvbnRleHQoc3RydWN0IGk5MTVfZ2VtX2Nv
bnRleHQgKipjdHhwKQogewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250
ZXh0LmgKaW5kZXggMTA2ZTJjY2Y3YTRjLi4xNzY5Nzg2MDhiNmYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaApAQCAtMTQxLDggKzE0MSw2IEBAIGludCBp
OTE1X2dlbV9jb250ZXh0X29wZW4oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiB2b2lk
IGk5MTVfZ2VtX2NvbnRleHRfY2xvc2Uoc3RydWN0IGRybV9maWxlICpmaWxlKTsKIAogdm9pZCBp
OTE1X2dlbV9jb250ZXh0X3JlbGVhc2Uoc3RydWN0IGtyZWYgKmN0eF9yZWYpOwotc3RydWN0IGk5
MTVfZ2VtX2NvbnRleHQgKgotaTkxNV9nZW1fY29udGV4dF9jcmVhdGVfZ3Z0KHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYpOwogCiBpbnQgaTkxNV9nZW1fdm1fY3JlYXRlX2lvY3RsKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCQkgICAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSk7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvc2NoZWR1bGVyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndnQvc2NoZWR1bGVyLmMKaW5kZXggNWIyOWYyMmRjNzVhLi5hMzhk
ZGI1N2U3ODYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9zY2hlZHVsZXIu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvc2NoZWR1bGVyLmMKQEAgLTEyMTIsMTkg
KzEyMTIsMjggQEAgaTkxNV9jb250ZXh0X3BwZ3R0X3Jvb3Rfc2F2ZShzdHJ1Y3QgaW50ZWxfdmdw
dV9zdWJtaXNzaW9uICpzLAogICovCiBpbnQgaW50ZWxfdmdwdV9zZXR1cF9zdWJtaXNzaW9uKHN0
cnVjdCBpbnRlbF92Z3B1ICp2Z3B1KQogeworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdmdwdS0+Z3Z0LT5kZXZfcHJpdjsKIAlzdHJ1Y3QgaW50ZWxfdmdwdV9zdWJtaXNzaW9uICpz
ID0gJnZncHUtPnN1Ym1pc3Npb247CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwog
CXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHg7CiAJZW51bSBpbnRlbF9lbmdpbmVfaWQgaTsK
IAlpbnQgcmV0OwogCi0JY3R4ID0gaTkxNV9nZW1fY29udGV4dF9jcmVhdGVfZ3Z0KCZ2Z3B1LT5n
dnQtPmRldl9wcml2LT5kcm0pOwotCWlmIChJU19FUlIoY3R4KSkKLQkJcmV0dXJuIFBUUl9FUlIo
Y3R4KTsKKwltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKworCWN0eCA9IGk5
MTVfZ2VtX2NvbnRleHRfY3JlYXRlX2tlcm5lbChpOTE1LCBJOTE1X1BSSU9SSVRZX01BWCk7CisJ
aWYgKElTX0VSUihjdHgpKSB7CisJCXJldCA9IFBUUl9FUlIoY3R4KTsKKwkJZ290byBvdXRfdW5s
b2NrOworCX0KKworCWk5MTVfZ2VtX2NvbnRleHRfc2V0X2ZvcmNlX3NpbmdsZV9zdWJtaXNzaW9u
KGN0eCk7CisJaWYgKCFVU0VTX0dVQ19TVUJNSVNTSU9OKGk5MTUpKQorCQljdHgtPnJpbmdfc2l6
ZSA9IDUxMiAqIFBBR0VfU0laRTsgLyogTWF4IHJpbmcgYnVmZmVyIHNpemUgKi8KIAogCWk5MTVf
Y29udGV4dF9wcGd0dF9yb290X3NhdmUocywgaTkxNV92bV90b19wcGd0dChjdHgtPnZtKSk7CiAK
LQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCB2Z3B1LT5ndnQtPmRldl9wcml2LCBpKSB7CisJZm9y
X2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaSkgewogCQlzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2U7CiAKIAkJSU5JVF9MSVNUX0hFQUQoJnMtPndvcmtsb2FkX3FfaGVhZFtpXSk7CkBAIC0xMjYy
LDExICsxMjcxLDEyIEBAIGludCBpbnRlbF92Z3B1X3NldHVwX3N1Ym1pc3Npb24oc3RydWN0IGlu
dGVsX3ZncHUgKnZncHUpCiAJYml0bWFwX3plcm8ocy0+dGxiX2hhbmRsZV9wZW5kaW5nLCBJOTE1
X05VTV9FTkdJTkVTKTsKIAogCWk5MTVfZ2VtX2NvbnRleHRfcHV0KGN0eCk7CisJbXV0ZXhfdW5s
b2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAlyZXR1cm4gMDsKIAogb3V0X3NoYWRvd19j
dHg6CiAJaTkxNV9jb250ZXh0X3BwZ3R0X3Jvb3RfcmVzdG9yZShzLCBpOTE1X3ZtX3RvX3BwZ3R0
KGN0eC0+dm0pKTsKLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCB2Z3B1LT5ndnQtPmRldl9wcml2
LCBpKSB7CisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaSkgewogCQlpZiAoSVNfRVJS
KHMtPnNoYWRvd1tpXSkpCiAJCQlicmVhazsKIApAQCAtMTI3NCw2ICsxMjg0LDggQEAgaW50IGlu
dGVsX3ZncHVfc2V0dXBfc3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfdmdwdSAqdmdwdSkKIAkJaW50
ZWxfY29udGV4dF9wdXQocy0+c2hhZG93W2ldKTsKIAl9CiAJaTkxNV9nZW1fY29udGV4dF9wdXQo
Y3R4KTsKK291dF91bmxvY2s6CisJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4
KTsKIAlyZXR1cm4gcmV0OwogfQogCi0tIAoyLjIzLjAucmMxCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
