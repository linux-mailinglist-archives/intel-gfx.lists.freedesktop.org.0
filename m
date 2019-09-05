Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51200AAD22
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 22:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9373189F4A;
	Thu,  5 Sep 2019 20:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4150889F4A
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 20:35:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 13:35:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,471,1559545200"; d="scan'208";a="188094146"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by orsmga006.jf.intel.com with ESMTP; 05 Sep 2019 13:35:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Sep 2019 13:35:27 -0700
Message-Id: <20190905203527.25487-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Set proper voltage level for 324 and
 326.4 cdclks
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

VGhlc2UgbmV3IGNkY2xrIHZhbHVlcyBzaG91bGQgYmUgYWNjb3VudGVkIGZvciBpbiB0aGUgdm9s
dGFnZSBsZXZlbApzZWxlY3Rpb24gKHdlIGNhbiB1c2UgdGhlIHNhbWUgdm9sdGFnZSBsZXZlbCBh
cyAzMDcuMiBhbmQgMzEyIHJhdGhlcgp0aGFuIGJ1bXBpbmcgdXAgdXAgdG8gdGhlIG5leHQgaGln
aGVyIGxldmVsKS4KCkJzcGVjOiAyMTgwOQpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+Ci0tLQpUaGUgRUhMIGFuZCBUR0wgcGFydHMgb2YgdGhlIGJzcGVjIGhh
dmVuJ3QgYWN0dWFsbHkgdXBkYXRlZCB0aGVpcgp2b2x0YWdlIHJlcXVpcmVtZW50IHRhYmxlcyB0
byBtZW50aW9uIHRoZSBuZXcgY2RjbGsgZnJlcXVlbmNpZXMgYXQgYWxsLApzbyBJJ20gYXNzdW1p
bmcgaGVyZSB0aGF0IHRob3NlIHBsYXRmb3JtcyB3aWxsIGZvbGxvdyBJQ0wncyBsZWFkIG9mCnVz
aW5nIHRoZSBzYW1lIHZvbHRhZ2UgbGV2ZWwgYXMgdGhlIDMwNy8zMTIgY2xvY2tzLiAgSSd2ZSBm
aWxlZCBhIHRpY2tldAp3aXRoIHRoZSBoYXJkd2FyZSB0ZWFtIHRvIGNvbmZpcm0gdGhpczsgd2Ug
c2hvdWxkIGhvbGQgb2ZmIG9uIGFjdHVhbGx5Cm1lcmdpbmcgdGhlc2UgY2hhbmdlcyB1bnRpbCB3
ZSBnZXQgYSByZXNwb25zZS4KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nk
Y2xrLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
ZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCmluZGV4
IGQzZTU2NjI4YWY3MC4uMTMyOWQzZTYwZTI2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5jCkBAIC0xODMzLDcgKzE4MzMsNyBAQCBzdGF0aWMgaW50IGljbF9j
YWxjX2NkY2xrX3BsbF92Y28oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQg
Y2RjbGspCiBzdGF0aWMgdTggaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIGludCBjZGNsaykKIHsKIAlpZiAoSVNfRUxLSEFSVExBS0UoZGV2
X3ByaXYpKSB7Ci0JCWlmIChjZGNsayA+IDMxMjAwMCkKKwkJaWYgKGNkY2xrID4gMzI2NDAwKQog
CQkJcmV0dXJuIDI7CiAJCWVsc2UgaWYgKGNkY2xrID4gMTgwMDAwKQogCQkJcmV0dXJuIDE7CkBA
IC0xODQyLDcgKzE4NDIsNyBAQCBzdGF0aWMgdTggaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCBjZGNsaykKIAl9IGVsc2UgewogCQlp
ZiAoY2RjbGsgPiA1NTY4MDApCiAJCQlyZXR1cm4gMjsKLQkJZWxzZSBpZiAoY2RjbGsgPiAzMTIw
MDApCisJCWVsc2UgaWYgKGNkY2xrID4gMzI2NDAwKQogCQkJcmV0dXJuIDE7CiAJCWVsc2UKIAkJ
CXJldHVybiAwOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
