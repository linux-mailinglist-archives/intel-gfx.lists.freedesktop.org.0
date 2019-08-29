Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8B0A28AB
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 23:15:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05D456E1ED;
	Thu, 29 Aug 2019 21:15:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E3AD6E1F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 21:15:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 14:15:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,445,1559545200"; d="scan'208";a="193105910"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga002.jf.intel.com with ESMTP; 29 Aug 2019 14:15:31 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 14:15:26 -0700
Message-Id: <20190829211526.30525-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829211526.30525-1-jose.souza@intel.com>
References: <20190829211526.30525-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: unify icp, tgp and mcc irq setup
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpVc2UgYSBz
aW5nbGUgZnVuY3Rpb24gdG8gc2V0dXAgdGhlIFNERSBpcnEgYW5kIG1ha2UgTUNDLCBJQ1AgYW5k
IFRHUCB1c2UKaXQsIGp1c3QgbGlrZSB3YXMgZG9uZSBmb3IgdGhlIGlycSBoYW5kbGVyLgoKU2ln
bmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDUwICsrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDI5IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IDU0MTM4MjgzMjEyNi4uMTM1
YzllZTU1ZTA3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTMzODUsNDIgKzMzODUsMzEg
QEAgc3RhdGljIHZvaWQgaWNwX2hwZF9kZXRlY3Rpb25fc2V0dXAoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAogCX0KIH0KIAotc3RhdGljIHZvaWQgaWNwX2hwZF9pcnFfc2V0dXAo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQorc3RhdGljIHZvaWQgaWNwX2hwZF9p
cnFfc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJICAgICAgdTMy
IHNkZV9kZGlfbWFzaywgdTMyIHNkZV90Y19tYXNrLAorCQkJICAgICAgdTMyIGRkaV9lbmFibGVf
bWFzaywgdTMyIHRjX2VuYWJsZV9tYXNrLAorCQkJICAgICAgY29uc3QgdTMyICpwaW5zKQogewog
CXUzMiBob3RwbHVnX2lycXMsIGVuYWJsZWRfaXJxczsKIAotCWhvdHBsdWdfaXJxcyA9IFNERV9E
RElfTUFTS19JQ1AgfCBTREVfVENfTUFTS19JQ1A7Ci0JZW5hYmxlZF9pcnFzID0gaW50ZWxfaHBk
X2VuYWJsZWRfaXJxcyhkZXZfcHJpdiwgaHBkX2ljcCk7CisJaG90cGx1Z19pcnFzID0gc2RlX2Rk
aV9tYXNrIHwgc2RlX3RjX21hc2s7CisJZW5hYmxlZF9pcnFzID0gaW50ZWxfaHBkX2VuYWJsZWRf
aXJxcyhkZXZfcHJpdiwgcGlucyk7CiAKIAlpYnhfZGlzcGxheV9pbnRlcnJ1cHRfdXBkYXRlKGRl
dl9wcml2LCBob3RwbHVnX2lycXMsIGVuYWJsZWRfaXJxcyk7CiAKLQlpY3BfaHBkX2RldGVjdGlv
bl9zZXR1cChkZXZfcHJpdiwgSUNQX0RESV9IUERfRU5BQkxFX01BU0ssCi0JCQkJSUNQX1RDX0hQ
RF9FTkFCTEVfTUFTSyk7CisJaWNwX2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYsIGRkaV9l
bmFibGVfbWFzaywgdGNfZW5hYmxlX21hc2spOwogfQogCisvKgorICogRUhMIGRvZXNuJ3QgbmVl
ZCBtb3N0IG9mIGdlbjExX2hwZF9pcnFfc2V0dXAsIGl0J3MgaGFuZGxpbmcgb25seSB0aGUKKyAq
IGVxdWl2YWxlbnQgb2YgU0RFLgorICovCiBzdGF0aWMgdm9pZCBtY2NfaHBkX2lycV9zZXR1cChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0JdTMyIGhvdHBsdWdfaXJxcywg
ZW5hYmxlZF9pcnFzOwotCi0JaG90cGx1Z19pcnFzID0gU0RFX0RESV9NQVNLX1RHUDsKLQllbmFi
bGVkX2lycXMgPSBpbnRlbF9ocGRfZW5hYmxlZF9pcnFzKGRldl9wcml2LCBocGRfbWNjKTsKLQot
CWlieF9kaXNwbGF5X2ludGVycnVwdF91cGRhdGUoZGV2X3ByaXYsIGhvdHBsdWdfaXJxcywgZW5h
YmxlZF9pcnFzKTsKLQotCWljcF9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCBUR1BfRERJ
X0hQRF9FTkFCTEVfTUFTSywgMCk7Ci19Ci0KLXN0YXRpYyB2b2lkIHRncF9ocGRfaXJxX3NldHVw
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKLXsKLQl1MzIgaG90cGx1Z19pcnFz
LCBlbmFibGVkX2lycXM7Ci0KLQlob3RwbHVnX2lycXMgPSBTREVfRERJX01BU0tfVEdQIHwgU0RF
X1RDX01BU0tfVEdQOwotCWVuYWJsZWRfaXJxcyA9IGludGVsX2hwZF9lbmFibGVkX2lycXMoZGV2
X3ByaXYsIGhwZF90Z3ApOwotCi0JaWJ4X2Rpc3BsYXlfaW50ZXJydXB0X3VwZGF0ZShkZXZfcHJp
diwgaG90cGx1Z19pcnFzLCBlbmFibGVkX2lycXMpOwotCi0JaWNwX2hwZF9kZXRlY3Rpb25fc2V0
dXAoZGV2X3ByaXYsIFRHUF9ERElfSFBEX0VOQUJMRV9NQVNLLAotCQkJCVRHUF9UQ19IUERfRU5B
QkxFX01BU0spOworCWljcF9ocGRfaXJxX3NldHVwKGRldl9wcml2LAorCQkJICBTREVfRERJX01B
U0tfVEdQLCAwLAorCQkJICBUR1BfRERJX0hQRF9FTkFCTEVfTUFTSywgMCwKKwkJCSAgaHBkX21j
Yyk7CiB9CiAKIHN0YXRpYyB2b2lkIGdlbjExX2hwZF9kZXRlY3Rpb25fc2V0dXAoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQpAQCAtMzQ2MCw5ICszNDQ5LDEzIEBAIHN0YXRpYyB2
b2lkIGdlbjExX2hwZF9pcnFfc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCWdlbjExX2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYpOwogCiAJaWYgKElOVEVMX1BD
SF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfVEdQKQotCQl0Z3BfaHBkX2lycV9zZXR1cChkZXZfcHJp
dik7CisJCWljcF9ocGRfaXJxX3NldHVwKGRldl9wcml2LCBTREVfRERJX01BU0tfVEdQLCBTREVf
VENfTUFTS19UR1AsCisJCQkJICBUR1BfRERJX0hQRF9FTkFCTEVfTUFTSywKKwkJCQkgIFRHUF9U
Q19IUERfRU5BQkxFX01BU0ssIGhwZF90Z3ApOwogCWVsc2UgaWYgKElOVEVMX1BDSF9UWVBFKGRl
dl9wcml2KSA+PSBQQ0hfSUNQKQotCQlpY3BfaHBkX2lycV9zZXR1cChkZXZfcHJpdik7CisJCWlj
cF9ocGRfaXJxX3NldHVwKGRldl9wcml2LCBTREVfRERJX01BU0tfSUNQLCBTREVfVENfTUFTS19J
Q1AsCisJCQkJICBJQ1BfRERJX0hQRF9FTkFCTEVfTUFTSywKKwkJCQkgIElDUF9UQ19IUERfRU5B
QkxFX01BU0ssIGhwZF9pY3ApOwogfQogCiBzdGF0aWMgdm9pZCBzcHRfaHBkX2RldGVjdGlvbl9z
ZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCkBAIC00MzQwLDcgKzQzMzMs
NiBAQCB2b2lkIGludGVsX2lycV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAkJCWRldl9wcml2LT5kaXNwbGF5LmhwZF9pcnFfc2V0dXAgPSBpOTE1X2hwZF9pcnFfc2V0
dXA7CiAJfSBlbHNlIHsKIAkJaWYgKEhBU19QQ0hfTUNDKGRldl9wcml2KSkKLQkJCS8qIEVITCBk
b2Vzbid0IG5lZWQgbW9zdCBvZiBnZW4xMV9ocGRfaXJxX3NldHVwICovCiAJCQlkZXZfcHJpdi0+
ZGlzcGxheS5ocGRfaXJxX3NldHVwID0gbWNjX2hwZF9pcnFfc2V0dXA7CiAJCWVsc2UgaWYgKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3Nl
dHVwID0gZ2VuMTFfaHBkX2lycV9zZXR1cDsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
