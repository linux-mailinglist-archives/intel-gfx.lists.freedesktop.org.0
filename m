Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 012C7AFBB5
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 13:47:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD196E249;
	Wed, 11 Sep 2019 11:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22D156E249
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 11:47:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18450493-1500050 
 for multiple; Wed, 11 Sep 2019 12:46:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Sep 2019 12:46:55 +0100
Message-Id: <20190911114655.9254-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Squeeze iommu status into
 debugfs/i915_capabilities
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUncyBubyBlYXN5IHdheSBvZiBjaGVja2luZyB3aGV0aGVyIGlvbW11IGlzIGVuYWJsZWQg
Zm9yIHRoZSBHUFUKKHlvdSBjYW4gZ3JlcCBkbWVzZyBpZiB5b3Uga25vdyB0aGUgZGV2aWNlLCBv
ciB5b3UgY2FuIGdyZXAKaTkxNV9ncHVfaW5mbyBpZiB0aGF0J3MgYXZhaWxhYmxlKS4gV2UgZG8g
aGF2ZSBhIGNlbnRyYWwKaTkxNV9jYXBhYmlsaXRpZXMgd2l0aCB0aGUgaW50ZW50IG9mIGxpc3Rp
bmcgc3VjaCBwZXJ0aW5lbnQgaW5mb3JtYXRpb24sCnNvIGFkZCB0aGUgaW9tbXUgc3RhdHVzLgoK
U3VnZ2VzdGVkLWJ5OiBNYXJ0aW4gUGVyZXMgPG1hcnRpbi5wZXJlc0BsaW51eC5pbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpD
YzogTWFydGluIFBlcmVzIDxtYXJ0aW4ucGVyZXNAbGludXguaW50ZWwuY29tPgpDYzogVG9taSBT
YXJ2ZWxhIDx0b21pLnAuc2FydmVsYUBpbnRlbC5jb20+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWth
Lmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYyB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggNzA4ODU1ZTA1MWI1Li5lNTgzNTMz
N2YwMjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC02MSwxMSArNjEsMTgg
QEAgc3RhdGljIGludCBpOTE1X2NhcGFiaWxpdGllcyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQg
KmRhdGEpCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gbm9kZV90b19pOTE1
KG0tPnByaXZhdGUpOwogCWNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyAqaW5mbyA9IElO
VEVMX0lORk8oZGV2X3ByaXYpOwogCXN0cnVjdCBkcm1fcHJpbnRlciBwID0gZHJtX3NlcV9maWxl
X3ByaW50ZXIobSk7CisJY29uc3QgY2hhciAqbXNnOwogCiAJc2VxX3ByaW50ZihtLCAiZ2VuOiAl
ZFxuIiwgSU5URUxfR0VOKGRldl9wcml2KSk7CiAJc2VxX3ByaW50ZihtLCAicGxhdGZvcm06ICVz
XG4iLCBpbnRlbF9wbGF0Zm9ybV9uYW1lKGluZm8tPnBsYXRmb3JtKSk7CiAJc2VxX3ByaW50Ziht
LCAicGNoOiAlZFxuIiwgSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpKTsKIAorCW1zZyA9ICJuL2Ei
OworI2lmZGVmIENPTkZJR19JTlRFTF9JT01NVQorCW1zZyA9IGVuYWJsZWRkaXNhYmxlZChpbnRl
bF9pb21tdV9nZnhfbWFwcGVkKTsKKyNlbmRpZgorCXNlcV9wcmludGYobSwgImlvbW11OiAlc1xu
IiwgbXNnKTsKKwogCWludGVsX2RldmljZV9pbmZvX2R1bXBfZmxhZ3MoaW5mbywgJnApOwogCWlu
dGVsX2RldmljZV9pbmZvX2R1bXBfcnVudGltZShSVU5USU1FX0lORk8oZGV2X3ByaXYpLCAmcCk7
CiAJaW50ZWxfZHJpdmVyX2NhcHNfcHJpbnQoJmRldl9wcml2LT5jYXBzLCAmcCk7Ci0tIAoyLjIz
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
