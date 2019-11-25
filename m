Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E56A1088BD
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 07:40:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 431C689DD3;
	Mon, 25 Nov 2019 06:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D9289DD3
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 06:40:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Nov 2019 22:40:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,240,1571727600"; d="scan'208";a="206207859"
Received: from unknown (HELO localhost.localdomain) ([10.223.165.29])
 by fmsmga007.fm.intel.com with ESMTP; 24 Nov 2019 22:40:09 -0800
From: Ankit Navik <ankit.p.navik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2019 12:09:03 +0530
Message-Id: <1574663945-31742-2-git-send-email-ankit.p.navik@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574663945-31742-1-git-send-email-ankit.p.navik@intel.com>
References: <1574663945-31742-1-git-send-email-ankit.p.navik@intel.com>
Subject: [Intel-gfx] [PATCH v5 1/3] drm/i915: Get active pending request for
 given context
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
Cc: ankit.p.navik@intel.com, vipin.anand@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBnaXZlcyB1cyB0aGUgYWN0aXZlIHBlbmRpbmcgcmVxdWVzdCBjb3VudCB3aGlj
aCBpcyB5ZXQKdG8gYmUgc3VibWl0dGVkIHRvIHRoZSBHUFUuCgpWMjoKICogQ2hhbmdlIDY0LWJp
dCB0byBhdG9taWMgZm9yIHJlcXVlc3QgY291bnQuIChUdnJ0a28gVXJzdWxpbikKClYzOgogKiBS
ZW1vdmUgbXV0ZXggZm9yIHJlcXVlc3QgY291bnQuCiAqIFJlYmFzZS4KICogRml4ZXMgaGl0dGlu
ZyB1bmRlcmZsb3cgZm9yIHByZWRpY3RpdmUgcmVxdWVzdC4gKFR2cnRrbyBVcnN1bGluKQoKVjQ6
CiAqIFJlYmFzZS4KClY1OgogKiBSZWJhc2UuCgpDYzogVmlwaW4gQW5hbmQgPHZpcGluLmFuYW5k
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5raXQgTmF2aWsgPGFua2l0LnAubmF2aWtAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMg
ICAgICAgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0X3R5
cGVzLmggfCA1ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1
ZmZlci5jICAgIHwgMiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAg
ICAgICAgICAgICB8IDMgKysrCiA0IGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRleCA3YjAxZjQ2
Li4zZmQ4ZTczIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
Y29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0
LmMKQEAgLTQ2NCw2ICs0NjQsNyBAQCBpOTE1X2dlbV9jcmVhdGVfY29udGV4dChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwgdW5zaWduZWQgaW50IGZsYWdzKQogCX0KIAogCXRyYWNlX2k5
MTVfY29udGV4dF9jcmVhdGUoY3R4KTsKKwlhdG9taWNfc2V0KCZjdHgtPnJlcV9jbnQsIDApOwog
CiAJcmV0dXJuIGN0eDsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fY29udGV4dF90eXBlcy5oCmluZGV4IGZlOTdiOGIuLjZjYWE2YTIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0X3R5cGVzLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlwZXMuaApAQCAtMTc1LDYg
KzE3NSwxMSBAQCBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCB7CiAJICogcGVyIHZtLCB3aGljaCBt
YXkgYmUgb25lIHBlciBjb250ZXh0IG9yIHNoYXJlZCB3aXRoIHRoZSBnbG9iYWwgR1RUKQogCSAq
LwogCXN0cnVjdCByYWRpeF90cmVlX3Jvb3QgaGFuZGxlc192bWE7CisKKwkvKiogcmVxX2NudDog
dHJhY2tzIHRoZSBwZW5kaW5nIGNvbW1hbmRzLCBiYXNlZCBvbiB3aGljaCB3ZSBkZWNpZGUgdG8K
KwkgKiBnbyBmb3IgbG93L21lZGl1bS9oaWdoIGxvYWQgY29uZmlndXJhdGlvbiBvZiB0aGUgR1BV
LgorCSAqLworCWF0b21pY190IHJlcV9jbnQ7CiB9OwogCiAjZW5kaWYgLyogX19JOTE1X0dFTV9D
T05URVhUX1RZUEVTX0hfXyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9leGVjYnVmZmVyLmMKaW5kZXggZTk2OTAxOC4uOWQ5Mjg2ZCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0yNjQwLDYgKzI2NDAsOCBA
QCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJaWYgKGVi
LmJhdGNoLT5wcml2YXRlKQogCQlpbnRlbF9lbmdpbmVfcG9vbF9tYXJrX2FjdGl2ZShlYi5iYXRj
aC0+cHJpdmF0ZSwgZWIucmVxdWVzdCk7CiAKKwlhdG9taWNfaW5jKCZlYi5nZW1fY29udGV4dC0+
cmVxX2NudCk7CisKIAl0cmFjZV9pOTE1X3JlcXVlc3RfcXVldWUoZWIucmVxdWVzdCwgZWIuYmF0
Y2hfZmxhZ3MpOwogCWVyciA9IGViX3N1Ym1pdCgmZWIpOwogZXJyX3JlcXVlc3Q6CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IGQwMDg4ZDAuLjQ5MTFiNjMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0xNzA4LDYgKzE3MDgsOSBAQCBzdGF0aWMgdm9pZCBl
eGVjbGlzdHNfZGVxdWV1ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAKIAkJCQlz
dWJtaXQgPSB0cnVlOwogCQkJCWxhc3QgPSBycTsKKworCQkJCWlmIChhdG9taWNfcmVhZCgmcnEt
PmdlbV9jb250ZXh0LT5yZXFfY250KSA+IDApCisJCQkJCWF0b21pY19kZWMoJnJxLT5nZW1fY29u
dGV4dC0+cmVxX2NudCk7CiAJCQl9CiAJCX0KIAotLSAKMi43LjQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
