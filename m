Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 271A1253D53
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Aug 2020 07:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 532D76E048;
	Thu, 27 Aug 2020 05:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0B476E048
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 05:52:48 +0000 (UTC)
IronPort-SDR: F2VVkImzM80x7k4agGCUL6i4Ph/lLbP9aY+aT3hYat6x4rM5nQMvy+e7wvIZ4Vr0igvsQBkErn
 PqKPf12NBFow==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="135975488"
X-IronPort-AV: E=Sophos;i="5.76,358,1592895600"; d="scan'208";a="135975488"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 22:52:48 -0700
IronPort-SDR: 3aQ8uKRyT+7A86EePfEdv9tiAmJsj8QhZSvB1LUk0TUza/bBsaq8Nbg/qERW0+cXKXd08JwjiZ
 CiNaCDB1WMFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,358,1592895600"; d="scan'208";a="403301003"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by fmsmga001.fm.intel.com with ESMTP; 26 Aug 2020 22:52:47 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Aug 2020 13:51:29 +0800
Message-Id: <20200827055129.26566-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/fbc: disable FBC on Nightfury board
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>, Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VzdG9tZXIgcmVwb3J0IHJhbmRvbSBkaXNwbGF5IGZsaWNrZXIgaXNzdWUgb24gTmlnaHRmdXJ5
IGJvYXJkLgpBbmQgd2UgZm91bmQgdGhpcyBwcm9ibGVtIG1pZ2h0IGJlIGNhdXNlZCBieSBWVC1k
IGFuZCBGQkMgYXJlCmJvdGggZW5hYmxlZC4gQWNjb3JkaW5nIHRvIHNpZ2h0aW5nIHJlcG9ydCwg
aXQgcmVjb21tZW5kIHRvIHR1cm4KZHJtL2k5MTUvZmJjOiBkaXNhYmxlIEZCQyBvbiBOaWdodGZ1
cnkgYm9hcmQKCkN1c3RvbWVyIHJlcG9ydCByYW5kb20gZGlzcGxheSBmbGlja2VyIGlzc3VlIG9u
IE5pZ2h0ZnVyeSBib2FyZC4KQW5kIHdlIGZvdW5kIHRoaXMgcHJvYmxlbSBtaWdodCBiZSBjYXVz
ZWQgYnkgVlQtZCBhbmQgRkJDIGFyZQpib3RoIGVuYWJsZWQuIEFjY29yZGluZyB0byBzaWdodGlu
ZyByZXBvcnQsIGl0IHJlY29tbWVuZCB0byB0dXJuCkZCQyBvZmYgdG8gd29ya2Fyb3VuZCB0aGlz
IGtpbmQgb2YgaXNzdWUuCgpUaGlzIGNoYW5nZSByZWZlciB0byBETUkgQk9BUkRfVkVORE9SIGFu
ZCBCT0FSRF9OQU1FIGluZm9ybWF0aW9uCnRvIGRpc2FibGUgRkJDLgoKQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJv
ZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxp
bnV4LmludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNj
OiBXaWxsaWFtIFRzZW5nIDx3aWxsaWFtLnRzZW5nQGludGVsLmNvbT4KQ2M6IENvb3BlciBDaGlv
dSA8Y29vcGVyLmNoaW91QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTGVlIFNoYXduIEMgPHNo
YXduLmMubGVlQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5jIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIy
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpp
bmRleCAzMjdhZjQyOGQ3M2YuLjIwNjYwZmRiYWIzNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jCkBAIC0zOSw2ICszOSw3IEBACiAgKi8KIAogI2luY2x1ZGUgPGRy
bS9kcm1fZm91cmNjLmg+CisjaW5jbHVkZSA8bGludXgvZG1pLmg+CiAKICNpbmNsdWRlICJpOTE1
X2Rydi5oIgogI2luY2x1ZGUgImk5MTVfdHJhY2UuaCIKQEAgLTE0MzksNiArMTQ0MCwyNCBAQCBz
dGF0aWMgaW50IGludGVsX3Nhbml0aXplX2ZiY19vcHRpb24oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogCXJldHVybiAwOwogfQogCitzdGF0aWMgaW50IGludGVsX2ZiY192dGRf
Y2FsbGJhY2soY29uc3Qgc3RydWN0IGRtaV9zeXN0ZW1faWQgKmlkKQoreworCURSTV9ERUJVR19L
TVMoIkRpc2FibGluZyBGQkMgdG8gcHJldmVudCBzY3JlZW4gZmxpY2tlciBvbiAlcyBkZXZpY2Vc
biIsIGlkLT5pZGVudCk7CisJcmV0dXJuIDE7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZG1p
X3N5c3RlbV9pZCBpbnRlbF9mYmNfdnRkX2RldGVjdFtdID0geworCXsKKwkJLmNhbGxiYWNrID0g
aW50ZWxfZmJjX3Z0ZF9jYWxsYmFjaywKKwkJLmlkZW50ID0gIkdvb2dsZSBOaWdodGZ1cnkiLAor
CQkubWF0Y2hlcyA9IHsKKwkJCURNSV9NQVRDSChETUlfQk9BUkRfVkVORE9SLCAiR29vZ2xlIiks
CisJCQlETUlfTUFUQ0goRE1JX0JPQVJEX05BTUUsICJOaWdodGZ1cnkiKSwKKwkJfSwKKwl9LAor
CXsgfQorfTsKKwogc3RhdGljIGJvb2wgbmVlZF9mYmNfdnRkX3dhKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIHsKIAkvKiBXYUZiY1R1cm5PZmZGYmNXaGVuSHlwZXJWaXNvcklz
VXNlZDpza2wsYnh0ICovCkBAIC0xNDUwLDYgKzE0NjksOSBAQCBzdGF0aWMgYm9vbCBuZWVkX2Zi
Y192dGRfd2Eoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlyZXR1cm4gdHJ1
ZTsKIAl9CiAKKwlpZiAoZG1pX2NoZWNrX3N5c3RlbShpbnRlbF9mYmNfdnRkX2RldGVjdCkpCisJ
CXJldHVybiB0cnVlOworCiAJcmV0dXJuIGZhbHNlOwogfQogCi0tIAoyLjE3LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
