Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C7CBDBB9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 12:02:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B9D6EB7A;
	Wed, 25 Sep 2019 10:02:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2E1F6EB6E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 10:02:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18609369-1500050 
 for multiple; Wed, 25 Sep 2019 11:01:44 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 11:01:18 +0100
Message-Id: <20190925100137.17956-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190925100137.17956-1-chris@chris-wilson.co.uk>
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/27] drm/i915: Move idle barrier cleanup into
 engine-pm
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

Tm93IHRoYXQgd2Ugbm93IGxvbmdlciBuZWVkIHRvIGd1YXJhbnRlZSB0aGF0IHRoZSBhY3RpdmUg
Y2FsbGJhY2sgaXMKdW5kZXIgdGhlIHN0cnVjdF9tdXRleCwgd2UgY2FuIGxpZnQgaXQgb3V0IG9m
IHRoZSBpOTE1X2dlbV9wYXJrKCkgYW5kCmludG8gdGhlIGVuZ2luZSBwYXJraW5nIGl0c2VsZi4K
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpS
ZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyAgICB8IDE5IC0tLS0tLS0t
LS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jIHwg
MTUgKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jICAg
ICAgICB8ICAxICsKIDMgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Bt
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwppbmRleCAzYTQ3ZTEx
OTBjZTEuLjQyYTYwMjFkMmRmOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Bt
LmMKQEAgLTExLDI5ICsxMSwxMCBAQAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAi
aTkxNV9nbG9iYWxzLmgiCiAKLXN0YXRpYyB2b2lkIGNhbGxfaWRsZV9iYXJyaWVycyhzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUpCi17Ci0Jc3RydWN0IGxsaXN0X25vZGUgKm5vZGUsICpu
ZXh0OwotCi0JbGxpc3RfZm9yX2VhY2hfc2FmZShub2RlLCBuZXh0LCBsbGlzdF9kZWxfYWxsKCZl
bmdpbmUtPmJhcnJpZXJfdGFza3MpKSB7Ci0JCXN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiID0KLQkJ
CWNvbnRhaW5lcl9vZigoc3RydWN0IGxpc3RfaGVhZCAqKW5vZGUsCi0JCQkJICAgICB0eXBlb2Yo
KmNiKSwgbm9kZSk7Ci0KLQkJY2ItPmZ1bmMoTlVMTCwgY2IpOwotCX0KLX0KLQogc3RhdGljIHZv
aWQgaTkxNV9nZW1fcGFyayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKLQlzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0JZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Ci0K
IAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAotCWZvcl9l
YWNoX2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKQotCQljYWxsX2lkbGVfYmFycmllcnMoZW5naW5l
KTsgLyogY2xlYW51cCBhZnRlciB3ZWRnaW5nICovCi0KIAlpOTE1X3ZtYV9wYXJrZWQoaTkxNSk7
CiAKIAlpOTE1X2dsb2JhbHNfcGFyaygpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfcG0uYwppbmRleCBjZTYxYzgzZDY4ZTkuLjM2MGZkNWNiMDdhYiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMKQEAgLTEyMyw2ICsxMjMsMTkgQEAgc3Rh
dGljIGJvb2wgc3dpdGNoX3RvX2tlcm5lbF9jb250ZXh0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKIAlyZXR1cm4gcmVzdWx0OwogfQogCitzdGF0aWMgdm9pZCBjYWxsX2lkbGVfYmFy
cmllcnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCXN0cnVjdCBsbGlzdF9u
b2RlICpub2RlLCAqbmV4dDsKKworCWxsaXN0X2Zvcl9lYWNoX3NhZmUobm9kZSwgbmV4dCwgbGxp
c3RfZGVsX2FsbCgmZW5naW5lLT5iYXJyaWVyX3Rhc2tzKSkgeworCQlzdHJ1Y3QgZG1hX2ZlbmNl
X2NiICpjYiA9CisJCQljb250YWluZXJfb2YoKHN0cnVjdCBsaXN0X2hlYWQgKilub2RlLAorCQkJ
CSAgICAgdHlwZW9mKCpjYiksIG5vZGUpOworCisJCWNiLT5mdW5jKE5VTEwsIGNiKTsKKwl9Cit9
CisKIHN0YXRpYyBpbnQgX19lbmdpbmVfcGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiB7
CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0KQEAgLTE0Miw2ICsxNTUsOCBAQCBz
dGF0aWMgaW50IF9fZW5naW5lX3Bhcmsoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQogCiAJR0VN
X1RSQUNFKCIlc1xuIiwgZW5naW5lLT5uYW1lKTsKIAorCWNhbGxfaWRsZV9iYXJyaWVycyhlbmdp
bmUpOyAvKiBjbGVhbnVwIGFmdGVyIHdlZGdpbmcgKi8KKwogCWludGVsX2VuZ2luZV9kaXNhcm1f
YnJlYWRjcnVtYnMoZW5naW5lKTsKIAlpbnRlbF9lbmdpbmVfcG9vbF9wYXJrKCZlbmdpbmUtPnBv
b2wpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwppbmRleCBmMjM1OTBlYzllNjguLmI1
YTgxNzg4OGEyNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCkBAIC02ODgsNiArNjg4
LDcgQEAgdm9pZCBpOTE1X2FjdGl2ZV9hY3F1aXJlX2JhcnJpZXIoc3RydWN0IGk5MTVfYWN0aXZl
ICpyZWYpCiAJCXJiX2xpbmtfbm9kZSgmbm9kZS0+bm9kZSwgcGFyZW50LCBwKTsKIAkJcmJfaW5z
ZXJ0X2NvbG9yKCZub2RlLT5ub2RlLCAmcmVmLT50cmVlKTsKIAorCQlHRU1fQlVHX09OKCFpbnRl
bF9lbmdpbmVfcG1faXNfYXdha2UoZW5naW5lKSk7CiAJCWxsaXN0X2FkZChiYXJyaWVyX3RvX2xs
KG5vZGUpLCAmZW5naW5lLT5iYXJyaWVyX3Rhc2tzKTsKIAkJaW50ZWxfZW5naW5lX3BtX3B1dChl
bmdpbmUpOwogCX0KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
