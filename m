Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEFCAED3E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 16:38:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF206E0ED;
	Tue, 10 Sep 2019 14:38:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45BA16E0F6
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 14:38:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 07:38:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="175328644"
Received: from dudibroo-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.31.14])
 by orsmga007.jf.intel.com with ESMTP; 10 Sep 2019 07:38:37 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 15:38:22 +0100
Message-Id: <20190910143823.10686-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190910143823.10686-1-tvrtko.ursulin@linux.intel.com>
References: <20190910143823.10686-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Avoid round-trip via i915 in
 intel_gt_park
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkJvdGggaW4g
dGhlIGNvbnRhaW5lcl9vZiBhbmQgZ2V0dGluZyB0byBndC0+YXdha2UgdGhlcmUgaXMgbm8gbmVl
ZCB0byBnbwp2aWEgaTkxNSBzaW5jZSBib3RoIHRoZSB3YWtlcmVmIGFuZCBhd2FrZSBhcmUgbWVt
YmVycyBvZiBndC4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+CkNjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3Rf
cG0uYwppbmRleCA2YmEwZDIwNjlmODcuLmEyZTI5YmNjOTY3MSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndF9wbS5jCkBAIC01Niw5ICs1Niw5IEBAIHN0YXRpYyBpbnQgX19ndF91bnBh
cmsoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQogCiBzdGF0aWMgaW50IF9fZ3RfcGFyayhzdHJ1
Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PQotCQljb250YWluZXJfb2Yod2YsIHR5cGVvZigqaTkxNSksIGd0Lndha2VyZWYpOwotCWludGVs
X3dha2VyZWZfdCB3YWtlcmVmID0gZmV0Y2hfYW5kX3plcm8oJmk5MTUtPmd0LmF3YWtlKTsKKwlz
dHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gY29udGFpbmVyX29mKHdmLCB0eXBlb2YoKmd0KSwgd2FrZXJl
Zik7CisJaW50ZWxfd2FrZXJlZl90IHdha2VyZWYgPSBmZXRjaF9hbmRfemVybygmZ3QtPmF3YWtl
KTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1OwogCiAJR0VNX1RS
QUNFKCJcbiIpOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
