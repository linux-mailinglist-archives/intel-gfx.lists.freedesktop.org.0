Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96684100971
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 17:44:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48A96E620;
	Mon, 18 Nov 2019 16:44:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09FEB6E620
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 16:44:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 08:44:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="204247524"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 18 Nov 2019 08:44:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Nov 2019 18:44:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 18:44:24 +0200
Message-Id: <20191118164430.27265-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118164430.27265-1-ville.syrjala@linux.intel.com>
References: <20191118164430.27265-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/10] drm/i915: Move crtc_state to tighter
 scope
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmlu
dGVsX21vZGVzZXRfc2V0dXBfaHdfc3RhdGUoKSBkb2Vzbid0IG5lZWQgdGhlIGNydGNfc3RhdGUg
YXQgdGhlCnRvcCBsZXZlbCBzY29wZS4gTW92ZSBpdCB0byB3aGVyZSBpdCdzIG5lZWRlZC4KClJl
dmlld2VkLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTEg
KysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRl
eCA4NTRjY2NhMmJmNmUuLjA4NGY5NGVjNzlhNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE3Nzg1LDcgKzE3Nzg1LDYgQEAgaW50ZWxfbW9k
ZXNldF9zZXR1cF9od19zdGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQkJICAgICBzdHJ1
Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggKmN0eCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Ci0Jc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGU7CiAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7CiAJc3RydWN0IGlu
dGVsX2NydGMgKmNydGM7CiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CkBAIC0xNzgxOCw3ICsx
NzgxNyw4IEBAIGludGVsX21vZGVzZXRfc2V0dXBfaHdfc3RhdGUoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwKIAkgKiB3YWl0cywgc28gd2UgbmVlZCB2YmxhbmsgaW50ZXJydXB0cyByZXN0b3JlZCBi
ZWZvcmVoYW5kLgogCSAqLwogCWZvcl9lYWNoX2ludGVsX2NydGMoJmRldl9wcml2LT5kcm0sIGNy
dGMpIHsKLQkJY3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0
ZSk7CisJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KKwkJCXRvX2ludGVs
X2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7CiAKIAkJZHJtX2NydGNfdmJsYW5rX3Jlc2V0
KCZjcnRjLT5iYXNlKTsKIApAQCAtMTc4MzIsNyArMTc4MzIsOSBAQCBpbnRlbF9tb2Rlc2V0X3Nl
dHVwX2h3X3N0YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCWludGVsX3Nhbml0aXplX2Vu
Y29kZXIoZW5jb2Rlcik7CiAKIAlmb3JfZWFjaF9pbnRlbF9jcnRjKCZkZXZfcHJpdi0+ZHJtLCBj
cnRjKSB7Ci0JCWNydGNfc3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3Rh
dGUpOworCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9CisJCQljcnRjX3N0
YXRlID0gdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKKwogCQlpbnRlbF9z
YW5pdGl6ZV9jcnRjKGNydGMsIGN0eCk7CiAJCWludGVsX2R1bXBfcGlwZV9jb25maWcoY3J0Y19z
dGF0ZSwgTlVMTCwgIltzZXR1cF9od19zdGF0ZV0iKTsKIAl9CkBAIC0xNzg2NSw5ICsxNzg2Nywx
MCBAQCBpbnRlbF9tb2Rlc2V0X3NldHVwX2h3X3N0YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
CiAJfQogCiAJZm9yX2VhY2hfaW50ZWxfY3J0YyhkZXYsIGNydGMpIHsKKwkJc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQorCQkJdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5i
YXNlLnN0YXRlKTsKIAkJdTY0IHB1dF9kb21haW5zOwogCi0JCWNydGNfc3RhdGUgPSB0b19pbnRl
bF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOwogCQlwdXRfZG9tYWlucyA9IG1vZGVzZXRf
Z2V0X2NydGNfcG93ZXJfZG9tYWlucyhjcnRjX3N0YXRlKTsKIAkJaWYgKFdBUk5fT04ocHV0X2Rv
bWFpbnMpKQogCQkJbW9kZXNldF9wdXRfcG93ZXJfZG9tYWlucyhkZXZfcHJpdiwgcHV0X2RvbWFp
bnMpOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
