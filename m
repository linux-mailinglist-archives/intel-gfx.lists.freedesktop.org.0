Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A65D30EA1
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 15:12:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC71D8947A;
	Fri, 31 May 2019 13:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFD088945A
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 13:12:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 06:12:08 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 May 2019 06:12:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 May 2019 16:14:55 +0300
Message-Id: <4bbaff16abb3461ccb67abf1537f68bb50823390.1559308269.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1559308269.git.jani.nikula@intel.com>
References: <cover.1559308269.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 05/13] drm/i915/bios: use port info child
 pointer to determine LSPCON presence
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXZvaWQgaXRlcmF0aW5nIHRoZSBjaGlsZCBkZXZpY2VzLiBUaGlzIHNob3VsZCBiZSBhIG5vbi1m
dW5jdGlvbmFsCmNoYW5nZSwgYnV0IHRoZW9yZXRpY2FsbHkgdGhpcyBtaWdodCBlbmFibGUgTFNQ
Q09OIG9uIHNvbWUgZXh0cmEgcG9ydHMKd2l0aCBidWdneSBWQlRzLgoKQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfYmlvcy5jIHwgNTIgKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfYmlvcy5oIHwgIDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCA0NyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9iaW9zLmMK
aW5kZXggMWYzNGZmYTk2MjE5Li44Y2ZmMTdiNWY4OTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9i
aW9zLmMKQEAgLTIxODksNTkgKzIxODksMTkgQEAgaW50ZWxfYmlvc19pc19wb3J0X2hwZF9pbnZl
cnRlZChjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAogLyoqCiAgKiBpbnRl
bF9iaW9zX2lzX2xzcGNvbl9wcmVzZW50IC0gaWYgTFNQQ09OIGlzIGF0dGFjaGVkIG9uICVwb3J0
Ci0gKiBAZGV2X3ByaXY6CWk5MTUgZGV2aWNlIGluc3RhbmNlCisgKiBAaTkxNToJaTkxNSBkZXZp
Y2UgaW5zdGFuY2UKICAqIEBwb3J0Oglwb3J0IHRvIGNoZWNrCiAgKgogICogUmV0dXJuIHRydWUg
aWYgTFNQQ09OIGlzIHByZXNlbnQgb24gdGhpcyBwb3J0CiAgKi8KIGJvb2wKLWludGVsX2Jpb3Nf
aXNfbHNwY29uX3ByZXNlbnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkJ
CWVudW0gcG9ydCBwb3J0KQoraW50ZWxfYmlvc19pc19sc3Bjb25fcHJlc2VudChjb25zdCBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKKwkJCSAgICAgZW51bSBwb3J0IHBvcnQpCiB7Ci0J
Y29uc3Qgc3RydWN0IGNoaWxkX2RldmljZV9jb25maWcgKmNoaWxkOwotCWludCBpOwotCi0JaWYg
KCFIQVNfTFNQQ09OKGRldl9wcml2KSkKLQkJcmV0dXJuIGZhbHNlOwotCi0JZm9yIChpID0gMDsg
aSA8IGRldl9wcml2LT52YnQuY2hpbGRfZGV2X251bTsgaSsrKSB7Ci0JCWNoaWxkID0gZGV2X3By
aXYtPnZidC5jaGlsZF9kZXYgKyBpOwotCi0JCWlmICghY2hpbGQtPmxzcGNvbikKLQkJCWNvbnRp
bnVlOwotCi0JCXN3aXRjaCAoY2hpbGQtPmR2b19wb3J0KSB7Ci0JCWNhc2UgRFZPX1BPUlRfRFBB
OgotCQljYXNlIERWT19QT1JUX0hETUlBOgotCQkJaWYgKHBvcnQgPT0gUE9SVF9BKQotCQkJCXJl
dHVybiB0cnVlOwotCQkJYnJlYWs7Ci0JCWNhc2UgRFZPX1BPUlRfRFBCOgotCQljYXNlIERWT19Q
T1JUX0hETUlCOgotCQkJaWYgKHBvcnQgPT0gUE9SVF9CKQotCQkJCXJldHVybiB0cnVlOwotCQkJ
YnJlYWs7Ci0JCWNhc2UgRFZPX1BPUlRfRFBDOgotCQljYXNlIERWT19QT1JUX0hETUlDOgotCQkJ
aWYgKHBvcnQgPT0gUE9SVF9DKQotCQkJCXJldHVybiB0cnVlOwotCQkJYnJlYWs7Ci0JCWNhc2Ug
RFZPX1BPUlRfRFBEOgotCQljYXNlIERWT19QT1JUX0hETUlEOgotCQkJaWYgKHBvcnQgPT0gUE9S
VF9EKQotCQkJCXJldHVybiB0cnVlOwotCQkJYnJlYWs7Ci0JCWNhc2UgRFZPX1BPUlRfRFBGOgot
CQljYXNlIERWT19QT1JUX0hETUlGOgotCQkJaWYgKHBvcnQgPT0gUE9SVF9GKQotCQkJCXJldHVy
biB0cnVlOwotCQkJYnJlYWs7Ci0JCWRlZmF1bHQ6Ci0JCQlicmVhazsKLQkJfQotCX0KKwljb25z
dCBzdHJ1Y3QgY2hpbGRfZGV2aWNlX2NvbmZpZyAqY2hpbGQgPQorCQlpOTE1LT52YnQuZGRpX3Bv
cnRfaW5mb1twb3J0XS5jaGlsZDsKIAotCXJldHVybiBmYWxzZTsKKwlyZXR1cm4gSEFTX0xTUENP
TihpOTE1KSAmJiBjaGlsZCAmJiBjaGlsZC0+bHNwY29uOwogfQogCiBlbnVtIGF1eF9jaCBpbnRl
bF9iaW9zX3BvcnRfYXV4X2NoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2Jpb3MuaAppbmRleCA1NWZiMDgxODkyNmMuLjRlNDJjZmFmNjFhNyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfYmlvcy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuaApAQCAtMjM3LDcgKzIzNyw3IEBAIGJvb2wgaW50
ZWxfYmlvc19pc19wb3J0X2RwX2R1YWxfbW9kZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIGVudW0gcG9yCiBib29sIGludGVsX2Jpb3NfaXNfZHNpX3ByZXNlbnQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQgKnBvcnQpOwogYm9vbCBpbnRlbF9i
aW9zX2lzX3BvcnRfaHBkX2ludmVydGVkKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LAogCQkJCSAgICAgZW51bSBwb3J0IHBvcnQpOwotYm9vbCBpbnRlbF9iaW9zX2lzX2xzcGNv
bl9wcmVzZW50KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKK2Jvb2wgaW50ZWxf
Ymlvc19pc19sc3Bjb25fcHJlc2VudChjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKIAkJCQkgIGVudW0gcG9ydCBwb3J0KTsKIGVudW0gYXV4X2NoIGludGVsX2Jpb3NfcG9ydF9h
dXhfY2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCk7
CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
