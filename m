Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AFF30E9E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 15:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 571B68945A;
	Fri, 31 May 2019 13:12:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E0889453
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 13:12:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 06:12:05 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 May 2019 06:12:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 May 2019 16:14:54 +0300
Message-Id: <841c226efa424701161dd9f1793e0cf96b45a07c.1559308269.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1559308269.git.jani.nikula@intel.com>
References: <cover.1559308269.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 04/13] drm/i915/bios: use port info child
 pointer to determine HPD invert
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

QXZvaWQgaXRlcmF0aW5nIHRoZSBjaGlsZCBkZXZpY2VzLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Ymlvcy5jIHwgMzkgKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfYmlvcy5oIHwgIDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspLCAzNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9iaW9zLmMKaW5kZXgg
NWNkNGRkYzhmNWRkLi4xZjM0ZmZhOTYyMTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9iaW9zLmMK
QEAgLTIxNjksNDkgKzIxNjksMjIgQEAgYm9vbCBpbnRlbF9iaW9zX2lzX2RzaV9wcmVzZW50KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogLyoqCiAgKiBpbnRlbF9iaW9zX2lz
X3BvcnRfaHBkX2ludmVydGVkIC0gaXMgSFBEIGludmVydGVkIGZvciAlcG9ydAotICogQGRldl9w
cml2OglpOTE1IGRldmljZSBpbnN0YW5jZQorICogQGk5MTU6CWk5MTUgZGV2aWNlIGluc3RhbmNl
CiAgKiBAcG9ydDoJcG9ydCB0byBjaGVjawogICoKICAqIFJldHVybiB0cnVlIGlmIEhQRCBzaG91
bGQgYmUgaW52ZXJ0ZWQgZm9yICVwb3J0LgogICovCiBib29sCi1pbnRlbF9iaW9zX2lzX3BvcnRf
aHBkX2ludmVydGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKK2ludGVsX2Jp
b3NfaXNfcG9ydF9ocGRfaW52ZXJ0ZWQoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsCiAJCQkJZW51bSBwb3J0IHBvcnQpCiB7Ci0JY29uc3Qgc3RydWN0IGNoaWxkX2RldmljZV9j
b25maWcgKmNoaWxkOwotCWludCBpOworCWNvbnN0IHN0cnVjdCBjaGlsZF9kZXZpY2VfY29uZmln
ICpjaGlsZCA9CisJCWk5MTUtPnZidC5kZGlfcG9ydF9pbmZvW3BvcnRdLmNoaWxkOwogCi0JaWYg
KFdBUk5fT05fT05DRSghSVNfR0VOOV9MUChkZXZfcHJpdikpKQorCWlmIChXQVJOX09OX09OQ0Uo
IUlTX0dFTjlfTFAoaTkxNSkpKQogCQlyZXR1cm4gZmFsc2U7CiAKLQlmb3IgKGkgPSAwOyBpIDwg
ZGV2X3ByaXYtPnZidC5jaGlsZF9kZXZfbnVtOyBpKyspIHsKLQkJY2hpbGQgPSBkZXZfcHJpdi0+
dmJ0LmNoaWxkX2RldiArIGk7Ci0KLQkJaWYgKCFjaGlsZC0+aHBkX2ludmVydCkKLQkJCWNvbnRp
bnVlOwotCi0JCXN3aXRjaCAoY2hpbGQtPmR2b19wb3J0KSB7Ci0JCWNhc2UgRFZPX1BPUlRfRFBB
OgotCQljYXNlIERWT19QT1JUX0hETUlBOgotCQkJaWYgKHBvcnQgPT0gUE9SVF9BKQotCQkJCXJl
dHVybiB0cnVlOwotCQkJYnJlYWs7Ci0JCWNhc2UgRFZPX1BPUlRfRFBCOgotCQljYXNlIERWT19Q
T1JUX0hETUlCOgotCQkJaWYgKHBvcnQgPT0gUE9SVF9CKQotCQkJCXJldHVybiB0cnVlOwotCQkJ
YnJlYWs7Ci0JCWNhc2UgRFZPX1BPUlRfRFBDOgotCQljYXNlIERWT19QT1JUX0hETUlDOgotCQkJ
aWYgKHBvcnQgPT0gUE9SVF9DKQotCQkJCXJldHVybiB0cnVlOwotCQkJYnJlYWs7Ci0JCWRlZmF1
bHQ6Ci0JCQlicmVhazsKLQkJfQotCX0KLQotCXJldHVybiBmYWxzZTsKKwlyZXR1cm4gY2hpbGQg
JiYgY2hpbGQtPmhwZF9pbnZlcnQ7CiB9CiAKIC8qKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfYmlvcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfYmlvcy5o
CmluZGV4IDdiYWM1M2YyMTllMS4uNTVmYjA4MTg5MjZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9iaW9zLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Ymlvcy5oCkBAIC0yMzUsNyArMjM1LDcgQEAgYm9vbCBpbnRlbF9iaW9zX2lzX3BvcnRfcHJlc2Vu
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3IKIGJvb2wg
aW50ZWxfYmlvc19pc19wb3J0X2VkcChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
IGVudW0gcG9ydCBwb3J0KTsKIGJvb2wgaW50ZWxfYmlvc19pc19wb3J0X2RwX2R1YWxfbW9kZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KTsKIGJvb2wg
aW50ZWxfYmlvc19pc19kc2lfcHJlc2VudChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIGVudW0gcG9ydCAqcG9ydCk7Ci1ib29sIGludGVsX2Jpb3NfaXNfcG9ydF9ocGRfaW52ZXJ0
ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorYm9vbCBpbnRlbF9iaW9zX2lz
X3BvcnRfaHBkX2ludmVydGVkKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAog
CQkJCSAgICAgZW51bSBwb3J0IHBvcnQpOwogYm9vbCBpbnRlbF9iaW9zX2lzX2xzcGNvbl9wcmVz
ZW50KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkgIGVudW0gcG9ydCBw
b3J0KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
