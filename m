Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7CD618E5
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 03:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A33989971;
	Mon,  8 Jul 2019 01:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B1A189970;
 Mon,  8 Jul 2019 01:35:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jul 2019 18:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,464,1557212400"; d="scan'208";a="173131245"
Received: from xzhan34-mobl3.bj.intel.com ([10.238.154.53])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Jul 2019 18:35:34 -0700
From: Xiaolin Zhang <xiaolin.zhang@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 09:35:14 +0800
Message-Id: <1562549722-27046-2-git-send-email-xiaolin.zhang@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562549722-27046-1-git-send-email-xiaolin.zhang@intel.com>
References: <1562549722-27046-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] [PATCH v7 1/9] drm/i915: introduced vgpu pv capability
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
Cc: intel-gvt-dev@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

cHYgY2FwYWJpbGl0eSBmb3IgdmdwdSB3YXMgaW50cm9kdWNlZCBieSBwdl9jYXBzIGluIHN0cnVj
dAppOTE1X3ZpcnR1YWxfZ3B1IGFuZCBhIG5ldyBwdl9jYXBzIHJlZ2lzdGVyIGZvciBob3N0IEdW
VAp3YXMgZGVmaW5lZCBpbiBzdHJ1Y3Qgdmd0X2lmIGZvciB2Z3B1IHB2IG9wdGltaXphdGlvbi4K
CmJvdGggb2YgdGhlbSBhcmUgdXNlZCB0byBjb250cm9sIGRpZmZlcmVudCBmZWF0dXJlIHB2IG9w
dGltaXphdGlvbgpzdXBwb3J0ZWQgYW5kIGltcGxlbWVudGVkIGJ5IGJvdGggZ3Vlc3QgYW5kIGhv
c3QuCgpUaGVzZSBmaWVsZHMgYXJlIGRlZmF1bHQgemVybywgbm8gYW55IHB2IGZlYXR1cmUgZW5h
YmxlZC4KCml0IGFsc28gYWRkcyBWR1RfQ0FQU19QViBjYXBhYmlsaXR5IEJJVCBmb3IgZ3Vlc3Qg
dG8gY2hlY2sgR1ZUZwpjYW4gc3VwcG9ydCBQViBmZWF0dXJlIG9yIG5vdC4KCnYwOiBSRkMsIGlu
dHJvdWRjZWQgZW5hYmxlX3B2bW1pbyBtb2R1bGUgcGFyYW1ldGVyLgp2MTogYWRkcmVzc2VkIFJG
QyBjb21tZW50IHRvIHJlbW92ZSBlbmFibGVfcHZtbWlvIG1vZHVsZSBwYXJhbWV0ZXIKYnkgcHYg
Y2FwYWJpbGl0eSBjaGVjay4KdjI6IHJlYmFzZS4KdjM6IGRpc3RpbmN0IHB2IGNhcHMgZnJvbSBn
dWVzdCBhbmQgaG9zdC4gcmVuYW1lZCBlbmFibGVfcHZtbWlvIHRvCnB2bW1pb19jYXBzIHdoaWNo
IGlzIHVzZWQgZm9yIGhvc3QgcHYgY2Fwcy4KdjQ6IGNvbnNvbGlkYXRlZCBhbGwgcHYgcmVsYXRl
ZCBmdW5jdG9ucyBpbnRvIGEgc2luZ2xlIGZpbGUgaTkxNV92Z3B1LmMKYW5kIHJlbmFtZWQgcHZt
bWlvIHRvIHB2X2NhcHMuCnY1OiByZWJhc2UuCnY2OiByZWJhc2UuCnY3OiByZWJhc2UuCgpTaWdu
ZWQtb2ZmLWJ5OiBYaWFvbGluIFpoYW5nIDx4aWFvbGluLnpoYW5nQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgIHwgIDIgKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcHZpbmZvLmggfCAgNSArKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV92Z3B1LmMgICB8IDQ0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuaCAgIHwgIDkgKysrKysrKysKIDQgZmlsZXMg
Y2hhbmdlZCwgNTggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaAppbmRleCBlMDViYzNlLi42ZDc5ODY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
QEAgLTkzLDYgKzkzLDcgQEAKICNpbmNsdWRlICJpOTE1X3ZtYS5oIgogCiAjaW5jbHVkZSAiaW50
ZWxfZ3Z0LmgiCisjaW5jbHVkZSAiaTkxNV9wdmluZm8uaCIKIAogLyogR2VuZXJhbCBjdXN0b21p
emF0aW9uOgogICovCkBAIC0xMDc2LDYgKzEwNzcsNyBAQCBzdHJ1Y3QgaTkxNV9mcm9udGJ1ZmZl
cl90cmFja2luZyB7CiBzdHJ1Y3QgaTkxNV92aXJ0dWFsX2dwdSB7CiAJYm9vbCBhY3RpdmU7CiAJ
dTMyIGNhcHM7CisJdTMyIHB2X2NhcHM7CiB9OwogCiAvKiB1c2VkIGluIGNvbXB1dGluZyB0aGUg
bmV3IHdhdGVybWFya3Mgc3RhdGUgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcHZpbmZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3B2aW5mby5oCmluZGV4
IDY4M2U5N2EuLmFkMzk4YjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cHZpbmZvLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wdmluZm8uaApAQCAtNTcs
NiArNTcsNyBAQCBlbnVtIHZndF9nMnZfdHlwZSB7CiAjZGVmaW5lIFZHVF9DQVBTX0ZVTExfUFBH
VFQJCUJJVCgyKQogI2RlZmluZSBWR1RfQ0FQU19IV1NQX0VNVUxBVElPTgkJQklUKDMpCiAjZGVm
aW5lIFZHVF9DQVBTX0hVR0VfR1RUCQlCSVQoNCkKKyNkZWZpbmUgVkdUX0NBUFNfUFYJCUJJVCg1
KQogCiBzdHJ1Y3Qgdmd0X2lmIHsKIAl1NjQgbWFnaWM7CQkvKiBWR1RfTUFHSUMgKi8KQEAgLTEw
OSw3ICsxMTAsOSBAQCBzdHJ1Y3Qgdmd0X2lmIHsKIAl1MzIgZXhlY2xpc3RfY29udGV4dF9kZXNj
cmlwdG9yX2xvOwogCXUzMiBleGVjbGlzdF9jb250ZXh0X2Rlc2NyaXB0b3JfaGk7CiAKLQl1MzIg
IHJzdjdbMHgyMDAgLSAyNF07ICAgIC8qIHBhZCB0byBvbmUgcGFnZSAqLworCXUzMiBwdl9jYXBz
OworCisJdTMyICByc3Y3WzB4MjAwIC0gMjVdOyAgICAvKiBwYWQgdG8gb25lIHBhZ2UgKi8KIH0g
X19wYWNrZWQ7CiAKICNkZWZpbmUgdmd0aWZfb2Zmc2V0KHgpIChvZmZzZXRvZihzdHJ1Y3Qgdmd0
X2lmLCB4KSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1LmMKaW5kZXggZGJkMWZhMy4uOWIzN2RkMSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1LmMKQEAgLTk1LDcgKzk1LDE0IEBAIHZvaWQgaTkxNV9k
ZXRlY3RfdmdwdShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJZGV2X3ByaXYt
PnZncHUuY2FwcyA9IHJlYWRsKHNoYXJlZF9hcmVhICsgdmd0aWZfb2Zmc2V0KHZndF9jYXBzKSk7
CiAKIAlkZXZfcHJpdi0+dmdwdS5hY3RpdmUgPSB0cnVlOwotCURSTV9JTkZPKCJWaXJ0dWFsIEdQ
VSBmb3IgSW50ZWwgR1ZULWcgZGV0ZWN0ZWQuXG4iKTsKKworCWlmICghaW50ZWxfdmdwdV9jaGVj
a19wdl9jYXBzKGRldl9wcml2LCBzaGFyZWRfYXJlYSkpIHsKKwkJRFJNX0lORk8oIlZpcnR1YWwg
R1BVIGZvciBJbnRlbCBHVlQtZyBkZXRlY3RlZC5cbiIpOworCQlyZXR1cm47CisJfQorCisJRFJN
X0lORk8oIlZpcnR1YWwgR1BVIGZvciBJbnRlbCBHVlQtZyBkZXRlY3RlZCB3aXRoIHB2X2NhcHMg
MHgleC5cbiIsCisJCQlkZXZfcHJpdi0+dmdwdS5wdl9jYXBzKTsKIAogb3V0OgogCXBjaV9pb3Vu
bWFwKHBkZXYsIHNoYXJlZF9hcmVhKTsKQEAgLTI5NywzICszMDQsMzggQEAgaW50IGludGVsX3Zn
dF9iYWxsb29uKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiAJRFJNX0VSUk9SKCJWR1QgYmFsbG9v
biBmYWlsXG4iKTsKIAlyZXR1cm4gcmV0OwogfQorCisvKgorICogaTkxNSB2Z3B1IFBWIHN1cHBv
cnQgZm9yIExpbnV4CisgKi8KKworLyoqCisgKiBpbnRlbF92Z3B1X2NoZWNrX3B2X2NhcHMgLSBk
ZXRlY3QgdmlydHVhbCBHUFUgUFYgY2FwYWJpbGl0aWVzCisgKiBAZGV2X3ByaXY6IGk5MTUgZGV2
aWNlIHByaXZhdGUKKyAqCisgKiBUaGlzIGZ1bmN0aW9uIGlzIGNhbGxlZCBhdCB0aGUgaW5pdGlh
bGl6YXRpb24gc3RhZ2UsIHRvIGRldGVjdCBWR1BVCisgKiBQViBjYXBhYmlsaXRpZXMKKyAqCisg
KiBJZiBndWVzdCB3YW50cyB0byBlbmFibGUgcHZfY2FwcywgaXQgbmVlZHMgdG8gY29uZmlnIGl0
IGV4cGxpY2l0bHkKKyAqIHRocm91Z2ggdmd0X2lmIGludGVyZmFjZSBmcm9tIGd2dCBsYXllci4K
KyAqLworYm9vbCBpbnRlbF92Z3B1X2NoZWNrX3B2X2NhcHMoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAorCQl2b2lkIF9faW9tZW0gKnNoYXJlZF9hcmVhKQoreworCXUzMiBndnRf
cHZjYXBzOworCXUzMiBwdmNhcHMgPSAwOworCisJaWYgKCFpbnRlbF92Z3B1X2hhc19wdl9jYXBz
KGRldl9wcml2KSkKKwkJcmV0dXJuIGZhbHNlOworCisJLyogUFYgY2FwYWJpbGl0eSBuZWdvdGlh
dGlvbiBiZXR3ZWVuIFBWIGd1ZXN0IGFuZCBHVlQgKi8KKwlndnRfcHZjYXBzID0gcmVhZGwoc2hh
cmVkX2FyZWEgKyB2Z3RpZl9vZmZzZXQocHZfY2FwcykpOworCXB2Y2FwcyA9IGRldl9wcml2LT52
Z3B1LnB2X2NhcHMgJiBndnRfcHZjYXBzOworCWRldl9wcml2LT52Z3B1LnB2X2NhcHMgPSBwdmNh
cHM7CisJd3JpdGVsKHB2Y2Fwcywgc2hhcmVkX2FyZWEgKyB2Z3RpZl9vZmZzZXQocHZfY2Fwcykp
OworCisJaWYgKCFwdmNhcHMpCisJCXJldHVybiBmYWxzZTsKKworCXJldHVybiB0cnVlOworfQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3ZncHUuaAppbmRleCA4YjM2NjNkLi5iYmU1NmI1IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3ZncHUuaApAQCAtNDMsNyArNDMsMTYgQEAgaW50ZWxfdmdwdV9oYXNfaHVnZV9n
dHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXJldHVybiBkZXZfcHJpdi0+
dmdwdS5jYXBzICYgVkdUX0NBUFNfSFVHRV9HVFQ7CiB9CiAKK3N0YXRpYyBpbmxpbmUgYm9vbAor
aW50ZWxfdmdwdV9oYXNfcHZfY2FwcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Cit7CisJcmV0dXJuIGRldl9wcml2LT52Z3B1LmNhcHMgJiBWR1RfQ0FQU19QVjsKK30KKwogaW50
IGludGVsX3ZndF9iYWxsb29uKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpOwogdm9pZCBpbnRlbF92
Z3RfZGViYWxsb29uKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpOwogCisvKiBpOTE1IHZncHUgcHYg
cmVsYXRlZCBmdW5jdGlvbnMgKi8KK2Jvb2wgaW50ZWxfdmdwdV9jaGVja19wdl9jYXBzKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJdm9pZCBfX2lvbWVtICpzaGFyZWRfYXJl
YSk7CiAjZW5kaWYgLyogX0k5MTVfVkdQVV9IXyAqLwotLSAKMi43LjQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
