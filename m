Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E22DAA0
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 05:11:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D599C89124;
	Mon, 29 Apr 2019 03:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 043D189100;
 Mon, 29 Apr 2019 03:11:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Apr 2019 20:11:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,408,1549958400"; d="scan'208";a="146648192"
Received: from xzhan34-mobl3.bj.intel.com ([10.238.154.121])
 by fmsmga007.fm.intel.com with ESMTP; 28 Apr 2019 20:11:21 -0700
From: Xiaolin Zhang <xiaolin.zhang@intel.com>
To: intel-gvt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 11:10:51 +0800
Message-Id: <1556507458-24684-2-git-send-email-xiaolin.zhang@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556507458-24684-1-git-send-email-xiaolin.zhang@intel.com>
References: <1556507458-24684-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] [PATCH v5 1/8] drm/i915: introduced vgpu pv capability
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
Y2FwYWJpbGl0eSBjaGVjay4KdjI6IHJlYmFzZQp2MzogZGlzdGluY3QgcHYgY2FwcyBmcm9tIGd1
ZXN0IGFuZCBob3N0LiByZW5hbWVkIGVuYWJsZV9wdm1taW8gdG8KcHZtbWlvX2NhcHMgd2hpY2gg
aXMgdXNlZCBmb3IgaG9zdCBwdiBjYXBzLgp2NDogY29uc29saWRhdGVkIGFsbCBwdiByZWxhdGVk
IGZ1bmN0b25zIGludG8gYSBzaW5nbGUgZmlsZSBpOTE1X3ZncHUuYwphbmQgcmVuYW1lZCBwdm1t
aW8gdG8gcHZfY2Fwcy4KdjU6IHJlYmFzZQoKU2lnbmVkLW9mZi1ieTogWGlhb2xpbiBaaGFuZyA8
eGlhb2xpbi56aGFuZ0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCAgICB8ICAyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3B2aW5mby5oIHwgIDUg
KysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jICAgfCA0NSArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92
Z3B1LmggICB8ICA4ICsrKysrKysKIDQgZmlsZXMgY2hhbmdlZCwgNTggaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCA1Yzc3YmY1Li45MWEx
NmIzNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC04OSw2ICs4OSw3IEBACiAjaW5jbHVk
ZSAiaTkxNV92bWEuaCIKIAogI2luY2x1ZGUgImludGVsX2d2dC5oIgorI2luY2x1ZGUgImk5MTVf
cHZpbmZvLmgiCiAKIC8qIEdlbmVyYWwgY3VzdG9taXphdGlvbjoKICAqLwpAQCAtMTI0Miw2ICsx
MjQzLDcgQEAgc3RydWN0IGk5MTVfZnJvbnRidWZmZXJfdHJhY2tpbmcgewogc3RydWN0IGk5MTVf
dmlydHVhbF9ncHUgewogCWJvb2wgYWN0aXZlOwogCXUzMiBjYXBzOworCXUzMiBwdl9jYXBzOwog
fTsKIAogLyogdXNlZCBpbiBjb21wdXRpbmcgdGhlIG5ldyB3YXRlcm1hcmtzIHN0YXRlICovCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3B2aW5mby5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wdmluZm8uaAppbmRleCA5NjllNTE0Li42MTkzMDVhIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3B2aW5mby5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcHZpbmZvLmgKQEAgLTU1LDYgKzU1LDcgQEAgZW51bSB2Z3RfZzJ2X3R5
cGUgewogI2RlZmluZSBWR1RfQ0FQU19GVUxMX1BQR1RUCQlCSVQoMikKICNkZWZpbmUgVkdUX0NB
UFNfSFdTUF9FTVVMQVRJT04JCUJJVCgzKQogI2RlZmluZSBWR1RfQ0FQU19IVUdFX0dUVAkJQklU
KDQpCisjZGVmaW5lIFZHVF9DQVBTX1BWCQlCSVQoNSkKIAogc3RydWN0IHZndF9pZiB7CiAJdTY0
IG1hZ2ljOwkJLyogVkdUX01BR0lDICovCkBAIC0xMDcsNyArMTA4LDkgQEAgc3RydWN0IHZndF9p
ZiB7CiAJdTMyIGV4ZWNsaXN0X2NvbnRleHRfZGVzY3JpcHRvcl9sbzsKIAl1MzIgZXhlY2xpc3Rf
Y29udGV4dF9kZXNjcmlwdG9yX2hpOwogCi0JdTMyICByc3Y3WzB4MjAwIC0gMjRdOyAgICAvKiBw
YWQgdG8gb25lIHBhZ2UgKi8KKwl1MzIgcHZfY2FwczsKKworCXUzMiAgcnN2N1sweDIwMCAtIDI1
XTsgICAgLyogcGFkIHRvIG9uZSBwYWdlICovCiB9IF9fcGFja2VkOwogCiAjZGVmaW5lIHZndGlm
X3JlZyh4KSBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jCmluZGV4IDk0ZDM5OTIuLjczMjlmNWEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jCkBAIC03OSw3ICs3OSwxNCBAQCB2b2lkIGk5MTVf
Y2hlY2tfdmdwdShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJZGV2X3ByaXYt
PnZncHUuY2FwcyA9IF9fcmF3X3VuY29yZV9yZWFkMzIodW5jb3JlLCB2Z3RpZl9yZWcodmd0X2Nh
cHMpKTsKIAogCWRldl9wcml2LT52Z3B1LmFjdGl2ZSA9IHRydWU7Ci0JRFJNX0lORk8oIlZpcnR1
YWwgR1BVIGZvciBJbnRlbCBHVlQtZyBkZXRlY3RlZC5cbiIpOworCisJaWYgKCFpbnRlbF92Z3B1
X2NoZWNrX3B2X2NhcHMoZGV2X3ByaXYpKSB7CisJCURSTV9JTkZPKCJWaXJ0dWFsIEdQVSBmb3Ig
SW50ZWwgR1ZULWcgZGV0ZWN0ZWQuXG4iKTsKKwkJcmV0dXJuOworCX0KKworCURSTV9JTkZPKCJW
aXJ0dWFsIEdQVSBmb3IgSW50ZWwgR1ZULWcgZGV0ZWN0ZWQgd2l0aCBwdl9jYXBzIDB4JXguXG4i
LAorCQkJZGV2X3ByaXYtPnZncHUucHZfY2Fwcyk7CiB9CiAKIGJvb2wgaW50ZWxfdmdwdV9oYXNf
ZnVsbF9wcGd0dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCkBAIC0yNzQsMyAr
MjgxLDM5IEBAIGludCBpbnRlbF92Z3RfYmFsbG9vbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCiAJRFJNX0VSUk9SKCJWR1QgYmFsbG9vbiBmYWlsXG4iKTsKIAlyZXR1cm4gcmV0
OwogfQorCisvKgorICogaTkxNSB2Z3B1IFBWIHN1cHBvcnQgZm9yIExpbnV4CisgKi8KKworLyoq
CisgKiBpbnRlbF92Z3B1X2NoZWNrX3B2X2NhcHMgLSBkZXRlY3QgdmlydHVhbCBHUFUgUFYgY2Fw
YWJpbGl0aWVzCisgKiBAZGV2X3ByaXY6IGk5MTUgZGV2aWNlIHByaXZhdGUKKyAqCisgKiBUaGlz
IGZ1bmN0aW9uIGlzIGNhbGxlZCBhdCB0aGUgaW5pdGlhbGl6YXRpb24gc3RhZ2UsIHRvIGRldGVj
dCBWR1BVCisgKiBQViBjYXBhYmlsaXRpZXMKKyAqCisgKiBJZiBndWVzdCB3YW50cyB0byBlbmFi
bGUgcHZfY2FwcywgaXQgbmVlZHMgdG8gY29uZmlnIGl0IGV4cGxpY2l0bHkKKyAqIHRocm91Z2gg
dmd0X2lmIGludGVyZmFjZSBmcm9tIGd2dCBsYXllci4KKyAqLworYm9vbCBpbnRlbF92Z3B1X2No
ZWNrX3B2X2NhcHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCXN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZkZXZfcHJpdi0+dW5jb3JlOworCXUzMiBndnRfcHZj
YXBzOworCXUzMiBwdmNhcHM7CisKKwlpZiAoIWludGVsX3ZncHVfaGFzX3B2X2NhcHMoZGV2X3By
aXYpKQorCQlyZXR1cm4gZmFsc2U7CisKKwkvKiBQViBjYXBhYmlsaXR5IG5lZ290aWF0aW9uIGJl
dHdlZW4gUFYgZ3Vlc3QgYW5kIEdWVCAqLworCWd2dF9wdmNhcHMgPSBfX3Jhd191bmNvcmVfcmVh
ZDMyKHVuY29yZSwgdmd0aWZfcmVnKHB2X2NhcHMpKTsKKwlwdmNhcHMgPSBkZXZfcHJpdi0+dmdw
dS5wdl9jYXBzICYgZ3Z0X3B2Y2FwczsKKwlkZXZfcHJpdi0+dmdwdS5wdl9jYXBzID0gcHZjYXBz
OworCisJaWYgKCFwdmNhcHMpCisJCXJldHVybiBmYWxzZTsKKworCV9fcmF3X3VuY29yZV93cml0
ZTMyKHVuY29yZSwgdmd0aWZfcmVnKHB2X2NhcHMpLCBwdmNhcHMpOworCisJcmV0dXJuIHRydWU7
Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5oCmluZGV4IGViZTFiN2IuLjkxMDEwZmMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfdmdwdS5oCkBAIC00Miw3ICs0MiwxNSBAQCBpbnRlbF92Z3B1X2hhc19o
dWdlX2d0dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJcmV0dXJuIGRldl9w
cml2LT52Z3B1LmNhcHMgJiBWR1RfQ0FQU19IVUdFX0dUVDsKIH0KIAorc3RhdGljIGlubGluZSBi
b29sCitpbnRlbF92Z3B1X2hhc19wdl9jYXBzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKK3sKKwlyZXR1cm4gZGV2X3ByaXYtPnZncHUuY2FwcyAmIFZHVF9DQVBTX1BWOworfQor
CiBpbnQgaW50ZWxfdmd0X2JhbGxvb24oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KTsKIHZvaWQgaW50ZWxfdmd0X2RlYmFsbG9vbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpOwogCisvKiBpOTE1IHZncHUgcHYgcmVsYXRlZCBmdW5jdGlvbnMgKi8KK2Jvb2wgaW50
ZWxfdmdwdV9jaGVja19wdl9jYXBzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7
CiAjZW5kaWYgLyogX0k5MTVfVkdQVV9IXyAqLwotLSAKMi43LjQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
