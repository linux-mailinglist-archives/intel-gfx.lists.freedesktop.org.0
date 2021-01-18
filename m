Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D552C2FA5EF
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 17:21:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7B2A6E489;
	Mon, 18 Jan 2021 16:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6EB56E3BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 16:21:14 +0000 (UTC)
IronPort-SDR: JxrKm/CpjLP2pvyEosUCu6X2HwWkigIpAJGwZON17pOaCIYxI1ut2x9A37aTBuGSaW4mkgzwLw
 iV4iHcYYM7pg==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="165912908"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="165912908"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 08:21:10 -0800
IronPort-SDR: w+Gq5FxOv3VVx7S3/rSBFRPIUdGWtT8Yad467UHDSIB5l5sxfE27fcKCdKhDhJFnJvCyXDl8h4
 d8k43uBdEL8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="383618540"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 18 Jan 2021 08:21:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Jan 2021 18:21:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 18:21:07 +0200
Message-Id: <20210118162107.18424-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Disable TRAINING_PATTERN_SET before
 stopping the TPS transmission
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRQ
IHNwZWMgc2F5czoKIlRoZSBTb3VyY2UgZGV2aWNlIHNoYWxsIHN0YXJ0IHNlbmRpbmcgdGhlIGlk
bGUgcGF0dGVybiBhZnRlcgogaXQgaGFzIGNsZWFyZWQgdGhlIFRyYWluaW5nX1BhdHRlcm4gYnl0
ZSBpbiB0aGUgRFBDRC4iCgpDdXJyZW50bHkgd2UgZG8gdGhlc2UgaW4gb3BlcmF0aW9ucyBpbiB0
aGUgb3Bwb3NpdGUgb3JkZXIuClN3YXAgdGhlbSBhcm91bmQgdG8gbWF0Y2ggdGhlIHNwZWMuCgpD
YzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIHwgMTEgKysrKystLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWlu
aW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5p
bmcuYwppbmRleCBkOGM2ZDcwNTRkMTEuLjJkMzM5NmJmYzIwNyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKQEAgLTY5
Nyw5ICs2OTcsOSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9kcF9kaXNhYmxlX2RwY2RfdHJhaW5pbmdf
cGF0dGVybihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogICogQGludGVsX2RwOiBEUCBzdHJ1
Y3QKICAqIEBjcnRjX3N0YXRlOiBzdGF0ZSBmb3IgQ1JUQyBhdHRhY2hlZCB0byB0aGUgZW5jb2Rl
cgogICoKLSAqIFN0b3AgdGhlIGxpbmsgdHJhaW5pbmcgb2YgdGhlIEBpbnRlbF9kcCBwb3J0LCBk
aXNhYmxpbmcgdGhlIHRlc3QgcGF0dGVybgotICogc3ltYm9sIGdlbmVyYXRpb24gb24gdGhlIHBv
cnQgYW5kIGRpc2FibGluZyB0aGUgdHJhaW5pbmcgcGF0dGVybiBpbgotICogdGhlIHNpbmsncyBE
UENELgorICogU3RvcCB0aGUgbGluayB0cmFpbmluZyBvZiB0aGUgQGludGVsX2RwIHBvcnQsIGRp
c2FibGluZyB0aGUgdHJhaW5pbmcKKyAqIHBhdHRlcm4gaW4gdGhlIHNpbmsncyBEUENELCBhbmQg
ZGlzYWJsaW5nIHRoZSB0ZXN0IHBhdHRlcm4gc3ltYm9sCisgKiBnZW5lcmF0aW9uIG9uIHRoZSBw
b3J0LgogICoKICAqIFdoYXQgc3ltYm9scyBhcmUgb3V0cHV0IG9uIHRoZSBwb3J0IGFmdGVyIHRo
aXMgcG9pbnQgaXMKICAqIHBsYXRmb3JtIHNwZWNpZmljOiBPbiBEREkvVkxWL0NIViBwbGF0Zm9y
bXMgaXQgd2lsbCBiZSB0aGUgaWRsZSBwYXR0ZXJuCkBAIC03MTMsMTAgKzcxMyw5IEBAIHZvaWQg
aW50ZWxfZHBfc3RvcF9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiB7CiAJ
aW50ZWxfZHAtPmxpbmtfdHJhaW5lZCA9IHRydWU7CiAKLQlpbnRlbF9kcF9wcm9ncmFtX2xpbmtf
dHJhaW5pbmdfcGF0dGVybihpbnRlbF9kcCwKLQkJCQkJICAgICAgIGNydGNfc3RhdGUsCi0JCQkJ
CSAgICAgICBEUF9UUkFJTklOR19QQVRURVJOX0RJU0FCTEUpOwogCWludGVsX2RwX2Rpc2FibGVf
ZHBjZF90cmFpbmluZ19wYXR0ZXJuKGludGVsX2RwLCBEUF9QSFlfRFBSWCk7CisJaW50ZWxfZHBf
cHJvZ3JhbV9saW5rX3RyYWluaW5nX3BhdHRlcm4oaW50ZWxfZHAsIGNydGNfc3RhdGUsCisJCQkJ
CSAgICAgICBEUF9UUkFJTklOR19QQVRURVJOX0RJU0FCTEUpOwogfQogCiBzdGF0aWMgYm9vbAot
LSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
