Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BB72B27C3
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 23:04:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 122F36E866;
	Fri, 13 Nov 2020 22:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F9FF6E86B
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 22:04:49 +0000 (UTC)
IronPort-SDR: jgQJbNZCryXdaG3cOYzZH0HEwkB9hFOhS/baTLEuwf++kvOwy7hAsavitUwDcfi7KOrS7GzJAi
 JvYKu0UXs+Mg==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="170709153"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="170709153"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 14:04:49 -0800
IronPort-SDR: aFgZPgUSORRjzfSijjBAps0QWYVqI+FJjsFdxweEGFWfmf8xm2AT2A71WnVSCSgDNsFT6rpvhi
 7jCvgU4FBvCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="339886730"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 13 Nov 2020 14:04:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 14 Nov 2020 00:04:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Nov 2020 00:03:51 +0200
Message-Id: <20201113220358.24794-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/23] drm/i915: Add planes affected by
 bigjoiner to the state
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2Ugc3VyZSBib3RoIHRoZSBiaWdqb2luZXIgIm1hc3RlciIgYW5kICJzbGF2ZSIgcGxhbmUgYXJl
CmluIHRoZSBzdGF0ZSB3aGVuZXZlciBlaXRoZXIgb2YgdGhlbSBpcyBpbiB0aGUgc3RhdGUuCgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
NDIgKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA0
NjU4NzcwOTc1ODIuLjExMThmZjczYzBkNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE1MDY5LDYgKzE1MDY5LDQ0IEBAIHN0YXRpYyBib29s
IGFjdGl2ZV9wbGFuZXNfYWZmZWN0c19taW5fY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQogCQlJU19JVllCUklER0UoZGV2X3ByaXYpIHx8IChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDExKTsKIH0KIAorc3RhdGljIGludCBpbnRlbF9jcnRjX2FkZF9iaWdqb2luZXJfcGxh
bmVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAorCQkJCQkgICBzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YywKKwkJCQkJICAgc3RydWN0IGludGVsX2NydGMgKm90aGVyKQoreworCWNv
bnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGU7CisJc3RydWN0IGludGVs
X3BsYW5lICpwbGFuZTsKKwl1OCBwbGFuZV9pZHMgPSAwOworCWludCBpOworCisJZm9yX2VhY2hf
bmV3X2ludGVsX3BsYW5lX2luX3N0YXRlKHN0YXRlLCBwbGFuZSwgcGxhbmVfc3RhdGUsIGkpIHsK
KwkJaWYgKHBsYW5lLT5waXBlID09IGNydGMtPnBpcGUpCisJCQlwbGFuZV9pZHMgfD0gQklUKHBs
YW5lLT5pZCk7CisJfQorCisJcmV0dXJuIGludGVsX2NydGNfYWRkX3BsYW5lc190b19zdGF0ZShz
dGF0ZSwgb3RoZXIsIHBsYW5lX2lkcyk7Cit9CisKK3N0YXRpYyBpbnQgaW50ZWxfYmlnam9pbmVy
X2FkZF9hZmZlY3RlZF9wbGFuZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCit7
CisJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7CisJc3RydWN0IGlu
dGVsX2NydGMgKmNydGM7CisJaW50IGk7CisKKwlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9z
dGF0ZShzdGF0ZSwgY3J0YywgY3J0Y19zdGF0ZSwgaSkgeworCQlpbnQgcmV0OworCisJCWlmICgh
Y3J0Y19zdGF0ZS0+Ymlnam9pbmVyKQorCQkJY29udGludWU7CisKKwkJcmV0ID0gaW50ZWxfY3J0
Y19hZGRfYmlnam9pbmVyX3BsYW5lcyhzdGF0ZSwgY3J0YywKKwkJCQkJCSAgICAgIGNydGNfc3Rh
dGUtPmJpZ2pvaW5lcl9saW5rZWRfY3J0Yyk7CisJCWlmIChyZXQpCisJCQlyZXR1cm4gcmV0Owor
CX0KKworCXJldHVybiAwOworfQorCiBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVja19wbGFu
ZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiB7CiAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOwpAQCAtMTUwODIs
NiArMTUxMjAsMTAgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2tfcGxhbmVzKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAK
KwlyZXQgPSBpbnRlbF9iaWdqb2luZXJfYWRkX2FmZmVjdGVkX3BsYW5lcyhzdGF0ZSk7CisJaWYg
KHJldCkKKwkJcmV0dXJuIHJldDsKKwogCWZvcl9lYWNoX25ld19pbnRlbF9wbGFuZV9pbl9zdGF0
ZShzdGF0ZSwgcGxhbmUsIHBsYW5lX3N0YXRlLCBpKSB7CiAJCXJldCA9IGludGVsX3BsYW5lX2F0
b21pY19jaGVjayhzdGF0ZSwgcGxhbmUpOwogCQlpZiAocmV0KSB7Ci0tIAoyLjI2LjIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
