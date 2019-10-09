Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7ABD07C4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 09:05:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D1D6E8EA;
	Wed,  9 Oct 2019 07:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D2B36E8EA
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 07:05:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 00:05:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="200044754"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Oct 2019 00:05:02 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Oct 2019 12:25:40 +0530
Message-Id: <20191009065542.27415-3-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191009065542.27415-1-swati2.sharma@intel.com>
References: <20191009065542.27415-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] [v2] drm/i915/color: move check of
 gamma_enable to specific func/platform
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW92ZWQgY29tbW9uIGNvZGUgdG8gY2hlY2sgZ2FtbWFfZW5hYmxlIHRvIHNwZWNpZmljIGZ1bmNz
IHBlciBwbGF0Zm9ybQppbiBiaXRfcHJlY2lzaW9uIGZ1bmMuIGljbCBkb2Vzbid0IHN1cHBvcnQg
dGhhdCBhbmQgY2h2IGhhcyBzZXBhcmF0ZQplbmFibGUga25vYiBmb3IgQ0dNIExVVC4KCnYyOgot
U2ltcGxpZmllZCBjaHZfZ2FtbWFfcHJlY2lzaW9uKCkgW1ZpbGxlXQoKU2lnbmVkLW9mZi1ieTog
U3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAxMiArKysrKysrKystLS0KIDEgZmlsZSBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCmluZGV4IDA4ZDAyMGQ0ZGEzNS4uZmE0NGViNzNk
MDg4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCkBAIC0x
NDIwLDYgKzE0MjAsOSBAQCBzdGF0aWMgaW50IGljbF9jb2xvcl9jaGVjayhzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAogc3RhdGljIGludCBpOXh4X2dhbW1hX3ByZWNpc2lv
bihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKKwlpZiAoIWNy
dGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKKwkJcmV0dXJuIDA7CisKIAlzd2l0Y2ggKGNydGNfc3Rh
dGUtPmdhbW1hX21vZGUpIHsKIAljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOgogCQlyZXR1cm4g
ODsKQEAgLTE0MzMsNiArMTQzNiw5IEBAIHN0YXRpYyBpbnQgaTl4eF9nYW1tYV9wcmVjaXNpb24o
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAKIHN0YXRpYyBpbnQg
aWxrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKIHsKKwlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKKwkJcmV0dXJuIDA7CisK
IAlpZiAoKGNydGNfc3RhdGUtPmNzY19tb2RlICYgQ1NDX1BPU0lUSU9OX0JFRk9SRV9HQU1NQSkg
PT0gMCkKIAkJcmV0dXJuIDA7CiAKQEAgLTE0NTcsNiArMTQ2Myw5IEBAIHN0YXRpYyBpbnQgY2h2
X2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkKIAogc3RhdGljIGludCBnbGtfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQogeworCWlmICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxl
KQorCQlyZXR1cm4gMDsKKwogCXN3aXRjaCAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSkgewogCWNh
c2UgR0FNTUFfTU9ERV9NT0RFXzhCSVQ6CiAJCXJldHVybiA4OwpAQCAtMTQ3Myw5ICsxNDgyLDYg
QEAgaW50IGludGVsX2NvbG9yX2dldF9nYW1tYV9iaXRfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXQKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRv
X2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKIAotCWlmICghY3J0Y19z
dGF0ZS0+Z2FtbWFfZW5hYmxlKQotCQlyZXR1cm4gMDsKLQogCWlmIChIQVNfR01DSChkZXZfcHJp
dikpIHsKIAkJaWYgKElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQogCQkJcmV0dXJuIGNodl9nYW1t
YV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
