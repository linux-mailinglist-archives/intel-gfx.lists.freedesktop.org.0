Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F03154FA2
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 01:14:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65AD689AAD;
	Fri,  7 Feb 2020 00:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C24B89AAD
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 00:14:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 16:14:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,411,1574150400"; d="scan'208";a="311864060"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga001.jf.intel.com with ESMTP; 06 Feb 2020 16:14:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 16:14:17 -0800
Message-Id: <20200207001417.1229251-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200207001417.1229251-1-matthew.d.roper@intel.com>
References: <20200207001417.1229251-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Update cdclk voltage level
 settings
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

QSByZWNlbnQgYnNwZWMgdXBkYXRlIGFkZGVkIGFuIGV4dHJhIHZvbHRhZ2UgbGV2ZWwgdGhhdCB3
ZSBkaWRuJ3QgaGF2ZQpvbiBJQ0wgYW5kIG5ldyBjcml0ZXJpYSBmb3Igc2VsZWN0aW5nIHRoZSBs
ZXZlbC4KCkJzcGVjOiA0OTIwOApDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+CkNjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMTkgKysr
KysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyAgIHwgIDQgKysrLQogMiBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRl
eCA3MTU0YTIyODgzMTAuLjU1YjVkZDE2OWM1MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtMTI5NSw2ICsxMjk1LDE4IEBAIHN0YXRpYyB1OCBlaGxf
Y2FsY192b2x0YWdlX2xldmVsKGludCBjZGNsaykKIAkJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyB1
OCB0Z2xfY2FsY192b2x0YWdlX2xldmVsKGludCBjZGNsaykKK3sKKwlpZiAoY2RjbGsgPiA1NTY4
MDApCisJCXJldHVybiAzOworCWVsc2UgaWYgKGNkY2xrID4gMzI2NDAwKQorCQlyZXR1cm4gMjsK
KwllbHNlIGlmIChjZGNsayA+IDMxMjAwMCkKKwkJcmV0dXJuIDE7CisJZWxzZQorCQlyZXR1cm4g
MDsKK30KKwogc3RhdGljIHZvaWQgY25sX3JlYWRvdXRfcmVmY2xrKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKIAkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY2RjbGtfY29uZmlnICpj
ZGNsa19jb25maWcpCiB7CkBAIC0yNzExLDcgKzI3MjMsMTIgQEAgdm9pZCBpbnRlbF91cGRhdGVf
cmF3Y2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKICAqLwogdm9pZCBpbnRl
bF9pbml0X2NkY2xrX2hvb2tzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsK
LQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKSB7CisJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTIpIHsKKwkJZGV2X3ByaXYtPmRpc3BsYXkuc2V0X2NkY2xrID0gYnh0X3NldF9jZGNs
azsKKwkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0gYnh0X21vZGVzZXRf
Y2FsY19jZGNsazsKKwkJZGV2X3ByaXYtPmRpc3BsYXkuY2FsY192b2x0YWdlX2xldmVsID0gdGds
X2NhbGNfdm9sdGFnZV9sZXZlbDsKKwkJZGV2X3ByaXYtPmNkY2xrLnRhYmxlID0gaWNsX2NkY2xr
X3RhYmxlOworCX0gZWxzZSBpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKSB7CiAJCWRldl9w
cml2LT5kaXNwbGF5LnNldF9jZGNsayA9IGJ4dF9zZXRfY2RjbGs7CiAJCWRldl9wcml2LT5kaXNw
bGF5Lm1vZGVzZXRfY2FsY19jZGNsayA9IGJ4dF9tb2Rlc2V0X2NhbGNfY2RjbGs7CiAJCWRldl9w
cml2LT5kaXNwbGF5LmNhbGNfdm9sdGFnZV9sZXZlbCA9IGVobF9jYWxjX3ZvbHRhZ2VfbGV2ZWw7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCBmZjYzOGZjNmUz
ZjUuLjA4YTY2YjhhMjVjZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jCkBAIC00MjA2LDcgKzQyMDYsOSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9kZGlfaXNfYXVkaW9f
ZW5hYmxlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiB2b2lkIGludGVsX2Rk
aV9jb21wdXRlX21pbl92b2x0YWdlX2xldmVsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKIAkJCQkJIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewotCWlm
IChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA+IDU5
NDAwMCkKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMiAmJiBjcnRjX3N0YXRlLT5wb3J0
X2Nsb2NrID4gNTk0MDAwKQorCQljcnRjX3N0YXRlLT5taW5fdm9sdGFnZV9sZXZlbCA9IDI7CisJ
ZWxzZSBpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmIGNydGNfc3RhdGUtPnBvcnRfY2xv
Y2sgPiA1OTQwMDApCiAJCWNydGNfc3RhdGUtPm1pbl92b2x0YWdlX2xldmVsID0gMzsKIAllbHNl
IGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYmIGNydGNfc3RhdGUtPnBvcnRfY2xvY2sg
PiA1OTQwMDApCiAJCWNydGNfc3RhdGUtPm1pbl92b2x0YWdlX2xldmVsID0gMTsKLS0gCjIuMjQu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
