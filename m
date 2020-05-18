Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBE51D7872
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 14:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5272C89D58;
	Mon, 18 May 2020 12:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29F4889D02
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 12:23:06 +0000 (UTC)
IronPort-SDR: 5y9oPni2JLgxYFNYBXBEIKThwIuwNcuNPPUueaq1n4eMKQh7+DXkaiEzWKKpAkVvoPPHVFwe8e
 pVwY9UbQbQNw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 05:23:05 -0700
IronPort-SDR: 8KmMSQdhFXSoCgbkPCHfFHvaOWChH33HCIBnEwZ8eh0ZeGBXmsV+8p1tZioRHkb6BVoZEMDgyN
 dyRwyNyw3XeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="373368629"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 18 May 2020 05:23:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 May 2020 15:23:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 15:23:00 +0300
Message-Id: <20200518122303.28083-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] Revert "drm/i915: Clean up dbuf debugs
 during .atomic_check()"
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRi
dWYgc2xpY2UgdHJhY2tpbmcgYnVzdGVkIGFjcm9zcyBydW50aW1lIFBNLiBCYWNrIHRvIHRoZQpk
cmF3aW5nIGJvYXJkLgoKVGhpcyByZXZlcnRzIGNvbW1pdCA3MGIxYTI2ZjI5OWM3MjljYzFhNTA5
OTM3NGNjMDI1NjhiMDVlYzdkLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jIHwgMjYgKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmlu
ZGV4IGEyMWUzNmVkMWE3Ny4uZDQwZDIyZWI2NWRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMK
QEAgLTQxMDUsNiArNDEwNSwxMCBAQCBza2xfZGRiX2dldF9waXBlX2FsbG9jYXRpb25fbGltaXRz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkgKi8KIAlkYnVmX3NsaWNlX21h
c2sgPSBza2xfY29tcHV0ZV9kYnVmX3NsaWNlcyhjcnRjX3N0YXRlLCBhY3RpdmVfcGlwZXMpOwog
CisJRFJNX0RFQlVHX0tNUygiREJ1ZiBzbGljZSBtYXNrICV4IHBpcGUgJWMgYWN0aXZlIHBpcGVz
ICV4XG4iLAorCQkgICAgICBkYnVmX3NsaWNlX21hc2ssCisJCSAgICAgIHBpcGVfbmFtZShmb3Jf
cGlwZSksIGFjdGl2ZV9waXBlcyk7CisKIAkvKgogCSAqIEZpZ3VyZSBvdXQgYXQgd2hpY2ggREJ1
ZiBzbGljZSB3ZSBzdGFydCwgaS5lIGlmIHdlIHN0YXJ0IGF0IERidWYgUzIKIAkgKiBhbmQgc2xp
Y2Ugc2l6ZSBpcyAxMDI0LCB0aGUgb2Zmc2V0IHdvdWxkIGJlIDEwMjQKQEAgLTQxODcsMTAgKzQx
OTEsOCBAQCBza2xfZGRiX2dldF9waXBlX2FsbG9jYXRpb25fbGltaXRzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAlhbGxvYy0+c3RhcnQgPSBvZmZzZXQgKyBzdGFydDsKIAlh
bGxvYy0+ZW5kID0gb2Zmc2V0ICsgZW5kOwogCi0JZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0s
Ci0JCSAgICAiW0NSVEM6JWQ6JXNdIGRidWYgc2xpY2VzIDB4JXgsIGRkYiAoJWQgLSAlZCksIGFj
dGl2ZSBwaXBlcyAweCV4XG4iLAotCQkgICAgZm9yX2NydGMtPmJhc2UuaWQsIGZvcl9jcnRjLT5u
YW1lLAotCQkgICAgZGJ1Zl9zbGljZV9tYXNrLCBhbGxvYy0+c3RhcnQsIGFsbG9jLT5lbmQsIGFj
dGl2ZV9waXBlcyk7CisJRFJNX0RFQlVHX0tNUygiUGlwZSAlZCBkZGIgJWQtJWRcbiIsIGZvcl9w
aXBlLAorCQkgICAgICBhbGxvYy0+c3RhcnQsIGFsbG9jLT5lbmQpOwogCiAJcmV0dXJuIDA7CiB9
CkBAIC01NzA0LDEwICs1NzA2LDcgQEAgc2tsX2RkYl9hZGRfYWZmZWN0ZWRfcGxhbmVzKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKIHN0YXRpYyBpbnQKIHNr
bF9jb21wdXRlX2RkYihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKLQlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7
Ci0JY29uc3Qgc3RydWN0IGludGVsX2RidWZfc3RhdGUgKm9sZF9kYnVmX3N0YXRlOwotCWNvbnN0
IHN0cnVjdCBpbnRlbF9kYnVmX3N0YXRlICpuZXdfZGJ1Zl9zdGF0ZTsKLQljb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGU7CisJc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKm9sZF9jcnRjX3N0YXRlOwogCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19z
dGF0ZTsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKIAlpbnQgcmV0LCBpOwpAQCAtNTcyNCwx
NyArNTcyMyw2IEBAIHNrbF9jb21wdXRlX2RkYihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSkKIAkJCXJldHVybiByZXQ7CiAJfQogCi0Jb2xkX2RidWZfc3RhdGUgPSBpbnRlbF9hdG9t
aWNfZ2V0X29sZF9kYnVmX3N0YXRlKHN0YXRlKTsKLQluZXdfZGJ1Zl9zdGF0ZSA9IGludGVsX2F0
b21pY19nZXRfbmV3X2RidWZfc3RhdGUoc3RhdGUpOwotCi0JaWYgKG5ld19kYnVmX3N0YXRlICYm
Ci0JICAgIG5ld19kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcyAhPSBvbGRfZGJ1Zl9zdGF0ZS0+
ZW5hYmxlZF9zbGljZXMpCi0JCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAotCQkJICAgICJF
bmFibGVkIGRidWYgc2xpY2VzIDB4JXggLT4gMHgleCAob3V0IG9mICVkIGRidWYgc2xpY2VzKVxu
IiwKLQkJCSAgICBvbGRfZGJ1Zl9zdGF0ZS0+ZW5hYmxlZF9zbGljZXMsCi0JCQkgICAgbmV3X2Ri
dWZfc3RhdGUtPmVuYWJsZWRfc2xpY2VzLAotCQkJICAgIElOVEVMX0lORk8oZGV2X3ByaXYpLT5u
dW1fc3VwcG9ydGVkX2RidWZfc2xpY2VzKTsKLQogCXJldHVybiAwOwogfQogCi0tIAoyLjI2LjIK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
