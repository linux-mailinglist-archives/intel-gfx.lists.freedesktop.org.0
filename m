Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1289C980
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 08:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C94736E186;
	Mon, 26 Aug 2019 06:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0CCC6E185
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 06:36:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Aug 2019 23:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="174112039"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 25 Aug 2019 23:36:54 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 11:56:10 +0530
Message-Id: <1566800772-18412-9-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v8][PATCH 08/10] drm/i915/display: Extract
 ilk_read_luts()
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIGlsaywgaGF2ZSBodyByZWFkIG91dCB0byBjcmVhdGUgaHcgYmxvYiBvZiBnYW1tYQpsdXQg
dmFsdWVzLgoKU2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCA0
MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggICAgICAgICAgICB8ICAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA0MyBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jCmluZGV4IDFlYzJmYTAuLjRiOWIyOGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKQEAgLTE2NDcsNiArMTY0Nyw0MyBAQCBzdGF0aWMgdm9p
ZCBjaHZfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCQlj
cnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9IGNodl9yZWFkX2NnbV9nYW1tYV9sdXQoY3J0Y19z
dGF0ZSk7CiB9CiAKK3N0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKgoraWxrX3JlYWRf
Z2FtbWFfbHV0KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCXN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMp
OworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFz
ZS5kZXYpOworCXUzMiBpLCB2YWwsIGx1dF9zaXplID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmNv
bG9yLmdhbW1hX2x1dF9zaXplOworCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKKwlzdHJ1
Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2I7CisJc3RydWN0IGRybV9jb2xvcl9sdXQgKmJsb2Jf
ZGF0YTsKKworCWJsb2IgPSBkcm1fcHJvcGVydHlfY3JlYXRlX2Jsb2IoJmRldl9wcml2LT5kcm0s
CisJCQkJCXNpemVvZihzdHJ1Y3QgZHJtX2NvbG9yX2x1dCkgKiBsdXRfc2l6ZSwKKwkJCQkJTlVM
TCk7CisJaWYgKElTX0VSUihibG9iKSkKKwkJcmV0dXJuIE5VTEw7CisKKwlibG9iX2RhdGEgPSBi
bG9iLT5kYXRhOworCisJZm9yIChpID0gMDsgaSA8IGx1dF9zaXplIC0gMTsgaSsrKSB7CisJCXZh
bCA9IEk5MTVfUkVBRChQUkVDX1BBTEVUVEUocGlwZSwgaSkpOworCisJCWJsb2JfZGF0YVtpXS5y
ZWQgPSBpbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VUKFBSRUNfUEFMRVRURV9SRURf
TUFTSywgdmFsKSwgMTApOworCQlibG9iX2RhdGFbaV0uZ3JlZW4gPSBpbnRlbF9jb2xvcl9sdXRf
cGFjayhSRUdfRklFTERfR0VUKFBSRUNfUEFMRVRURV9HUkVFTl9NQVNLLCB2YWwpLCAxMCk7CisJ
CWJsb2JfZGF0YVtpXS5ibHVlID0gaW50ZWxfY29sb3JfbHV0X3BhY2soUkVHX0ZJRUxEX0dFVChQ
UkVDX1BBTEVUVEVfQkxVRV9NQVNLLCB2YWwpLCAxMCk7CisJfQorCisJcmV0dXJuIGJsb2I7Cit9
CisKK3N0YXRpYyB2b2lkIGlsa19yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpCit7CisJaWYgKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgPT0gR0FNTUFfTU9ERV9N
T0RFXzhCSVQpCisJCWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gaTl4eF9yZWFkX2x1dF84
KGNydGNfc3RhdGUpOworCWVsc2UKKwkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBpbGtf
cmVhZF9nYW1tYV9sdXQoY3J0Y19zdGF0ZSk7Cit9CisKIHZvaWQgaW50ZWxfY29sb3JfaW5pdChz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKQEAgLTE2OTYsOCArMTczMywxMCBAQCB2
b2lkIGludGVsX2NvbG9yX2luaXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJCQlkZXZfcHJp
di0+ZGlzcGxheS5sb2FkX2x1dHMgPSBiZHdfbG9hZF9sdXRzOwogCQllbHNlIGlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDcpCiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5sb2FkX2x1dHMgPSBpdmJf
bG9hZF9sdXRzOwotCQllbHNlCisJCWVsc2UgewogCQkJZGV2X3ByaXYtPmRpc3BsYXkubG9hZF9s
dXRzID0gaWxrX2xvYWRfbHV0czsKKwkJCWRldl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cyA9IGls
a19yZWFkX2x1dHM7CisJCX0KIAl9CiAKIAlkcm1fY3J0Y19lbmFibGVfY29sb3JfbWdtdCgmY3J0
Yy0+YmFzZSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGU3NmU3NzkuLmFjYzkyMzkgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNzIwMyw2ICs3MjAzLDkgQEAgZW51bSB7CiAvKiBp
bGsvc25iIHByZWNpc2lvbiBwYWxldHRlICovCiAjZGVmaW5lIF9QUkVDX1BBTEVUVEVfQSAgICAg
ICAgICAgMHg0YjAwMAogI2RlZmluZSBfUFJFQ19QQUxFVFRFX0IgICAgICAgICAgIDB4NGMwMDAK
KyNkZWZpbmUgICBQUkVDX1BBTEVUVEVfUkVEX01BU0sgICBSRUdfR0VOTUFTSygyOSwgMjApCisj
ZGVmaW5lICAgUFJFQ19QQUxFVFRFX0dSRUVOX01BU0sgUkVHX0dFTk1BU0soMTksIDEwKQorI2Rl
ZmluZSAgIFBSRUNfUEFMRVRURV9CTFVFX01BU0sgIFJFR19HRU5NQVNLKDksIDApCiAjZGVmaW5l
IFBSRUNfUEFMRVRURShwaXBlLCBpKSBfTU1JTyhfUElQRShwaXBlLCBfUFJFQ19QQUxFVFRFX0Es
IF9QUkVDX1BBTEVUVEVfQikgKyAoaSkgKiA0KQogCiAjZGVmaW5lICBfUFJFQ19QSVBFQUdDTUFY
ICAgICAgICAgICAgICAweDRkMDAwCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
