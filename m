Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E88013C616
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 15:32:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4056EAB4;
	Wed, 15 Jan 2020 14:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 559F16EAB3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 14:32:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 06:32:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="425045302"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga006.fm.intel.com with ESMTP; 15 Jan 2020 06:32:49 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jan 2020 16:30:30 +0200
Message-Id: <20200115143033.28284-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200115143033.28284-1-stanislav.lisovskiy@intel.com>
References: <20200115143033.28284-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v12 2/5] drm/i915: Move dbuf slice update to
 proper place
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

Q3VycmVudCBEQnVmIHNsaWNlcyB1cGRhdGUgd2Fzbid0IGRvbmUgaW4gcHJvcGVyCnBsYWNlLCBl
c3BlY2lhbGx5IGl0cyAicG9zdCIgcGFydCwgd2hpY2ggc2hvdWxkCmRpc2FibGUgdGhvc2Ugb25s
eSBvbmNlIHZibGFuayBoYWQgcGFzc2VkIGFuZAphbGwgb3RoZXIgY2hhbmdlcyBhcmUgY29tbWl0
dGVkLgoKdjI6IEZpeCB0byB1c2UgZGV2X3ByaXYgYW5kIGludGVsX2F0b21pY19zdGF0ZQogICAg
aW5zdGVhZCBvZiBza2xfZGRiX3ZhbHVlcwogICAgKHRvIGJlIG51a2VkIGluIFZpbGxlcyBwYXRj
aCkKCnYzOiBSZW5hbWVkICJlbmFibGVkX3NsaWNlcyIgdG8gImVuYWJsZWRfZGJ1Zl9zbGljZXNf
bnVtIgogICAgKE1hdHQgUm9wZXIpCgp2NDogLSBSZWJhc2UgYWdhaW5zdCBkcm0tdGlwLgogICAg
LSBNb3ZlIHBvc3RfdXBkYXRlIGNsb3NlciB0byBvcHRpbWl6ZV93YXRlcm1hcmtzLAogICAgICB0
byBwcmV2ZW50IHVubmVlZGVkIG5vaXNlIGZyb20gdW5kZXJydW4gcmVwb3J0aW5nCiAgICAgIChW
aWxsZSBTeXJqw6Rsw6QpCgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5p
c2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgMzcgKysrKysrKysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyOCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZWVlOWUzZDljNzJkLi44YjA2ZWYy
OTY5M2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CkBAIC0xNTExNiwxMyArMTUxMTYsMzMgQEAgc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX3RyYW5z
X3BvcnRfc3luY19jcnRjcyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJCQkgICAgICAgc3Rh
dGUpOwogfQogCitzdGF0aWMgdm9pZCBpY2xfZGJ1Zl9zbGljZV9wcmVfdXBkYXRlKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKKwl1OCBod19lbmFibGVkX3NsaWNl
cyA9IGRldl9wcml2LT5lbmFibGVkX2RidWZfc2xpY2VzX251bTsKKwl1OCByZXF1aXJlZF9zbGlj
ZXMgPSBzdGF0ZS0+ZW5hYmxlZF9kYnVmX3NsaWNlc19udW07CisKKwkvKiBJZiAybmQgREJ1ZiBz
bGljZSByZXF1aXJlZCwgZW5hYmxlIGl0IGhlcmUgKi8KKwlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMSAmJiByZXF1aXJlZF9zbGljZXMgPiBod19lbmFibGVkX3NsaWNlcykKKwkJaWNsX2Ri
dWZfc2xpY2VzX3VwZGF0ZShkZXZfcHJpdiwgcmVxdWlyZWRfc2xpY2VzKTsKK30KKworc3RhdGlj
IHZvaWQgaWNsX2RidWZfc2xpY2VfcG9zdF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkx
NShzdGF0ZS0+YmFzZS5kZXYpOworCXU4IGh3X2VuYWJsZWRfc2xpY2VzID0gZGV2X3ByaXYtPmVu
YWJsZWRfZGJ1Zl9zbGljZXNfbnVtOworCXU4IHJlcXVpcmVkX3NsaWNlcyA9IHN0YXRlLT5lbmFi
bGVkX2RidWZfc2xpY2VzX251bTsKKworCS8qIElmIDJuZCBEQnVmIHNsaWNlIGlzIG5vIG1vcmUg
cmVxdWlyZWQgZGlzYWJsZSBpdCAqLworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYm
IHJlcXVpcmVkX3NsaWNlcyA8IGh3X2VuYWJsZWRfc2xpY2VzKQorCQlpY2xfZGJ1Zl9zbGljZXNf
dXBkYXRlKGRldl9wcml2LCByZXF1aXJlZF9zbGljZXMpOworfQorCiBzdGF0aWMgdm9pZCBza2xf
Y29tbWl0X21vZGVzZXRfZW5hYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkK
IHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5i
YXNlLmRldik7CiAJc3RydWN0IGludGVsX2NydGMgKmNydGM7CiAJc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKm9sZF9jcnRjX3N0YXRlLCAqbmV3X2NydGNfc3RhdGU7Ci0JdTggaHdfZW5hYmxlZF9z
bGljZXMgPSBkZXZfcHJpdi0+ZW5hYmxlZF9kYnVmX3NsaWNlc19udW07Ci0JdTggcmVxdWlyZWRf
c2xpY2VzID0gc3RhdGUtPmVuYWJsZWRfZGJ1Zl9zbGljZXNfbnVtOwogCXN0cnVjdCBza2xfZGRi
X2VudHJ5IGVudHJpZXNbSTkxNV9NQVhfUElQRVNdID0ge307CiAJY29uc3QgdTggbnVtX3BpcGVz
ID0gSU5URUxfTlVNX1BJUEVTKGRldl9wcml2KTsKIAl1OCB1cGRhdGVfcGlwZXMgPSAwLCBtb2Rl
c2V0X3BpcGVzID0gMDsKQEAgLTE1MTQxLDEwICsxNTE2MSw2IEBAIHN0YXRpYyB2b2lkIHNrbF9j
b21taXRfbW9kZXNldF9lbmFibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQog
CQl9CiAJfQogCi0JLyogSWYgMm5kIERCdWYgc2xpY2UgcmVxdWlyZWQsIGVuYWJsZSBpdCBoZXJl
ICovCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgcmVxdWlyZWRfc2xpY2VzID4g
aHdfZW5hYmxlZF9zbGljZXMpCi0JCWljbF9kYnVmX3NsaWNlc191cGRhdGUoZGV2X3ByaXYsIHJl
cXVpcmVkX3NsaWNlcyk7Ci0KIAkvKgogCSAqIFdoZW5ldmVyIHRoZSBudW1iZXIgb2YgYWN0aXZl
IHBpcGVzIGNoYW5nZXMsIHdlIG5lZWQgdG8gbWFrZSBzdXJlIHdlCiAJICogdXBkYXRlIHRoZSBw
aXBlcyBpbiB0aGUgcmlnaHQgb3JkZXIgc28gdGhhdCB0aGVpciBkZGIgYWxsb2NhdGlvbnMKQEAg
LTE1MjQ2LDkgKzE1MjYyLDYgQEAgc3RhdGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJs
ZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAKIAlXQVJOX09OKG1vZGVzZXRf
cGlwZXMpOwogCi0JLyogSWYgMm5kIERCdWYgc2xpY2UgaXMgbm8gbW9yZSByZXF1aXJlZCBkaXNh
YmxlIGl0ICovCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgcmVxdWlyZWRfc2xp
Y2VzIDwgaHdfZW5hYmxlZF9zbGljZXMpCi0JCWljbF9kYnVmX3NsaWNlc191cGRhdGUoZGV2X3By
aXYsIHJlcXVpcmVkX3NsaWNlcyk7CiB9CiAKIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19oZWxw
ZXJfZnJlZV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCkBAIC0xNTM3
OCw2ICsxNTM5MSw5IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAlpZiAoc3RhdGUtPm1vZGVzZXQpCiAJCWlu
dGVsX2VuY29kZXJzX3VwZGF0ZV9wcmVwYXJlKHN0YXRlKTsKIAorCS8qIEVuYWJsZSBhbGwgbmV3
IHNsaWNlcywgd2UgbWlnaHQgbmVlZCAqLworCWljbF9kYnVmX3NsaWNlX3ByZV91cGRhdGUoc3Rh
dGUpOworCiAJLyogTm93IGVuYWJsZSB0aGUgY2xvY2tzLCBwbGFuZSwgcGlwZSwgYW5kIGNvbm5l
Y3RvcnMgdGhhdCB3ZSBzZXQgdXAuICovCiAJZGV2X3ByaXYtPmRpc3BsYXkuY29tbWl0X21vZGVz
ZXRfZW5hYmxlcyhzdGF0ZSk7CiAKQEAgLTE1NDM0LDYgKzE1NDUwLDkgQEAgc3RhdGljIHZvaWQg
aW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
KQogCQkJZGV2X3ByaXYtPmRpc3BsYXkub3B0aW1pemVfd2F0ZXJtYXJrcyhzdGF0ZSwgY3J0Yyk7
CiAJfQogCisJLyogRGlzYWJsZSBhbGwgc2xpY2VzLCB3ZSBkb24ndCBuZWVkICovCisJaWNsX2Ri
dWZfc2xpY2VfcG9zdF91cGRhdGUoc3RhdGUpOworCiAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2Ny
dGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwg
aSkgewogCQlpbnRlbF9wb3N0X3BsYW5lX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7CiAKLS0gCjIuMjQu
MS40ODUuZ2FkMDVhM2Q4ZTUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
