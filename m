Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 041AAB4703
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 07:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D7A6E11A;
	Tue, 17 Sep 2019 05:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 977956E11A;
 Tue, 17 Sep 2019 05:49:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 22:49:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,515,1559545200"; d="scan'208";a="386441271"
Received: from xzhan34-mobl3.bj.intel.com ([10.238.154.70])
 by fmsmga005.fm.intel.com with ESMTP; 16 Sep 2019 22:49:00 -0700
From: Xiaolin Zhang <xiaolin.zhang@intel.com>
To: intel-gvt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2019 13:48:17 +0800
Message-Id: <1568699301-2799-7-git-send-email-xiaolin.zhang@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568699301-2799-1-git-send-email-xiaolin.zhang@intel.com>
References: <1568699301-2799-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] [PATCH v10 6/9] drm/i915/gvt: GVTg handle pv_caps
 PVINFO register
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
Cc: zhenyu.z.wang@intel.com, hang.yuan@intel.com, zhiyuan.lv@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aW1wbGVtZW50IHB2X2NhcHMgUFZJTkZPIHJlZ2lzdGVyIGhhbmRsZXIgaW4gR1ZUZyB0bwpjb250
cm9sIGRpZmZlcmVudCBsZXZlbCBwdiBvcHRpbWl6YXRpb24gd2l0aGluIGd1ZXN0LgoKcmVwb3J0
IFZHVF9DQVBTX1BWIGNhcGFiaWxpdHkgaW4gcHZpbmZvIHBhZ2UgZm9yIGd1ZXN0LgoKdjA6IFJG
Qy4KdjE6IHJlYmFzZS4KdjI6IHJlYmFzZS4KdjM6IHJlbmFtZWQgZW5hYmxlX3B2bW1pbyB0byBw
dm1taW9fY2FwcyB3aGljaCBpcyB1c2VkIGZvciBob3N0CnB2IGNhcHMuCnY0OiByZW5hbWVkIHB2
bW1pb19jYXBzIHRvIHB2X2NhcHMuCnY1OiByZWJhc2UuCnY2OiByZWJhc2UuCnY3OiByZWJhc2Uu
CgpTaWduZWQtb2ZmLWJ5OiBYaWFvbGluIFpoYW5nIDx4aWFvbGluLnpoYW5nQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvaGFuZGxlcnMuYyB8IDQgKysrKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Z0L3ZncHUuYyAgICAgfCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvaGFu
ZGxlcnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9oYW5kbGVycy5jCmluZGV4IDQ1YTkx
MjQuLmFjZWIxNmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9oYW5kbGVy
cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9oYW5kbGVycy5jCkBAIC0xMTk0LDYg
KzExOTQsNyBAQCBzdGF0aWMgaW50IHB2aW5mb19tbWlvX3JlYWQoc3RydWN0IGludGVsX3ZncHUg
KnZncHUsIHVuc2lnbmVkIGludCBvZmZzZXQsCiAJCWJyZWFrOwogCWNhc2UgMHg3ODAxMDoJLyog
dmd0X2NhcHMgKi8KIAljYXNlIDB4Nzg4MWM6CisJY2FzZSBfdmd0aWZfcmVnKHB2X2NhcHMpOgog
CQlicmVhazsKIAlkZWZhdWx0OgogCQlpbnZhbGlkX3JlYWQgPSB0cnVlOwpAQCAtMTI2NCw2ICsx
MjY1LDkgQEAgc3RhdGljIGludCBwdmluZm9fbW1pb193cml0ZShzdHJ1Y3QgaW50ZWxfdmdwdSAq
dmdwdSwgdW5zaWduZWQgaW50IG9mZnNldCwKIAljYXNlIF92Z3RpZl9yZWcoZzJ2X25vdGlmeSk6
CiAJCWhhbmRsZV9nMnZfbm90aWZpY2F0aW9uKHZncHUsIGRhdGEpOwogCQlicmVhazsKKwljYXNl
IF92Z3RpZl9yZWcocHZfY2Fwcyk6CisJCURSTV9JTkZPKCJ2Z3B1IGlkPSVkIHB2IGNhcHMgPTB4
JXhcbiIsIHZncHUtPmlkLCBkYXRhKTsKKwkJYnJlYWs7CiAJLyogYWRkIHhob3QgYW5kIHlob3Qg
dG8gaGFuZGxlZCBsaXN0IHRvIGF2b2lkIGVycm9yIGxvZyAqLwogCWNhc2UgX3ZndGlmX3JlZyhj
dXJzb3JfeF9ob3QpOgogCWNhc2UgX3ZndGlmX3JlZyhjdXJzb3JfeV9ob3QpOgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L3ZncHUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d2dC92Z3B1LmMKaW5kZXggZDVhNmU0ZS4uOWUwMDk3OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Z0L3ZncHUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvdmdw
dS5jCkBAIC00Nyw2ICs0Nyw3IEBAIHZvaWQgcG9wdWxhdGVfcHZpbmZvX3BhZ2Uoc3RydWN0IGlu
dGVsX3ZncHUgKnZncHUpCiAJdmdwdV92cmVnX3QodmdwdSwgdmd0aWZfcmVnKHZndF9jYXBzKSkg
PSBWR1RfQ0FQU19GVUxMX1BQR1RUOwogCXZncHVfdnJlZ190KHZncHUsIHZndGlmX3JlZyh2Z3Rf
Y2FwcykpIHw9IFZHVF9DQVBTX0hXU1BfRU1VTEFUSU9OOwogCXZncHVfdnJlZ190KHZncHUsIHZn
dGlmX3JlZyh2Z3RfY2FwcykpIHw9IFZHVF9DQVBTX0hVR0VfR1RUOworCXZncHVfdnJlZ190KHZn
cHUsIHZndGlmX3JlZyh2Z3RfY2FwcykpIHw9IFZHVF9DQVBTX1BWOwogCiAJdmdwdV92cmVnX3Qo
dmdwdSwgdmd0aWZfcmVnKGF2YWlsX3JzLm1hcHBhYmxlX2dtYWRyLmJhc2UpKSA9CiAJCXZncHVf
YXBlcnR1cmVfZ21hZHJfYmFzZSh2Z3B1KTsKQEAgLTUyOSw2ICs1MzAsNyBAQCB2b2lkIGludGVs
X2d2dF9yZXNldF92Z3B1X2xvY2tlZChzdHJ1Y3QgaW50ZWxfdmdwdSAqdmdwdSwgYm9vbCBkbWxy
LAogCXN0cnVjdCBpbnRlbF9ndnQgKmd2dCA9IHZncHUtPmd2dDsKIAlzdHJ1Y3QgaW50ZWxfZ3Z0
X3dvcmtsb2FkX3NjaGVkdWxlciAqc2NoZWR1bGVyID0gJmd2dC0+c2NoZWR1bGVyOwogCWludGVs
X2VuZ2luZV9tYXNrX3QgcmVzZXR0aW5nX2VuZyA9IGRtbHIgPyBBTExfRU5HSU5FUyA6IGVuZ2lu
ZV9tYXNrOworCWludCBwdl9jYXBzID0gdmdwdV92cmVnX3QodmdwdSwgdmd0aWZfcmVnKHB2X2Nh
cHMpKTsKIAogCWd2dF9kYmdfY29yZSgiLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tXG4iKTsKIAlndnRfZGJnX2NvcmUoInJlc3NldGluZyB2Z3B1JWQsIGRtbHIgJWQs
IGVuZ2luZV9tYXNrICUwOHhcbiIsCkBAIC01NjAsNiArNTYyLDcgQEAgdm9pZCBpbnRlbF9ndnRf
cmVzZXRfdmdwdV9sb2NrZWQoc3RydWN0IGludGVsX3ZncHUgKnZncHUsIGJvb2wgZG1sciwKIAog
CQlpbnRlbF92Z3B1X3Jlc2V0X21taW8odmdwdSwgZG1scik7CiAJCXBvcHVsYXRlX3B2aW5mb19w
YWdlKHZncHUpOworCQl2Z3B1X3ZyZWdfdCh2Z3B1LCB2Z3RpZl9yZWcocHZfY2FwcykpID0gcHZf
Y2FwczsKIAkJaW50ZWxfdmdwdV9yZXNldF9kaXNwbGF5KHZncHUpOwogCiAJCWlmIChkbWxyKSB7
Ci0tIAoxLjguMy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
