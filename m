Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC3B108E42
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 13:53:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D82B889F33;
	Mon, 25 Nov 2019 12:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC75E89F33
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 12:53:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 04:53:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="216926612"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2019 04:53:18 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Date: Mon, 25 Nov 2019 14:53:12 +0200
Message-Id: <20191125125313.17584-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/dp: fix DP audio for PORT_A on
 gen12+
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3RhcnRpbmcgd2l0aCBnZW4xMiwgUE9SVF9BIGNhbiBiZSBjb25uZWN0ZWQgdG8gYSB0cmFuc2Nv
ZGVyCndpdGggYXVkaW8gc3VwcG9ydC4gTW9kaWZ5IHRoZSBleGlzdGluZyBsb2dpYyB0aGF0IGRp
c2FibGVkCmF1ZGlvIG9uIFBPUlRfQSB1bmNvbmRpdGlvbmFsbHkuCgpTaWduZWQtb2ZmLWJ5OiBL
YWkgVmVobWFuZW4gPGthaS52ZWhtYW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTMgKysrKysrKysrKysrLQogMSBmaWxl
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggOWIxNWFjNGYyZmI2Li40NTE5YzMyZjZjMjQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTIyMzcsNiArMjIz
NywxNyBAQCBib29sIGludGVsX2RwX2xpbWl0ZWRfY29sb3JfcmFuZ2UoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJfQogfQogCitzdGF0aWMgYm9vbCBpbnRlbF9k
cF9wb3J0X2hhc19hdWRpbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCQkJ
ICAgIGVudW0gcG9ydCBwb3J0KQoreworCWlmIChJU19HNFgoZGV2X3ByaXYpKQorCQlyZXR1cm4g
ZmFsc2U7CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMiAmJiBwb3J0ID09IFBPUlRfQSkK
KwkJcmV0dXJuIGZhbHNlOworCisJcmV0dXJuIHRydWU7Cit9CisKIGludAogaW50ZWxfZHBfY29t
cHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQlzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsCkBAIC0yMjY5LDcgKzIyODAsNyBAQCBpbnRlbF9k
cF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJcmV0dXJu
IHJldDsKIAogCXBpcGVfY29uZmlnLT5oYXNfZHJycyA9IGZhbHNlOwotCWlmIChJU19HNFgoZGV2
X3ByaXYpIHx8IHBvcnQgPT0gUE9SVF9BKQorCWlmICghaW50ZWxfZHBfcG9ydF9oYXNfYXVkaW8o
ZGV2X3ByaXYsIHBvcnQpKQogCQlwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvID0gZmFsc2U7CiAJZWxz
ZSBpZiAoaW50ZWxfY29ubl9zdGF0ZS0+Zm9yY2VfYXVkaW8gPT0gSERNSV9BVURJT19BVVRPKQog
CQlwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvID0gaW50ZWxfZHAtPmhhc19hdWRpbzsKLS0gCjIuMTcu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
