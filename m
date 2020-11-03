Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B7E2A4EF5
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 19:34:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA6116E02A;
	Tue,  3 Nov 2020 18:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9729B6E02A
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 18:34:37 +0000 (UTC)
IronPort-SDR: PY6rrU9/6BAYEhD2K94ZjkieA43hLjrkCyy648askH1i5J8dBN4wzcZzJAMukRbZrEtnUQVHwQ
 uh1r1nH0HeHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="168317312"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="168317312"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 10:34:36 -0800
IronPort-SDR: XGUxtm89DLGCXNLK/IUP1rYakQjuEYQrTrjdt96/TpJfDGXaqmtlokg3qwmthlqK0naac8v8GZ
 5bn6PCNFxcwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="363714526"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 03 Nov 2020 10:34:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Nov 2020 20:34:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Nov 2020 20:34:32 +0200
Message-Id: <20201103183434.10677-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Pass intel_atomic_state to
 skl_build_pipe_wm()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClBh
c3MgdGhlIHdob2xlIGludGVsX2F0b21pY19zdGF0ZSB0byBza2xfYnVpbGRfcGlwZV93bSgpIHNv
IHdlCmNhbiBzdGFydCB0byBpdGVyYXRlIHN0dWZmIGNvbnRhaW5lcmQgaW4gdGhlIGNvbW1pdC4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDE2ICsrKysrKysr
LS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggZjU0Mzc1YjExOTY0Li40N2IyN2VlNTQ1Njgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNTU4Myw5ICs1NTgzLDEyIEBAIHN0YXRpYyBp
bnQgaWNsX2J1aWxkX3BsYW5lX3dtKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LAogCXJldHVybiAwOwogfQogCi1zdGF0aWMgaW50IHNrbF9idWlsZF9waXBlX3dtKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQorc3RhdGljIGludCBza2xfYnVpbGRfcGlwZV93
bShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKKwkJCSAgICAgc3RydWN0IGludGVs
X2NydGMgKmNydGMpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShjcnRjX3N0YXRlLT51YXBpLmNydGMtPmRldik7CisJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CisJc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUgPQorCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRl
KHN0YXRlLCBjcnRjKTsKIAlzdHJ1Y3Qgc2tsX3BpcGVfd20gKnBpcGVfd20gPSAmY3J0Y19zdGF0
ZS0+d20uc2tsLm9wdGltYWw7CiAJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZTsKIAljb25zdCBz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlOwpAQCAtNjA5Miw3ICs2MDk1LDYg
QEAgc2tsX2NvbXB1dGVfd20oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiB7CiAJ
c3RydWN0IGludGVsX2NydGMgKmNydGM7CiAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19j
cnRjX3N0YXRlOwotCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZTsKIAlp
bnQgcmV0LCBpOwogCiAJcmV0ID0gc2tsX2RkYl9hZGRfYWZmZWN0ZWRfcGlwZXMoc3RhdGUpOwpA
QCAtNjEwNCw5ICs2MTA2LDggQEAgc2tsX2NvbXB1dGVfd20oc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUpCiAJICogTm90ZSB0aGF0IHNrbF9kZGJfYWRkX2FmZmVjdGVkX3BpcGVzIG1h
eSBoYXZlIGFkZGVkIG1vcmUgQ1JUQydzIHRoYXQKIAkgKiB3ZXJlbid0IG90aGVyd2lzZSBiZWlu
ZyBtb2RpZmllZCBpZiBwaXBlIGFsbG9jYXRpb25zIGhhZCB0byBjaGFuZ2UuCiAJICovCi0JZm9y
X2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0
YXRlLAotCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsKLQkJcmV0ID0gc2tsX2J1aWxkX3Bp
cGVfd20obmV3X2NydGNfc3RhdGUpOworCWZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRl
KHN0YXRlLCBjcnRjLCBuZXdfY3J0Y19zdGF0ZSwgaSkgeworCQlyZXQgPSBza2xfYnVpbGRfcGlw
ZV93bShzdGF0ZSwgY3J0Yyk7CiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OwogCX0KQEAgLTYx
MjQsOCArNjEyNSw3IEBAIHNrbF9jb21wdXRlX3dtKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlKQogCSAqIGJhc2VkIG9uIGhvdyBtdWNoIGRkYiBpcyBhdmFpbGFibGUuIE5vdyB3ZSBj
YW4gYWN0dWFsbHkKIAkgKiBjaGVjayBpZiB0aGUgZmluYWwgd2F0ZXJtYXJrcyBjaGFuZ2VkLgog
CSAqLwotCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBv
bGRfY3J0Y19zdGF0ZSwKLQkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7CisJZm9yX2VhY2hf
bmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKSB7
CiAJCXJldCA9IHNrbF93bV9hZGRfYWZmZWN0ZWRfcGxhbmVzKHN0YXRlLCBjcnRjKTsKIAkJaWYg
KHJldCkKIAkJCXJldHVybiByZXQ7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
