Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEAA29AD74
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 14:36:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80E786EB76;
	Tue, 27 Oct 2020 13:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D3606EB76
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 13:36:04 +0000 (UTC)
IronPort-SDR: d0NFhU8K25YIdxN0CCnXDaQO2j0nOdWrR9Z50IFCYmqjg0cW8Y2gwRfj1Yx+OvcUWn34/nLniq
 IRw2jkCkANYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="155857967"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="155857967"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 06:36:03 -0700
IronPort-SDR: TpWM9frLlmah4djBTfKhmfT5pxmwWv25KNsJkn9NT+WJ3WNluEr2aGx5MVqOiTDKNHuojiBmLA
 ABxqtbnRF1Mw==
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="303753260"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 06:36:02 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Oct 2020 15:36:00 +0200
Message-Id: <20201027133600.3656665-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix error handling during DPRX link
 training
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

TWFrZSBzdXJlIHRvIHByb3BhZ2F0ZSB0aGUgZXJyb3IgcmVzdWx0IGZyb20gdGhlIERQUlggbGlu
ayB0cmFpbmluZwpwaGFzZS4gVGhlIGxhY2sgb2YgdGhpcyBicm9rZSB0aGUgbGluayB0cmFpbmlu
ZyBmYWxsLWJhY2sgbG9naWMgaWYgdGhlCmxpbmsgdHJhaW5pbmcgZmFpbGVkIGR1cmluZyB0aGUg
RFBSWCBwaGFzZS4KCkZpeGVzOiBiMzBlZGZkOGQwYjQgKCJkcm0vaTkxNTogU3dpdGNoIHRvIExU
VFBSIG5vbi10cmFuc3BhcmVudCBtb2RlIGxpbmsgdHJhaW5pbmciKQpSZWZlcmVuY2VzOiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzEzNzgKUmVwb3J0
ZWQtYnk6IEphc29uIEFuZHJ5dWsgPGphbmRyeXVrQGdtYWlsLmNvbT4KQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUg
RGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKaW5kZXggOTFkMzk3OTkwMmQwLi42
MzJkMGE3ZDg4NmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbGlua190cmFpbmluZy5jCkBAIC03NjgsNyArNzY4LDcgQEAgaW50ZWxfZHBfbGlu
a190cmFpbl9hbGxfcGh5cyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCX0KIAogCWlmIChy
ZXQpCi0JCWludGVsX2RwX2xpbmtfdHJhaW5fcGh5KGludGVsX2RwLCBjcnRjX3N0YXRlLCBEUF9Q
SFlfRFBSWCk7CisJCXJldCA9IGludGVsX2RwX2xpbmtfdHJhaW5fcGh5KGludGVsX2RwLCBjcnRj
X3N0YXRlLCBEUF9QSFlfRFBSWCk7CiAKIAlpZiAoaW50ZWxfZHAtPnNldF9pZGxlX2xpbmtfdHJh
aW4pCiAJCWludGVsX2RwLT5zZXRfaWRsZV9saW5rX3RyYWluKGludGVsX2RwLCBjcnRjX3N0YXRl
KTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
