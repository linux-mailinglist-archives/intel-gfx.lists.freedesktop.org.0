Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EDDCB646
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 10:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82F8D6EAFA;
	Fri,  4 Oct 2019 08:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F3666EAFA
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 08:35:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 01:35:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,255,1566889200"; d="scan'208";a="392226345"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga005.fm.intel.com with ESMTP; 04 Oct 2019 01:35:24 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 13:56:08 +0530
Message-Id: <20191004082610.24664-3-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004082610.24664-1-swati2.sharma@intel.com>
References: <20191004082610.24664-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/color: move check of gamma_enable
 to specific func/platform
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW92ZWQgY29tbW9uIGNvZGUgdG8gY2hlY2sgZ2FtbWFfZW5hYmxlIHRvIHNwZWNpZmljIGZ1bmNz
IHBlciBwbGF0Zm9ybQppbiBiaXRfcHJlY2lzaW9uIGZ1bmMuIGljbCBkb2Vzbid0IHN1cHBvcnQg
dGhhdCBhbmQgY2h2IGhhcyBzZXBhcmF0ZQplbmFibGUga25vYiBmb3IgQ0dNIExVVC4KClNpZ25l
ZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMjMgKysrKysrKysrKysr
KysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCmluZGV4IDhm
MDIzMTNhN2ZlZi4uNDRjZTc1ZjA1MWFkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jCkBAIC0xNDIwLDYgKzE0MjAsOSBAQCBzdGF0aWMgaW50IGljbF9jb2xv
cl9jaGVjayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAogc3RhdGljIGlu
dCBpOXh4X2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKIHsKKwlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKKwkJcmV0dXJuIDA7
CisKIAlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpIHsKIAljYXNlIEdBTU1BX01PREVf
TU9ERV84QklUOgogCQlyZXR1cm4gODsKQEAgLTE0MzMsNiArMTQzNiw5IEBAIHN0YXRpYyBpbnQg
aTl4eF9nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCiAKIHN0YXRpYyBpbnQgaWxrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKKwlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2Vu
YWJsZSkKKwkJcmV0dXJuIDA7CisKIAlpZiAoKGNydGNfc3RhdGUtPmNzY19tb2RlICYgQ1NDX1BP
U0lUSU9OX0JFRk9SRV9HQU1NQSkgPT0gMCkKIAkJcmV0dXJuIDA7CiAKQEAgLTE0NDksMTQgKzE0
NTUsMjQgQEAgc3RhdGljIGludCBpbGtfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCiBzdGF0aWMgaW50IGNodl9nYW1tYV9wcmVjaXNp
b24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7Ci0JaWYgKGNy
dGNfc3RhdGUtPmNnbV9tb2RlICYgQ0dNX1BJUEVfTU9ERV9HQU1NQSkKLQkJcmV0dXJuIDEwOwor
CWlmIChjcnRjX3N0YXRlLT5jZ21fbW9kZSkgeworCQlpZiAoKGNydGNfc3RhdGUtPmNnbV9tb2Rl
ICYgQ0dNX1BJUEVfTU9ERV9HQU1NQSkgPT0gMCkKKwkJCXJldHVybiAwOworCQllbHNlCisJCQly
ZXR1cm4gMTA7CisJfQorCisJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpCisJCXJldHVy
biAwOwogCWVsc2UKIAkJcmV0dXJuIGk5eHhfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOwog
fQogCiBzdGF0aWMgaW50IGdsa19nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CisJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUp
CisJCXJldHVybiAwOworCiAJc3dpdGNoIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKSB7CiAJY2Fz
ZSBHQU1NQV9NT0RFX01PREVfOEJJVDoKIAkJcmV0dXJuIDg7CkBAIC0xNDczLDkgKzE0ODksNiBA
QCBpbnQgaW50ZWxfY29sb3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdAogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9f
aW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOwogCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwogCi0JaWYgKCFjcnRjX3N0
YXRlLT5nYW1tYV9lbmFibGUpCi0JCXJldHVybiAwOwotCiAJaWYgKEhBU19HTUNIKGRldl9wcml2
KSkgewogCQlpZiAoSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpCiAJCQlyZXR1cm4gY2h2X2dhbW1h
X3ByZWNpc2lvbihjcnRjX3N0YXRlKTsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
