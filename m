Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A86572B6D0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 15:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E44236E209;
	Mon, 27 May 2019 13:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFBCC6E209
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 13:46:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 06:46:07 -0700
X-ExtLoop1: 1
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by orsmga001.jf.intel.com with ESMTP; 27 May 2019 06:46:05 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 19:12:01 +0530
Message-Id: <1558964522-7829-12-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558964522-7829-1-git-send-email-swati2.sharma@intel.com>
References: <1558964522-7829-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v7][PATCH 11/12] drm/i915: Extract ilk_read_luts()
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCwgaHcgZ2FtbWEgYmxvYiBpcyBjcmVhdGVkIGZvciBJTEsuCgp2NDogLU5v
IG5lZWQgdG8gaW5pdGlhbGl6ZSAqYmxvYiBbSmFuaV0KICAgIC1SZW1vdmVkIHJpZ2h0IHNoaWZ0
cyBbSmFuaV0KICAgIC1Ecm9wcGVkIGRldiBsb2NhbCB2YXIgW0phbmldCnY1OiAtUmV0dXJuZWQg
YmxvYiBpbnN0ZWFkIG9mIGFzc2lnbmluZyBpdCBpbnRlcm5hbGx5IHdpdGhpbiB0aGUKICAgICBm
dW5jdGlvbiBbVmlsbGVdCiAgICAtUmVuYW1lZCBpbGtfZ2V0X2NvbG9yX2NvbmZpZygpIHRvIGls
a19yZWFkX2x1dHMoKSBbVmlsbGVdCgpTaWduZWQtb2ZmLWJ5OiBTd2F0aSBTaGFybWEgPHN3YXRp
Mi5zaGFybWFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgfCAgMyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMgfCA0MiArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQogMiBmaWxlcyBjaGFuZ2VkLCA0MyBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4
IDI0OTI5NmIuLmQ1ZmYzMjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNzE4OSw2ICs3
MTg5LDkgQEAgZW51bSB7CiAvKiBpbGsvc25iIHByZWNpc2lvbiBwYWxldHRlICovCiAjZGVmaW5l
IF9QUkVDX1BBTEVUVEVfQSAgICAgICAgICAgMHg0YjAwMAogI2RlZmluZSBfUFJFQ19QQUxFVFRF
X0IgICAgICAgICAgIDB4NGMwMDAKKyNkZWZpbmUgICBQUkVDX1BBTEVUVEVfUkVEX01BU0sgICBS
RUdfR0VOTUFTSygyOSwgMjApCisjZGVmaW5lICAgUFJFQ19QQUxFVFRFX0dSRUVOX01BU0sgUkVH
X0dFTk1BU0soMTksIDEwKQorI2RlZmluZSAgIFBSRUNfUEFMRVRURV9CTFVFX01BU0sgIFJFR19H
RU5NQVNLKDksIDApCiAjZGVmaW5lIFBSRUNfUEFMRVRURShwaXBlLCBpKSBfTU1JTyhfUElQRShw
aXBlLCBfUFJFQ19QQUxFVFRFX0EsIF9QUkVDX1BBTEVUVEVfQikgKyAoaSkgKiA0KQogCiAjZGVm
aW5lICBfUFJFQ19QSVBFQUdDTUFYICAgICAgICAgICAgICAweDRkMDAwCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfY29sb3IuYwppbmRleCA0YzAwMjE1Li4wNjFiZGJmIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2NvbG9yLmMKQEAgLTE2NTIsNiArMTY1Miw0MyBAQCBzdGF0aWMgdm9pZCBpdmJfcmVhZF9s
dXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCiB9CiAKK3N0YXRpYyBz
dHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKgoraWxrX3JlYWRfZ2FtbWFfbHV0KHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0g
dG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOworCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCXUzMiBpLCB2YWws
IGx1dF9zaXplID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmNvbG9yLmdhbW1hX2x1dF9zaXplOwor
CWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKKwlzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2Ig
KmJsb2I7CisJc3RydWN0IGRybV9jb2xvcl9sdXQgKmJsb2JfZGF0YTsKKworCWJsb2IgPSBkcm1f
cHJvcGVydHlfY3JlYXRlX2Jsb2IoJmRldl9wcml2LT5kcm0sCisJCQkJCXNpemVvZihzdHJ1Y3Qg
ZHJtX2NvbG9yX2x1dCkgKiBsdXRfc2l6ZSwKKwkJCQkJTlVMTCk7CisJaWYgKElTX0VSUihibG9i
KSkKKwkJcmV0dXJuIE5VTEw7CisKKwlibG9iX2RhdGEgPSBibG9iLT5kYXRhOworCisJZm9yIChp
ID0gMDsgaSA8IGx1dF9zaXplIC0gMTsgaSsrKSB7CisJCXZhbCA9IEk5MTVfUkVBRChQUkVDX1BB
TEVUVEUocGlwZSwgaSkpOworCisJCWJsb2JfZGF0YVtpXS5yZWQgPSBpbnRlbF9jb2xvcl9sdXRf
cGFjayhSRUdfRklFTERfR0VUKFBSRUNfUEFMRVRURV9SRURfTUFTSywgdmFsKSwgMTApOworCQli
bG9iX2RhdGFbaV0uZ3JlZW4gPSBpbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VUKFBS
RUNfUEFMRVRURV9HUkVFTl9NQVNLLCB2YWwpLCAxMCk7CisJCWJsb2JfZGF0YVtpXS5ibHVlID0g
aW50ZWxfY29sb3JfbHV0X3BhY2soUkVHX0ZJRUxEX0dFVChQUkVDX1BBTEVUVEVfQkxVRV9NQVNL
LCB2YWwpLCAxMCk7CisJfQorCisJcmV0dXJuIGJsb2I7Cit9CisKK3N0YXRpYyB2b2lkIGlsa19y
ZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJaWYgKGNy
dGNfc3RhdGUtPmdhbW1hX21vZGUgPT0gR0FNTUFfTU9ERV9NT0RFXzhCSVQpCisJCWNydGNfc3Rh
dGUtPmJhc2UuZ2FtbWFfbHV0ID0gaTl4eF9yZWFkX2x1dF84KGNydGNfc3RhdGUpOworCWVsc2UK
KwkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBpbGtfcmVhZF9nYW1tYV9sdXQoY3J0Y19z
dGF0ZSk7Cit9CisKIHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMt
PmJhc2UuZGV2KTsKQEAgLTE3MDUsOSArMTc0MiwxMCBAQCB2b2lkIGludGVsX2NvbG9yX2luaXQo
c3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSA3KSB7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5sb2FkX2x1dHMgPSBpdmJfbG9hZF9sdXRz
OwogCQkJZGV2X3ByaXYtPmRpc3BsYXkucmVhZF9sdXRzID0gaXZiX3JlYWRfbHV0czsKLQkJfQot
CQllbHNlCisJCX0gZWxzZSB7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5sb2FkX2x1dHMgPSBpbGtf
bG9hZF9sdXRzOworCQkJZGV2X3ByaXYtPmRpc3BsYXkucmVhZF9sdXRzID0gaWxrX3JlYWRfbHV0
czsKKwkJfQogCX0KIAogCWRybV9jcnRjX2VuYWJsZV9jb2xvcl9tZ210KCZjcnRjLT5iYXNlLAot
LSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
