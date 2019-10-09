Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B9BD1579
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 19:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5276EA23;
	Wed,  9 Oct 2019 17:23:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B8A56EA1F
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 17:23:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 10:23:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="395090658"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.11.83])
 by fmsmga006.fm.intel.com with ESMTP; 09 Oct 2019 10:23:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Oct 2019 10:23:15 -0700
Message-Id: <20191009172315.11004-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191009172315.11004-1-lucas.demarchi@intel.com>
References: <20191009172315.11004-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/tgl: Read SAGV block time from PCODE
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNAaW50ZWwuY29tPgoKU3RhcnRpbmcgZnJv
bSBUR0wsIHdlIG5vdyBuZWVkIHRvIHJlYWQgdGhlIFNBR1YgYmxvY2sgdGltZSB2aWEgYSBQQ09E
RQptYWlsYm94LCByYXRoZXIgdGhhbiBoYXZpbmcgYSBzdGF0aWMgdmFsdWUuCgpCU3BlYzogNDkz
MjYKCnYyOiBGaXggdXAgcGNvZGUgdmFsIGRhdGEgdHlwZSAoVmlsbGUpLCB0aWdodGVuIHZhcmlh
YmxlIHNjb3BlIChWaWxsZSkKCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgpDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tp
eUBpbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNAaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5j
b20+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8y
MDE5MTAwNDIyMTQ0OS4xMzE3LTItamFtZXMuYXVzbXVzQGludGVsLmNvbQotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jIHwgMTUgKysrKysrKysrKysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCAxZGMwNjdm
YzU3YWIuLjBmYjkwMzBiODlmMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC04ODc4LDYg
Kzg4NzgsNyBAQCBlbnVtIHsKICNkZWZpbmUgICAgIEdFTjlfU0FHVl9ESVNBQkxFCQkJMHgwCiAj
ZGVmaW5lICAgICBHRU45X1NBR1ZfSVNfRElTQUJMRUQJCTB4MQogI2RlZmluZSAgICAgR0VOOV9T
QUdWX0VOQUJMRQkJCTB4MworI2RlZmluZSBHRU4xMl9QQ09ERV9SRUFEX1NBR1ZfQkxPQ0tfVElN
RV9VUwkweDIzCiAjZGVmaW5lIEdFTjZfUENPREVfREFUQQkJCQlfTU1JTygweDEzODEyOCkKICNk
ZWZpbmUgICBHRU42X1BDT0RFX0ZSRVFfSUFfUkFUSU9fU0hJRlQJOAogI2RlZmluZSAgIEdFTjZf
UENPREVfRlJFUV9SSU5HX1JBVElPX1NISUZUCTE2CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRl
eCAwZmZjYWZlOTcyMTYuLmUyYWNhM2U4MWQyOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBA
IC0zNjQ1LDcgKzM2NDUsMjAgQEAgaW50ZWxfaGFzX3NhZ3Yoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogc3RhdGljIHZvaWQKIHNrbF9zZXR1cF9zYWd2X2Jsb2NrX3RpbWUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewotCWlmIChJU19HRU4oZGV2X3ByaXYs
IDExKSkgeworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7CisJCXUzMiB2YWwgPSAw
OworCQlpbnQgcmV0OworCisJCXJldCA9IHNhbmR5YnJpZGdlX3Bjb2RlX3JlYWQoZGV2X3ByaXYs
CisJCQkJCSAgICAgR0VOMTJfUENPREVfUkVBRF9TQUdWX0JMT0NLX1RJTUVfVVMsCisJCQkJCSAg
ICAgJnZhbCwgTlVMTCk7CisJCWlmICghcmV0KSB7CisJCQlkZXZfcHJpdi0+c2Fndl9ibG9ja190
aW1lX3VzID0gdmFsOworCQkJcmV0dXJuOworCQl9CisKKwkJRFJNX0RFQlVHX0RSSVZFUigiQ291
bGRuJ3QgcmVhZCBTQUdWIGJsb2NrIHRpbWUhXG4iKTsKKwl9IGVsc2UgaWYgKElTX0dFTihkZXZf
cHJpdiwgMTEpKSB7CiAJCWRldl9wcml2LT5zYWd2X2Jsb2NrX3RpbWVfdXMgPSAxMDsKIAkJcmV0
dXJuOwogCX0gZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMCkpIHsKLS0gCjIuMjMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
