Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAC62C4FA1
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 08:41:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77156E7FE;
	Thu, 26 Nov 2020 07:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15E256E7F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 07:41:34 +0000 (UTC)
IronPort-SDR: OqyV488y2Ku29XWRTRYsY2NSvmeYIaLmcQVe6NnjVUvxgu5vfRj9GQsIV9oQ0MPvuCMRYAtWbK
 vOLQw2BX6BZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168741387"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="168741387"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:33 -0800
IronPort-SDR: enTD2CPtRqySZA1lPTpgMOd4VYEZJ4auWrD1m2X6EXj0OxBh8/bUqznKitKJfypW4RzEOwvS/l
 4GocodKi23ug==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="359448139"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:32 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Nov 2020 13:44:43 +0530
Message-Id: <20201126081445.29759-12-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126081445.29759-1-uma.shankar@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v11 11/13] drm/i915/lspcon: Create separate
 infoframe_enabled helper
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

THNwY29uIGhhcyBJbmZvZnJhbWVzIGFzIHdlbGwgYXMgRElQIGZvciBIRFIgbWV0YWRhdGEoRFJN
IEluZm9mcmFtZSkuCkNyZWF0ZSBhIHNlcGFyYXRlIG1lY2hhbmlzbSBmb3IgbHNwY29uIGNvbXBh
cmVkIHRvIEhETUkgaW4gb3JkZXIgdG8KYWRkcmVzcyB0aGUgc2FtZSBhbmQgZW5zdXJlIGZ1dHVy
ZSBzY2FsYWJpbGl0eS4KCnYyOiBTdHJlYW1saW5lZCB0aGlzIGFzIHBlciBWaWxsZSdzIHN1Z2dl
c3Rpb25zLCBtYWtpbmcgc3VyZSB0aGF0CkhETUkgaW5mb2ZyYW1lIHZlcnNpb25zIGFyZSBkaXJl
Y3RseSByZXR1cm5lZCBpbnN0ZWFkIG9mIGEgcmVkdW5kYW50CmFuZCBjb25mdXNpbmcgRElQIG92
ZXJoZWFkLgoKU3VnZ2VzdGVkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAg
fCAxMCArKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNv
bi5jIHwgIDkgKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xz
cGNvbi5oIHwgIDIgKysKIDMgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCA5
Mjk0MGEwYzVlZjguLjQ4ZGE1ZGM1OTkzOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jCkBAIC00NTgzLDYgKzQ1ODMsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlf
cmVhZF9mdW5jX2N0bChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKIAlz
dHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YyA9IHRvX2ludGVsX2NydGMocGlwZV9jb25maWct
PnVhcGkuY3J0Yyk7CiAJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gcGlwZV9jb25m
aWctPmNwdV90cmFuc2NvZGVyOworCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0
ID0gZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpOwogCXUzMiB0ZW1wLCBmbGFncyA9IDA7CiAKIAl0
ZW1wID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgVFJBTlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFu
c2NvZGVyKSk7CkBAIC00NjU3LDkgKzQ2NTgsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3Jl
YWRfZnVuY19jdGwoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJICAgIHBpcGVf
Y29uZmlnLT5mZWNfZW5hYmxlKTsKIAkJfQogCi0JCXBpcGVfY29uZmlnLT5pbmZvZnJhbWVzLmVu
YWJsZSB8PQotCQkJaW50ZWxfaGRtaV9pbmZvZnJhbWVzX2VuYWJsZWQoZW5jb2RlciwgcGlwZV9j
b25maWcpOwotCisJCWlmIChkaWdfcG9ydC0+bHNwY29uLmFjdGl2ZSAmJiBkaWdfcG9ydC0+ZHAu
aGFzX2hkbWlfc2luaykKKwkJCXBpcGVfY29uZmlnLT5pbmZvZnJhbWVzLmVuYWJsZSB8PQorCQkJ
CWludGVsX2xzcGNvbl9pbmZvZnJhbWVzX2VuYWJsZWQoZW5jb2RlciwgcGlwZV9jb25maWcpOwor
CQllbHNlCisJCQlwaXBlX2NvbmZpZy0+aW5mb2ZyYW1lcy5lbmFibGUgfD0KKwkJCQlpbnRlbF9o
ZG1pX2luZm9mcmFtZXNfZW5hYmxlZChlbmNvZGVyLCBwaXBlX2NvbmZpZyk7CiAJCWJyZWFrOwog
CWNhc2UgVFJBTlNfRERJX01PREVfU0VMRUNUX0RQX01TVDoKIAkJcGlwZV9jb25maWctPm91dHB1
dF90eXBlcyB8PSBCSVQoSU5URUxfT1VUUFVUX0RQX01TVCk7CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYwppbmRleCBiNTIwYmIwNGEwOTAuLjI5OWZiNDlkYmJi
YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jCkBAIC0z
MCw2ICszMCw3IEBACiAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgogI2luY2x1ZGUg
ImludGVsX2RwLmgiCiAjaW5jbHVkZSAiaW50ZWxfbHNwY29uLmgiCisjaW5jbHVkZSAiaW50ZWxf
aGRtaS5oIgogCiAvKiBMU1BDT04gT1VJIFZlbmRvciBJRChzaWduYXR1cmVzKSAqLwogI2RlZmlu
ZSBMU1BDT05fVkVORE9SX1BBUkFERV9PVUkgMHgwMDFDRjgKQEAgLTY3Miw2ICs2NzMsMTQgQEAg
Ym9vbCBsc3Bjb25faW5pdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIAly
ZXR1cm4gdHJ1ZTsKIH0KIAordTMyIGludGVsX2xzcGNvbl9pbmZvZnJhbWVzX2VuYWJsZWQoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCisJCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpwaXBlX2NvbmZpZykKK3sKKwlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpk
aWdfcG9ydCA9IGVuY190b19kaWdfcG9ydChlbmNvZGVyKTsKKworCXJldHVybiBkaWdfcG9ydC0+
aW5mb2ZyYW1lc19lbmFibGVkKGVuY29kZXIsIHBpcGVfY29uZmlnKTsKK30KKwogdm9pZCBsc3Bj
b25fcmVzdW1lKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogewogCXN0cnVj
dCBpbnRlbF9sc3Bjb24gKmxzcGNvbiA9ICZkaWdfcG9ydC0+bHNwY29uOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmgKaW5kZXggZDYyMjE1NmQwYzRlLi5lOTI3
MzU0MDg0NDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
bHNwY29uLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24u
aApAQCAtNDEsNSArNDEsNyBAQCB2b2lkIGhzd19yZWFkX2luZm9mcmFtZShzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwKIAkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlLAogCQkJdW5zaWduZWQgaW50IHR5cGUsCiAJCQl2b2lkICpmcmFtZSwgc3NpemVfdCBs
ZW4pOwordTMyIGludGVsX2xzcGNvbl9pbmZvZnJhbWVzX2VuYWJsZWQoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsCisJCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpw
aXBlX2NvbmZpZyk7CiAKICNlbmRpZiAvKiBfX0lOVEVMX0xTUENPTl9IX18gKi8KLS0gCjIuMjYu
MgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
