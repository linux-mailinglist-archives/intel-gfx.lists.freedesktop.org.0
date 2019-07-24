Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C6072462
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 04:22:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F6366E426;
	Wed, 24 Jul 2019 02:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 029C66E426
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 02:22:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 19:22:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; d="scan'208";a="160422021"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 23 Jul 2019 19:22:20 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jul 2019 19:21:49 -0700
Message-Id: <20190724022153.8927-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
References: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/8] drm/i915/uc: Move xfer rsa logic to
 common function
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

VGhlIHdheSB3ZSBjb3B5IHRoZSBSU0EgaXMgdGhlIHNhbWUgZm9yIEd1QyBhbmQgSHVDLCBzbyB3
ZSBjYW4gbW92ZSB0aGUKbG9naWMgaW4gYSBjb21tb24gZnVuY3Rpb24uIHRoaXMgd2lsbCBhbHNv
IG1ha2UgYW55IHVwZGF0ZSBuZWVkZWQgZm9yCmxvY2FsIG1lbW9yeSBlYXNpZXIuCgp2MjogcmV0
dXJuIHRoZSBudW1iZXIgb2YgY29waWVkIGJ5dGVzIGFuZCBjaGVjayBpdCAoQ2hyaXMpCgpTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9A
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+ICN2MQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19mdy5j
IHwgIDcgKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMg
fCAxMCArKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5j
ICB8IDE4ICsrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWNfZncuaCAgfCAgMSArCiA0IGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDkg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZncuYwpp
bmRleCAwODVlNzg0MmVmOGEuLjA5YjBmZjJiZDI1NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3VjX2Z3LmMKQEAgLTc3LDEzICs3NywxMiBAQCBzdGF0aWMgdm9pZCBndWNf
cHJlcGFyZV94ZmVyKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKIHN0YXRpYyB2b2lkIGd1Y194ZmVy
X3JzYShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCiB7CiAJc3RydWN0IGludGVsX3VuY29yZSAqdW5j
b3JlID0gZ3VjX3RvX2d0KGd1YyktPnVuY29yZTsKLQlzdHJ1Y3QgaW50ZWxfdWNfZncgKmZ3ID0g
Jmd1Yy0+Znc7Ci0Jc3RydWN0IHNnX3RhYmxlICpwYWdlcyA9IGZ3LT5vYmotPm1tLnBhZ2VzOwog
CXUzMiByc2FbVU9TX1JTQV9TQ1JBVENIX0NPVU5UXTsKKwlzaXplX3QgY29waWVkOwogCWludCBp
OwogCi0Jc2dfcGNvcHlfdG9fYnVmZmVyKHBhZ2VzLT5zZ2wsIHBhZ2VzLT5uZW50cywKLQkJCSAg
IHJzYSwgc2l6ZW9mKHJzYSksIGZ3LT5yc2Ffb2Zmc2V0KTsKKwljb3BpZWQgPSBpbnRlbF91Y19m
d19jb3B5X3JzYSgmZ3VjLT5mdywgcnNhLCBzaXplb2YocnNhKSk7CisJR0VNX0JVR19PTihjb3Bp
ZWQgPCBzaXplb2YocnNhKSk7CiAKIAlmb3IgKGkgPSAwOyBpIDwgVU9TX1JTQV9TQ1JBVENIX0NP
VU5UOyBpKyspCiAJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIFVPU19SU0FfU0NSQVRDSChp
KSwgcnNhW2ldKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2h1Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMKaW5k
ZXggZmEyMTUxZmEzYTEzLi44ZjExOWZmMjkxZmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2h1Y19mdy5jCkBAIC0zOCwxNyArMzgsMTcgQEAgdm9pZCBpbnRlbF9odWNfZndf
aW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfaHVjICpodWMpCiAKIHN0YXRpYyB2b2lkIGh1Y194ZmVy
X3JzYShzdHJ1Y3QgaW50ZWxfaHVjICpodWMpCiB7Ci0Jc3RydWN0IGludGVsX3VjX2Z3ICpmdyA9
ICZodWMtPmZ3OwotCXN0cnVjdCBzZ190YWJsZSAqcGFnZXMgPSBmdy0+b2JqLT5tbS5wYWdlczsK
KwlzaXplX3QgY29waWVkOwogCiAJLyoKIAkgKiBIdUMgZmlybXdhcmUgaW1hZ2UgaXMgb3V0c2lk
ZSBHdUMgYWNjZXNzaWJsZSByYW5nZS4KIAkgKiBDb3B5IHRoZSBSU0Egc2lnbmF0dXJlIG91dCBv
ZiB0aGUgaW1hZ2UgaW50bwogCSAqIHRoZSBwZXJtYS1waW5uZWQgcmVnaW9uIHNldCBhc2lkZSBm
b3IgaXQKIAkgKi8KLQlzZ19wY29weV90b19idWZmZXIocGFnZXMtPnNnbCwgcGFnZXMtPm5lbnRz
LAotCQkJICAgaHVjLT5yc2FfZGF0YV92YWRkciwgZnctPnJzYV9zaXplLAotCQkJICAgZnctPnJz
YV9vZmZzZXQpOworCUdFTV9CVUdfT04oaHVjLT5mdy5yc2Ffc2l6ZSA+IGh1Yy0+cnNhX2RhdGEt
PnNpemUpOworCWNvcGllZCA9IGludGVsX3VjX2Z3X2NvcHlfcnNhKCZodWMtPmZ3LCBodWMtPnJz
YV9kYXRhX3ZhZGRyLAorCQkJCSAgICAgIGh1Yy0+cnNhX2RhdGEtPnNpemUpOworCUdFTV9CVUdf
T04oY29waWVkIDwgaHVjLT5mdy5yc2Ffc2l6ZSk7CiB9CiAKIHN0YXRpYyBpbnQgaHVjX3hmZXJf
dWNvZGUoc3RydWN0IGludGVsX2h1YyAqaHVjKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX3VjX2Z3LmMKaW5kZXggOWZjNzJjMmU1MGQxLi45MDlhODE5NmY5ZDQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwpAQCAtNDYyLDYgKzQ2MiwyNCBAQCB2b2lk
IGludGVsX3VjX2Z3X2NsZWFudXBfZmV0Y2goc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdykKIAl1
Y19mdy0+c3RhdHVzID0gSU5URUxfVUNfRklSTVdBUkVfU0VMRUNUSU9OX0RPTkU7CiB9CiAKKy8q
KgorICogaW50ZWxfdWNfZndfY29weV9yc2EgLSBjb3B5IGZ3IFJTQSB0byBidWZmZXIKKyAqCisg
KiBAdWNfZnc6IHVDIGZpcm13YXJlCisgKiBAZHN0OiBkc3QgYnVmZmVyCisgKiBAbWF4X2xlbjog
bWF4IG51bWJlciBvZiBieXRlcyB0byBjb3B5CisgKgorICogUmV0dXJuOiBudW1iZXIgb2YgY29w
aWVkIGJ5dGVzLgorICovCitzaXplX3QgaW50ZWxfdWNfZndfY29weV9yc2Eoc3RydWN0IGludGVs
X3VjX2Z3ICp1Y19mdywgdm9pZCAqZHN0LCB1MzIgbWF4X2xlbikKK3sKKwlzdHJ1Y3Qgc2dfdGFi
bGUgKnBhZ2VzID0gdWNfZnctPm9iai0+bW0ucGFnZXM7CisJdTMyIHNpemUgPSBtaW5fdCh1MzIs
IHVjX2Z3LT5yc2Ffc2l6ZSwgbWF4X2xlbik7CisKKwlyZXR1cm4gc2dfcGNvcHlfdG9fYnVmZmVy
KHBhZ2VzLT5zZ2wsIHBhZ2VzLT5uZW50cywKKwkJCQkgIGRzdCwgc2l6ZSwgdWNfZnctPnJzYV9v
ZmZzZXQpOworfQorCiAvKioKICAqIGludGVsX3VjX2Z3X2R1bXAgLSBkdW1wIGluZm9ybWF0aW9u
IGFib3V0IHVDIGZpcm13YXJlCiAgKiBAdWNfZnc6IHVDIGZpcm13YXJlCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaAppbmRleCBlY2RlYzQzMjAyNjAuLjU3MmI3ODczZmUx
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oCkBAIC0xNzcsNiAr
MTc3LDcgQEAgaW50IGludGVsX3VjX2Z3X3VwbG9hZChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3
LAogaW50IGludGVsX3VjX2Z3X2luaXQoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdyk7CiB2b2lk
IGludGVsX3VjX2Z3X2Zpbmkoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdyk7CiB1MzIgaW50ZWxf
dWNfZndfZ2d0dF9vZmZzZXQoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdyk7CitzaXplX3QgaW50
ZWxfdWNfZndfY29weV9yc2Eoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywgdm9pZCAqZHN0LCB1
MzIgbWF4X2xlbik7CiB2b2lkIGludGVsX3VjX2Z3X2R1bXAoY29uc3Qgc3RydWN0IGludGVsX3Vj
X2Z3ICp1Y19mdywgc3RydWN0IGRybV9wcmludGVyICpwKTsKIAogI2VuZGlmCi0tIAoyLjIyLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
