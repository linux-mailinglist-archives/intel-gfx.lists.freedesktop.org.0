Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EADC6151A31
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 13:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 612F66E7F5;
	Tue,  4 Feb 2020 12:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8F426E7F5
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 12:01:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 03:39:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="225481721"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga008.fm.intel.com with ESMTP; 04 Feb 2020 03:39:42 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 16:59:21 +0530
Message-Id: <20200204112927.17391-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200204112927.17391-1-anshuman.gupta@intel.com>
References: <20200204112927.17391-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Iterate over pipe and skip the
 disabled one
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

SXQgc2hvdWxkIG5vdCBiZSBhc3N1bWVkIHRoYXQgYSBkaXNhYmxlZCBkaXNwbGF5IHBpcGUgd2ls
bCBiZQphbHdheXMgbGFzdCB0aGUgcGlwZS4KZm9yX2VhY2hfcGlwZSgpIHNob3VsZCBpdGVyYXRl
IG92ZXIgSTkxNV9NQVhfUElQRVMgYW5kIGNoZWNrCmZvciB0aGUgZGlzYWJsZWQgcGlwZSBhbmQg
c2tpcCB0aGF0IHBpcGUgc28gdGhhdCBpdCBzaG91bGQgbm90CmluaXRpYWxpemUgdGhlIGludGVs
IGNydGMgZm9yIGFueSBkaXNhYmxlZCBwaXBlcy4KCkJlbG93IGNvbXBpbGF0aW9uIGVycm9yIG5l
ZWQgdG8gYmUgaGFuZGxlIGR1ZSB0byBjaGFuZ2UgaW4KZm9yX2VhY2hfcGlwZSgpIG1hY3JvLgoi
c3VnZ2VzdCBleHBsaWNpdCBicmFjZXMgdG8gYXZvaWQgYW1iaWd1b3VzIOKAmGVsc2XigJkgWy1X
ZXJyb3I9ZGFuZ2xpbmctZWxzZV0iCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFu
Lmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuaCB8IDUgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgICAg
ICAgICAgICAgIHwgNiArKysrLS0KIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmgKaW5kZXggMDI4YWFiNzI4NTE0Li40NzgxM2E1MGFkZDQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC0zMTIsMTAgKzMxMiwxMSBAQCBl
bnVtIHBoeV9maWEgewogfTsKIAogI2RlZmluZSBmb3JfZWFjaF9waXBlKF9fZGV2X3ByaXYsIF9f
cCkgXAotCWZvciAoKF9fcCkgPSAwOyAoX19wKSA8IElOVEVMX05VTV9QSVBFUyhfX2Rldl9wcml2
KTsgKF9fcCkrKykKKwlmb3IgKChfX3ApID0gMDsgKF9fcCkgPCBJOTE1X01BWF9QSVBFUzsgKF9f
cCkrKykgXAorCQlmb3JfZWFjaF9pZigoSU5URUxfSU5GTyhfX2Rldl9wcml2KS0+cGlwZV9tYXNr
KSAmIEJJVChfX3ApKQogCiAjZGVmaW5lIGZvcl9lYWNoX3BpcGVfbWFza2VkKF9fZGV2X3ByaXYs
IF9fcCwgX19tYXNrKSBcCi0JZm9yICgoX19wKSA9IDA7IChfX3ApIDwgSU5URUxfTlVNX1BJUEVT
KF9fZGV2X3ByaXYpOyAoX19wKSsrKSBcCisJZm9yX2VhY2hfcGlwZShfX2Rldl9wcml2LCBfX3Ap
IFwKIAkJZm9yX2VhY2hfaWYoKF9fbWFzaykgJiBCSVQoX19wKSkKIAogI2RlZmluZSBmb3JfZWFj
aF9jcHVfdHJhbnNjb2Rlcl9tYXNrZWQoX19kZXZfcHJpdiwgX190LCBfX21hc2spIFwKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jCmluZGV4IDk0Y2IyNWFjNTA0ZC4uMjJlY2Q1YmM0MDdlIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMKQEAgLTE3MzUsMTEgKzE3MzUsMTIgQEAgc3RhdGljIHZvaWQgaWJ4
X2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIHBjaF9p
aXIpCiAJaWYgKHBjaF9paXIgJiBTREVfUE9JU09OKQogCQlEUk1fRVJST1IoIlBDSCBwb2lzb24g
aW50ZXJydXB0XG4iKTsKIAotCWlmIChwY2hfaWlyICYgU0RFX0ZESV9NQVNLKQorCWlmIChwY2hf
aWlyICYgU0RFX0ZESV9NQVNLKSB7CiAJCWZvcl9lYWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUpCiAJ
CQlEUk1fREVCVUdfRFJJVkVSKCIgIHBpcGUgJWMgRkRJIElJUjogMHglMDh4XG4iLAogCQkJCQkg
cGlwZV9uYW1lKHBpcGUpLAogCQkJCQkgSTkxNV9SRUFEKEZESV9SWF9JSVIocGlwZSkpKTsKKwl9
CiAKIAlpZiAocGNoX2lpciAmIChTREVfVFJBTlNCX0NSQ19ET05FIHwgU0RFX1RSQU5TQV9DUkNf
RE9ORSkpCiAJCURSTV9ERUJVR19EUklWRVIoIlBDSCB0cmFuc2NvZGVyIENSQyBkb25lIGludGVy
cnVwdFxuIik7CkBAIC0xODE4LDExICsxODE5LDEyIEBAIHN0YXRpYyB2b2lkIGNwdF9pcnFfaGFu
ZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBwY2hfaWlyKQogCWlm
IChwY2hfaWlyICYgU0RFX0FVRElPX0NQX0NIR19DUFQpCiAJCURSTV9ERUJVR19EUklWRVIoIkF1
ZGlvIENQIGNoYW5nZSBpbnRlcnJ1cHRcbiIpOwogCi0JaWYgKHBjaF9paXIgJiBTREVfRkRJX01B
U0tfQ1BUKQorCWlmIChwY2hfaWlyICYgU0RFX0ZESV9NQVNLX0NQVCkgewogCQlmb3JfZWFjaF9w
aXBlKGRldl9wcml2LCBwaXBlKQogCQkJRFJNX0RFQlVHX0RSSVZFUigiICBwaXBlICVjIEZESSBJ
SVI6IDB4JTA4eFxuIiwKIAkJCQkJIHBpcGVfbmFtZShwaXBlKSwKIAkJCQkJIEk5MTVfUkVBRChG
RElfUlhfSUlSKHBpcGUpKSk7CisJfQogCiAJaWYgKHBjaF9paXIgJiBTREVfRVJST1JfQ1BUKQog
CQljcHRfc2Vycl9pbnRfaGFuZGxlcihkZXZfcHJpdik7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
