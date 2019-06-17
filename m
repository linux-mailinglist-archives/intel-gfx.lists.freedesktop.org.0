Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D22A47AA5
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 09:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BDA489183;
	Mon, 17 Jun 2019 07:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 861BC891A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 07:19:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16923059-1500050 
 for multiple; Mon, 17 Jun 2019 08:19:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 08:19:12 +0100
Message-Id: <20190617071912.20256-22-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617071912.20256-1-chris@chris-wilson.co.uk>
References: <20190617071912.20256-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/22] drm/i915: Move idle barrier cleanup into
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
Cc: matthew.auld@intel.com, mika.kuoppala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm93IHRoYXQgd2Ugbm93IGxvbmdlciBuZWVkIHRvIGd1YXJhbnRlZSB0aGF0IHRoZSBhY3RpdmUg
Y2FsbGJhY2sgaXMKdW5kZXIgdGhlIHN0cnVjdF9tdXRleCwgd2UgY2FuIGxpZnQgaXQgb3V0IG9m
IHRoZSBpOTE1X2dlbV9wYXJrKCkgYW5kCmludG8gdGhlIGVuZ2luZSBwYXJraW5nIGl0c2VsZi4K
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jICAgIHwgMTkgLS0tLS0t
LS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMg
fCAxNSArKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwg
MTkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwppbmRl
eCBjOTQzM2NkZTRiOWEuLjM2NGNkOGJlYTQ0YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3BtLmMKQEAgLTEwLDI5ICsxMCwxMCBAQAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAj
aW5jbHVkZSAiaTkxNV9nbG9iYWxzLmgiCiAKLXN0YXRpYyB2b2lkIGNhbGxfaWRsZV9iYXJyaWVy
cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCi17Ci0Jc3RydWN0IGxsaXN0X25vZGUg
Km5vZGUsICpuZXh0OwotCi0JbGxpc3RfZm9yX2VhY2hfc2FmZShub2RlLCBuZXh0LCBsbGlzdF9k
ZWxfYWxsKCZlbmdpbmUtPmJhcnJpZXJfdGFza3MpKSB7Ci0JCXN0cnVjdCBkbWFfZmVuY2VfY2Ig
KmNiID0KLQkJCWNvbnRhaW5lcl9vZigoc3RydWN0IGxpc3RfaGVhZCAqKW5vZGUsCi0JCQkJICAg
ICB0eXBlb2YoKmNiKSwgbm9kZSk7Ci0KLQkJY2ItPmZ1bmMoTlVMTCwgY2IpOwotCX0KLX0KLQog
c3RhdGljIHZvaWQgaTkxNV9nZW1fcGFyayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
IHsKLQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0JZW51bSBpbnRlbF9lbmdpbmVf
aWQgaWQ7Ci0KIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsK
IAotCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKQotCQljYWxsX2lkbGVfYmFycmll
cnMoZW5naW5lKTsgLyogY2xlYW51cCBhZnRlciB3ZWRnaW5nICovCi0KIAlpOTE1X3RpbWVsaW5l
c19wYXJrKGk5MTUpOwogCWk5MTVfdm1hX3BhcmtlZChpOTE1KTsKIApkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYwppbmRleCBkNWQzYWFjNWMyNjguLjU0ODhjM2U1NTdk
ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMKQEAgLTk2LDYg
Kzk2LDE5IEBAIHN0YXRpYyBib29sIHN3aXRjaF90b19rZXJuZWxfY29udGV4dChzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJcmV0dXJuIGZhbHNlOwogfQogCitzdGF0aWMgdm9pZCBj
YWxsX2lkbGVfYmFycmllcnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCXN0
cnVjdCBsbGlzdF9ub2RlICpub2RlLCAqbmV4dDsKKworCWxsaXN0X2Zvcl9lYWNoX3NhZmUobm9k
ZSwgbmV4dCwgbGxpc3RfZGVsX2FsbCgmZW5naW5lLT5iYXJyaWVyX3Rhc2tzKSkgeworCQlzdHJ1
Y3QgZG1hX2ZlbmNlX2NiICpjYiA9CisJCQljb250YWluZXJfb2YoKHN0cnVjdCBsaXN0X2hlYWQg
Kilub2RlLAorCQkJCSAgICAgdHlwZW9mKCpjYiksIG5vZGUpOworCisJCWNiLT5mdW5jKE5VTEws
IGNiKTsKKwl9Cit9CisKIHN0YXRpYyBpbnQgX19lbmdpbmVfcGFyayhzdHJ1Y3QgaW50ZWxfd2Fr
ZXJlZiAqd2YpCiB7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0KQEAgLTExNSw2
ICsxMjgsOCBAQCBzdGF0aWMgaW50IF9fZW5naW5lX3Bhcmsoc3RydWN0IGludGVsX3dha2VyZWYg
KndmKQogCiAJR0VNX1RSQUNFKCIlc1xuIiwgZW5naW5lLT5uYW1lKTsKIAorCWNhbGxfaWRsZV9i
YXJyaWVycyhlbmdpbmUpOyAvKiBjbGVhbnVwIGFmdGVyIHdlZGdpbmcgKi8KKwogCWludGVsX2Vu
Z2luZV9kaXNhcm1fYnJlYWRjcnVtYnMoZW5naW5lKTsKIAlpbnRlbF9lbmdpbmVfcG9vbF9wYXJr
KCZlbmdpbmUtPnBvb2wpOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
