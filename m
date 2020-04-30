Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9CE1BF89E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 14:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C55E06E351;
	Thu, 30 Apr 2020 12:58:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4496C6E351
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 12:58:26 +0000 (UTC)
IronPort-SDR: Upj7g/lx/+U1thR/vNoRyUIvbxwRfuubUFg4qyULcwmcDnfnnwMP/P6jGbHN3eCRPZZUhM8uCS
 Nfxnb5+vScwg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 05:58:25 -0700
IronPort-SDR: q4027rR03Wy0ed1PePGSdXNlU5e9FFKWOxTbnztn3DU6XiKk62F9rT9cvyP61WcMlU3TWfHaG4
 tHy4NB5yxk9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,334,1583222400"; d="scan'208";a="261769452"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 30 Apr 2020 05:58:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Apr 2020 15:58:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 15:58:21 +0300
Message-Id: <20200430125822.21985-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix glk watermark calculations
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdM
SyB3YW50cyB0aGUgKzEgYWRqdXN0ZW1lbnQgZm9yIHRoZSAiYmxvY2tzIHBlciBsaW5lIiB2YWx1
ZQpmb3IgeC10aWxlL3ktdGlsZSwganVzdCBsaWtlIGNubCsuCgpBbHNvIHRoZSB4LXRpbGUgYW5k
IGxpbmVhciBjYXNlcyBhcmUgYWxtb3N0IGlkZW50aWNhbC4gVGhlIG9ubHkKZGlmZmVyZW5jZSBp
cyB0aGlzICsxIHdoaWNoIGlzIGFsd2F5cyBkb25lIGZvciBnbGsrLCBhbmQgb25seQpkb25lIGZv
ciBsaW5lYXIgb24gc2tsL2J4dC4gTGV0J3MgdW5pZnkgaXQgdG8gYSBzaW5nbGUgYnJhbmNoCndp
dGggYSBzcGVjaWFsIGNhc2UgZm9yIHRoZSArMSwganVzdCBsaWtlIHdlIGRvIGZvciB5LXRpbGUu
CgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCAxNSArKysrKysr
Ky0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggYmZiMTgwZmU4MDQ3Li42NWEzMjM2Y2UyNzcg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNDgxMCw3ICs0ODEwLDcgQEAgc2tsX3dtX21l
dGhvZDEoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgcGl4ZWxf
cmF0ZSwKIAl3bV9pbnRlcm1lZGlhdGVfdmFsID0gbGF0ZW5jeSAqIHBpeGVsX3JhdGUgKiBjcHA7
CiAJcmV0ID0gZGl2X2ZpeGVkMTYod21faW50ZXJtZWRpYXRlX3ZhbCwgMTAwMCAqIGRidWZfYmxv
Y2tfc2l6ZSk7CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCkKKwlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKIAkJcmV0ID0g
YWRkX2ZpeGVkMTZfdTMyKHJldCwgMSk7CiAKIAlyZXR1cm4gcmV0OwpAQCAtNDk0NSwxOCArNDk0
NSwxOSBAQCBza2xfY29tcHV0ZV93bV9wYXJhbXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsCiAJCQkJCSAgIHdwLT55X21pbl9zY2FubGluZXMsCiAJCQkJCSAgIHdw
LT5kYnVmX2Jsb2NrX3NpemUpOwogCi0JCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwKQor
CQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2
KSkKIAkJCWludGVybV9wYnBsKys7CiAKIAkJd3AtPnBsYW5lX2Jsb2Nrc19wZXJfbGluZSA9IGRp
dl9maXhlZDE2KGludGVybV9wYnBsLAogCQkJCQkJCXdwLT55X21pbl9zY2FubGluZXMpOwotCX0g
ZWxzZSBpZiAod3AtPnhfdGlsZWQgJiYgSVNfR0VOKGRldl9wcml2LCA5KSkgewotCQlpbnRlcm1f
cGJwbCA9IERJVl9ST1VORF9VUCh3cC0+cGxhbmVfYnl0ZXNfcGVyX2xpbmUsCi0JCQkJCSAgIHdw
LT5kYnVmX2Jsb2NrX3NpemUpOwotCQl3cC0+cGxhbmVfYmxvY2tzX3Blcl9saW5lID0gdTMyX3Rv
X2ZpeGVkMTYoaW50ZXJtX3BicGwpOwogCX0gZWxzZSB7CiAJCWludGVybV9wYnBsID0gRElWX1JP
VU5EX1VQKHdwLT5wbGFuZV9ieXRlc19wZXJfbGluZSwKLQkJCQkJICAgd3AtPmRidWZfYmxvY2tf
c2l6ZSkgKyAxOworCQkJCQkgICB3cC0+ZGJ1Zl9ibG9ja19zaXplKTsKKworCQlpZiAoIXdwLT54
X3RpbGVkIHx8CisJCSAgICBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxB
S0UoZGV2X3ByaXYpKQorCQkJaW50ZXJtX3BicGwrKzsKKwogCQl3cC0+cGxhbmVfYmxvY2tzX3Bl
cl9saW5lID0gdTMyX3RvX2ZpeGVkMTYoaW50ZXJtX3BicGwpOwogCX0KIAotLSAKMi4yNC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
