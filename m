Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 028C8E9D75
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 15:27:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27AB36EA06;
	Wed, 30 Oct 2019 14:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4161D6EA2B
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 14:27:06 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2019 15:26:56 +0100
Message-Id: <20191030142657.22405-11-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191030142657.22405-1-maarten.lankhorst@linux.intel.com>
References: <20191030142657.22405-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 11/12] drm/i915: Complete plane hw and uapi split,
 v2.
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

U3BsaXR0aW5nIHBsYW5lIHN0YXRlIGlzIGVhc2llciB0aGFuIHNwbGl0dGluZyBjcnRjX3N0YXRl
LApiZWZvcmUgcGxhbmUgY2hlY2sgd2UgY29weSB0aGUgZHJtIHByb3BlcnRpZXMgdG8gaHcgc28g
d2UgY2FuCmRvIHRoZSBzYW1lIGluIGJpZ2pvaW5lciBsYXRlciBvbi4KCldlIGNvcHkgdGhlIHN0
YXRlIGFmdGVyIHdlIGRpZCBhbGwgdGhlIG1vZGVzZXQgaGFuZGxpbmcsIGJ1dCBmb3J0dW5hdGVs
eQppOTE1IHNlZW1zIHRvIGJlIHNwbGl0IGNvcnJlY3RseSBhbmQgbm90aGluZyBkdXJpbmcgbW9k
ZXNldCBsb29rcwphdCBwbGFuZV9zdGF0ZS4KCkNoYW5nZXMgc2luY2UgdjE6Ci0gRG8gbm90IGNs
ZWFyIGh3IHN0YXRlIG9uIGR1cGxpY2F0aW9uLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KLS0tCiAuLi4vZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgfCAzNyArKysrKysrKysrKysrKysr
KystCiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmggfCAgMiAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgMSArCiAu
Li4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAyMyArKysrKysr
KystLS0KIDQgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19w
bGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUu
YwppbmRleCAxODAyMzQyMmEzNGQuLjI0OWZiNDFkNzhhNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCkBAIC05Myw2ICs5MywxMCBA
QCBpbnRlbF9wbGFuZV9kdXBsaWNhdGVfc3RhdGUoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUpCiAJ
aW50ZWxfc3RhdGUtPnZtYSA9IE5VTEw7CiAJaW50ZWxfc3RhdGUtPmZsYWdzID0gMDsKIAorCS8q
IGFkZCByZWZlcmVuY2UgdG8gZmIgKi8KKwlpZiAoaW50ZWxfc3RhdGUtPmh3LmZiKQorCQlkcm1f
ZnJhbWVidWZmZXJfZ2V0KGludGVsX3N0YXRlLT5ody5mYik7CisKIAlyZXR1cm4gJmludGVsX3N0
YXRlLT51YXBpOwogfQogCkBAIC0xMTIsNiArMTE2LDggQEAgaW50ZWxfcGxhbmVfZGVzdHJveV9z
dGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKIAlXQVJOX09OKHBsYW5lX3N0YXRlLT52bWEp
OwogCiAJX19kcm1fYXRvbWljX2hlbHBlcl9wbGFuZV9kZXN0cm95X3N0YXRlKCZwbGFuZV9zdGF0
ZS0+dWFwaSk7CisJaWYgKHBsYW5lX3N0YXRlLT5ody5mYikKKwkJZHJtX2ZyYW1lYnVmZmVyX3B1
dChwbGFuZV9zdGF0ZS0+aHcuZmIpOwogCWtmcmVlKHBsYW5lX3N0YXRlKTsKIH0KIApAQCAtMTc2
LDE1ICsxODIsNDQgQEAgYm9vbCBpbnRlbF9wbGFuZV9jYWxjX21pbl9jZGNsayhzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAlyZXR1cm4gZmFsc2U7CiB9CiAKK3N0YXRpYyB2b2lk
IGludGVsX3BsYW5lX2NsZWFyX2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxh
bmVfc3RhdGUpCit7CisJaWYgKHBsYW5lX3N0YXRlLT5ody5mYikKKwkJZHJtX2ZyYW1lYnVmZmVy
X3B1dChwbGFuZV9zdGF0ZS0+aHcuZmIpOworCisJbWVtc2V0KCZwbGFuZV9zdGF0ZS0+aHcsIDAs
IHNpemVvZihwbGFuZV9zdGF0ZS0+aHcpKTsKK30KKwordm9pZCBpbnRlbF9wbGFuZV9jb3B5X3Vh
cGlfdG9faHdfc3RhdGUoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwKKwkJ
CQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpmcm9tX3BsYW5lX3N0YXRl
KQoreworCWludGVsX3BsYW5lX2NsZWFyX2h3X3N0YXRlKHBsYW5lX3N0YXRlKTsKKworCXBsYW5l
X3N0YXRlLT5ody5jcnRjID0gZnJvbV9wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjOworCXBsYW5lX3N0
YXRlLT5ody5mYiA9IGZyb21fcGxhbmVfc3RhdGUtPnVhcGkuZmI7CisJaWYgKHBsYW5lX3N0YXRl
LT5ody5mYikKKwkJZHJtX2ZyYW1lYnVmZmVyX2dldChwbGFuZV9zdGF0ZS0+aHcuZmIpOworCisJ
cGxhbmVfc3RhdGUtPmh3LmFscGhhID0gZnJvbV9wbGFuZV9zdGF0ZS0+dWFwaS5hbHBoYTsKKwlw
bGFuZV9zdGF0ZS0+aHcucGl4ZWxfYmxlbmRfbW9kZSA9CisJCWZyb21fcGxhbmVfc3RhdGUtPnVh
cGkucGl4ZWxfYmxlbmRfbW9kZTsKKwlwbGFuZV9zdGF0ZS0+aHcucm90YXRpb24gPSBmcm9tX3Bs
YW5lX3N0YXRlLT51YXBpLnJvdGF0aW9uOworCXBsYW5lX3N0YXRlLT5ody5jb2xvcl9lbmNvZGlu
ZyA9IGZyb21fcGxhbmVfc3RhdGUtPnVhcGkuY29sb3JfZW5jb2Rpbmc7CisJcGxhbmVfc3RhdGUt
Pmh3LmNvbG9yX3JhbmdlID0gZnJvbV9wbGFuZV9zdGF0ZS0+dWFwaS5jb2xvcl9yYW5nZTsKK30K
KwogaW50IGludGVsX3BsYW5lX2F0b21pY19jaGVja193aXRoX3N0YXRlKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKIAkJCQkJc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKm5ld19jcnRjX3N0YXRlLAogCQkJCQljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgKm9sZF9wbGFuZV9zdGF0ZSwKIAkJCQkJc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpuZXdf
cGxhbmVfc3RhdGUpCiB7CiAJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSA9IHRvX2ludGVsX3Bs
YW5lKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5wbGFuZSk7Ci0JY29uc3Qgc3RydWN0IGRybV9mcmFt
ZWJ1ZmZlciAqZmIgPSBuZXdfcGxhbmVfc3RhdGUtPmh3LmZiOworCWNvbnN0IHN0cnVjdCBkcm1f
ZnJhbWVidWZmZXIgKmZiOwogCWludCByZXQ7CiAKKwlpbnRlbF9wbGFuZV9jb3B5X3VhcGlfdG9f
aHdfc3RhdGUobmV3X3BsYW5lX3N0YXRlLCBuZXdfcGxhbmVfc3RhdGUpOworCWZiID0gbmV3X3Bs
YW5lX3N0YXRlLT5ody5mYjsKKwogCW5ld19jcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzICY9IH5C
SVQocGxhbmUtPmlkKTsKIAluZXdfY3J0Y19zdGF0ZS0+bnYxMl9wbGFuZXMgJj0gfkJJVChwbGFu
ZS0+aWQpOwogCW5ld19jcnRjX3N0YXRlLT5jOF9wbGFuZXMgJj0gfkJJVChwbGFuZS0+aWQpOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxh
bmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgK
aW5kZXggZTYxZTlhODJhYWRmLi5jZGIwZjk3ZDA5ZjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaApAQCAtMjAsNiArMjAsOCBAQCBl
eHRlcm4gY29uc3Qgc3RydWN0IGRybV9wbGFuZV9oZWxwZXJfZnVuY3MgaW50ZWxfcGxhbmVfaGVs
cGVyX2Z1bmNzOwogCiB1bnNpZ25lZCBpbnQgaW50ZWxfcGxhbmVfZGF0YV9yYXRlKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJCSAgIGNvbnN0IHN0cnVjdCBp
bnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpOwordm9pZCBpbnRlbF9wbGFuZV9jb3B5X3Vh
cGlfdG9faHdfc3RhdGUoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwKKwkJ
CQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpmcm9tX3BsYW5lX3N0YXRl
KTsKIHZvaWQgaW50ZWxfdXBkYXRlX3BsYW5lKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCiAJ
CQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCWNvbnN0IHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAxNTg0NDIxYzc2YjkuLjdlZTVkMWY1
YTE4MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
QEAgLTMyODMsNiArMzI4Myw3IEBAIGludGVsX2ZpbmRfaW5pdGlhbF9wbGFuZV9vYmooc3RydWN0
IGludGVsX2NydGMgKmludGVsX2NydGMsCiAKIAlwbGFuZV9zdGF0ZS0+ZmIgPSBmYjsKIAlwbGFu
ZV9zdGF0ZS0+Y3J0YyA9ICZpbnRlbF9jcnRjLT5iYXNlOworCWludGVsX3BsYW5lX2NvcHlfdWFw
aV90b19od19zdGF0ZShpbnRlbF9zdGF0ZSwgaW50ZWxfc3RhdGUpOwogCiAJYXRvbWljX29yKHRv
X2ludGVsX3BsYW5lKHByaW1hcnkpLT5mcm9udGJ1ZmZlcl9iaXQsCiAJCSAgJnRvX2ludGVsX2Zy
b250YnVmZmVyKGZiKS0+Yml0cyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDYwMzZiMmIzOTgwYi4uZmVmODFlNDUwZTIy
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaApAQCAtNTIzLDExICs1MjMsMjQgQEAgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSB7
CiB9OwogCiBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgewotCXVuaW9uIHsKLQkJc3RydWN0IGRy
bV9wbGFuZV9zdGF0ZSBiYXNlOwotCQlzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlIHVhcGk7Ci0JCXN0
cnVjdCBkcm1fcGxhbmVfc3RhdGUgaHc7Ci0JfTsKKwlzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlIHVh
cGk7CisKKwkvKgorCSAqIGFjdHVhbCBoYXJkd2FyZSBzdGF0ZSwgdGhlIHN0YXRlIHdlIHByb2dy
YW0gdG8gdGhlIGhhcmR3YXJlLgorCSAqIFRoZSBmb2xsb3dpbmcgbWVtYmVycyBhcmUgdXNlZCB0
byB2ZXJpZnkgdGhlIGhhcmR3YXJlIHN0YXRlOgorCSAqIER1cmluZyBpbml0aWFsIGh3IHJlYWRv
dXQsIHRoZXkgbmVlZCB0byBiZSBjb3BpZWQgZnJvbSB1YXBpLgorCSAqLworCXN0cnVjdCB7CisJ
CXN0cnVjdCBkcm1fY3J0YyAqY3J0YzsKKwkJc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmI7CisK
KwkJdTE2IGFscGhhOworCQl1aW50MTZfdCBwaXhlbF9ibGVuZF9tb2RlOworCQl1bnNpZ25lZCBp
bnQgcm90YXRpb247CisJCWVudW0gZHJtX2NvbG9yX2VuY29kaW5nIGNvbG9yX2VuY29kaW5nOwor
CQllbnVtIGRybV9jb2xvcl9yYW5nZSBjb2xvcl9yYW5nZTsKKwl9IGh3OworCiAJc3RydWN0IGk5
MTVfZ2d0dF92aWV3IHZpZXc7CiAJc3RydWN0IGk5MTVfdm1hICp2bWE7CiAJdW5zaWduZWQgbG9u
ZyBmbGFnczsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
