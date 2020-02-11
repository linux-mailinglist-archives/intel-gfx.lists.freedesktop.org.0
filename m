Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1507159651
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 18:39:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4AC46F3F3;
	Tue, 11 Feb 2020 17:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46E286F3E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 17:39:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 09:36:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="380503917"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga004.jf.intel.com with ESMTP; 11 Feb 2020 09:36:50 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 22:55:30 +0530
Message-Id: <20200211172532.14287-6-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200211172532.14287-1-anshuman.gupta@intel.com>
References: <20200211172532.14287-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/7] drm/i915: Get first crtc instead of
 PIPE_A crtc
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aW50ZWxfcGxhbmVfZmJfbWF4X3N0cmlkZSBzaG91bGQgcmV0dXJuIHRoZSBtYXggc3RyaWRlIG9m
CnByaW1hcnkgcGxhbmUgZm9yIGZpcnN0IGF2YWlsYWJsZSBwaXBlIGluIGludGVsIGRldmljZSBp
bmZvCnBpcGVfbWFzay4KU2ltaWxhcmx5IGdsa19mb3JjZV9hdWRpb19jZGNsaygpIHNob3VsZCBh
bHNvIHVzZSB0aGUgZmlyc3QKYXZhaWxhYmxlIENSVEMgaW5zdGVhZCBvZiBwaXBlICdBJyBjcnRj
IHRvIGZvcmNlIHRoZSBjZGNsawpjaGFuZ2VzLgoKY2hhbmdlcyBzaW5jZSBSRkM6Ci0gSW50cm9k
dWNlZCBhIGhlbHBlciB0byBnZXQgZmlyc3QgaW50ZWxfY3J0YyBpbnRlbF9nZXRfZmlyc3RfY3J0
Yy4gW1ZpbGxlXQp2MToKLSBVc2VkIGludGVsX2dldF9maXJzdF9jcnRjKCkgaW5zdGVhZCBvZiBQ
SVBFX0EgY3J0YyBpbgogIGdsa19mb3JjZV9hdWRpb19jZGNsaygpLiBbVmlsbGVdCgpDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMgICAgICAgICB8IDIgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICAgICAgIHwgNSArKystLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCA2ICsr
KysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYwppbmRleCAzMGZiN2M4
ODdmZjAuLjE5YmYyMDYwMzdjMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdWRpby5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXVkaW8uYwpAQCAtODQ0LDcgKzg0NCw3IEBAIHN0YXRpYyB2b2lkIGdsa19mb3JjZV9hdWRp
b19jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJc3RydWN0IGludGVs
X2NydGMgKmNydGM7CiAJaW50IHJldDsKIAotCWNydGMgPSBpbnRlbF9nZXRfY3J0Y19mb3JfcGlw
ZShkZXZfcHJpdiwgUElQRV9BKTsKKwljcnRjID0gaW50ZWxfZ2V0X2ZpcnN0X2NydGMoZGV2X3By
aXYpOwogCWlmICghY3J0YykKIAkJcmV0dXJuOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDViYTBiNDBmYmZkZS4uNmZkYWViMDE5ZmVmIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMjcx
NSw5ICsyNzE1LDEwIEBAIHUzMiBpbnRlbF9wbGFuZV9mYl9tYXhfc3RyaWRlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogCS8qCiAJICogV2UgYXNzdW1lIHRoZSBwcmltYXJ5
IHBsYW5lIGZvciBwaXBlIEEgaGFzCi0JICogdGhlIGhpZ2hlc3Qgc3RyaWRlIGxpbWl0cyBvZiB0
aGVtIGFsbC4KKwkgKiB0aGUgaGlnaGVzdCBzdHJpZGUgbGltaXRzIG9mIHRoZW0gYWxsLAorCSAq
IGlmIGluIGNhc2UgcGlwZSBBIGlzIGRpc2FibGVkLCB1c2UgdGhlIGZpcnN0IHBpcGUgZnJvbSBw
aXBlX21hc2suCiAJICovCi0JY3J0YyA9IGludGVsX2dldF9jcnRjX2Zvcl9waXBlKGRldl9wcml2
LCBQSVBFX0EpOworCWNydGMgPSBpbnRlbF9nZXRfZmlyc3RfY3J0YyhkZXZfcHJpdik7CiAJaWYg
KCFjcnRjKQogCQlyZXR1cm4gMDsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRleCBkMzU5ZjE2MzZiYTguLjM1OWVhYTY3MDNh
OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmgKQEAgLTE0MDMsNiArMTQwMywxMiBAQCB2bHZfcGlwZV90b19jaGFubmVsKGVudW0g
cGlwZSBwaXBlKQogCX0KIH0KIAorc3RhdGljIGlubGluZSBzdHJ1Y3QgaW50ZWxfY3J0YyAqCitp
bnRlbF9nZXRfZmlyc3RfY3J0YyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit7
CisJcmV0dXJuIHRvX2ludGVsX2NydGMoZHJtX2NydGNfZnJvbV9pbmRleCgmZGV2X3ByaXYtPmRy
bSwgMCkpOworfQorCiBzdGF0aWMgaW5saW5lIHN0cnVjdCBpbnRlbF9jcnRjICoKIGludGVsX2dl
dF9jcnRjX2Zvcl9waXBlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBw
aXBlIHBpcGUpCiB7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
