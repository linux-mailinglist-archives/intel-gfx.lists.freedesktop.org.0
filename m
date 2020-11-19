Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFAC2B9AFA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 19:54:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA0A689F0A;
	Thu, 19 Nov 2020 18:54:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B6D89DFB
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 18:54:32 +0000 (UTC)
IronPort-SDR: 6F0hTprcWByKeAhLLaSifTSg9LN7LQNWJJiF73g47PbS/ON3Q8S/MPHeAiCnsQf7xz02yqSzxt
 Z6obx4DBmTnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="171441790"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="171441790"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 10:54:32 -0800
IronPort-SDR: CSSPE5rd7LbIDEG66jiWHug8GDdHvGwzFbA9Fw56886peLaOYwEMbOOsp8AanVv8n2PrMMjcJ3
 JlTshQNx2++A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="357467170"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 19 Nov 2020 10:54:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Nov 2020 20:54:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 20:53:58 +0200
Message-Id: <20201119185401.31883-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
References: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/13] drm/i915: Reuse intel_adjusted_rate() for
 pfit pixel rate adjustment
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cGxhY2UgdGhlIGhhbmQgcm9sbGVkIHBmaXQgZG93bnNjYWxlIGNhbGN1bGF0aW9ucyB3aXRoCmlu
dGVsX2FkanVzdGVkX3JhdGUoKS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F0b21pY19wbGFuZS5jIHwgIDYgKystLS0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hdG9taWNfcGxhbmUuaCB8ICA0ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDIzICsrKysrLS0tLS0tLS0tLS0tLS0KIDMgZmlsZXMg
Y2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKaW5kZXggNWM5MjE0
Nzk3NWZlLi45OTlhMDYwYWM5NTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwpAQCAtMTMzLDkgKzEzMyw5IEBAIGludGVsX3BsYW5l
X2Rlc3Ryb3lfc3RhdGUoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiAJa2ZyZWUocGxhbmVfc3Rh
dGUpOwogfQogCi1zdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2FkanVzdGVkX3JhdGUoY29uc3Qg
c3RydWN0IGRybV9yZWN0ICpzcmMsCi0JCQkJCWNvbnN0IHN0cnVjdCBkcm1fcmVjdCAqZHN0LAot
CQkJCQl1bnNpZ25lZCBpbnQgcmF0ZSkKK3Vuc2lnbmVkIGludCBpbnRlbF9hZGp1c3RlZF9yYXRl
KGNvbnN0IHN0cnVjdCBkcm1fcmVjdCAqc3JjLAorCQkJCSBjb25zdCBzdHJ1Y3QgZHJtX3JlY3Qg
KmRzdCwKKwkJCQkgdW5zaWduZWQgaW50IHJhdGUpCiB7CiAJdW5zaWduZWQgaW50IHNyY193LCBz
cmNfaCwgZHN0X3csIGRzdF9oOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hdG9taWNfcGxhbmUuaAppbmRleCA5MTJiMzExZjE1M2UuLmEyN2JjMDkxYWNjOCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxh
bmUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFu
ZS5oCkBAIC0xMCw2ICsxMCw3IEBACiAKIHN0cnVjdCBkcm1fcGxhbmU7CiBzdHJ1Y3QgZHJtX3By
b3BlcnR5Oworc3RydWN0IGRybV9yZWN0Owogc3RydWN0IGludGVsX2F0b21pY19zdGF0ZTsKIHN0
cnVjdCBpbnRlbF9jcnRjOwogc3RydWN0IGludGVsX2NydGNfc3RhdGU7CkBAIC0xOCw2ICsxOSw5
IEBAIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZTsKIAogZXh0ZXJuIGNvbnN0IHN0cnVjdCBkcm1f
cGxhbmVfaGVscGVyX2Z1bmNzIGludGVsX3BsYW5lX2hlbHBlcl9mdW5jczsKIAordW5zaWduZWQg
aW50IGludGVsX2FkanVzdGVkX3JhdGUoY29uc3Qgc3RydWN0IGRybV9yZWN0ICpzcmMsCisJCQkJ
IGNvbnN0IHN0cnVjdCBkcm1fcmVjdCAqZHN0LAorCQkJCSB1bnNpZ25lZCBpbnQgcmF0ZSk7CiB1
bnNpZ25lZCBpbnQgaW50ZWxfcGxhbmVfcGl4ZWxfcmF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCQkgICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZSk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKaW5kZXggMTQxZDg0MTE4Mjc5Li4yNDY4NDI3M2I4ZDcgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC04MTU2LDcgKzgxNTYs
NyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9jcnRjX3N1cHBvcnRzX2RvdWJsZV93aWRlKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogc3RhdGljIHUzMiBpbGtfcGlwZV9waXhlbF9yYXRlKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXUzMiBwaXhlbF9y
YXRlID0gY3J0Y19zdGF0ZS0+aHcucGlwZV9tb2RlLmNydGNfY2xvY2s7Ci0JdW5zaWduZWQgaW50
IHBpcGVfdywgcGlwZV9oLCBwZml0X3csIHBmaXRfaDsKKwlzdHJ1Y3QgZHJtX3JlY3Qgc3JjOwog
CiAJLyoKIAkgKiBXZSBvbmx5IHVzZSBJRi1JRCBpbnRlcmxhY2luZy4gSWYgd2UgZXZlciB1c2UK
QEAgLTgxNjYsMjMgKzgxNjYsMTIgQEAgc3RhdGljIHUzMiBpbGtfcGlwZV9waXhlbF9yYXRlKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCWlmICghY3J0Y19zdGF0
ZS0+cGNoX3BmaXQuZW5hYmxlZCkKIAkJcmV0dXJuIHBpeGVsX3JhdGU7CiAKLQlwaXBlX3cgPSBj
cnRjX3N0YXRlLT5waXBlX3NyY193OwotCXBpcGVfaCA9IGNydGNfc3RhdGUtPnBpcGVfc3JjX2g7
CisJZHJtX3JlY3RfaW5pdCgmc3JjLCAwLCAwLAorCQkgICAgICBjcnRjX3N0YXRlLT5waXBlX3Ny
Y193IDw8IDE2LAorCQkgICAgICBjcnRjX3N0YXRlLT5waXBlX3NyY19oIDw8IDE2KTsKIAotCXBm
aXRfdyA9IGRybV9yZWN0X3dpZHRoKCZjcnRjX3N0YXRlLT5wY2hfcGZpdC5kc3QpOwotCXBmaXRf
aCA9IGRybV9yZWN0X2hlaWdodCgmY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZHN0KTsKLQotCWlmIChw
aXBlX3cgPCBwZml0X3cpCi0JCXBpcGVfdyA9IHBmaXRfdzsKLQlpZiAocGlwZV9oIDwgcGZpdF9o
KQotCQlwaXBlX2ggPSBwZml0X2g7Ci0KLQlpZiAoZHJtX1dBUk5fT04oY3J0Y19zdGF0ZS0+dWFw
aS5jcnRjLT5kZXYsCi0JCQkhcGZpdF93IHx8ICFwZml0X2gpKQotCQlyZXR1cm4gcGl4ZWxfcmF0
ZTsKLQotCXJldHVybiBkaXZfdTY0KG11bF91MzJfdTMyKHBpeGVsX3JhdGUsIHBpcGVfdyAqIHBp
cGVfaCksCi0JCSAgICAgICBwZml0X3cgKiBwZml0X2gpOworCXJldHVybiBpbnRlbF9hZGp1c3Rl
ZF9yYXRlKCZzcmMsICZjcnRjX3N0YXRlLT5wY2hfcGZpdC5kc3QsCisJCQkJICAgcGl4ZWxfcmF0
ZSk7CiB9CiAKIHN0YXRpYyB2b2lkIGludGVsX21vZGVfZnJvbV9jcnRjX3RpbWluZ3Moc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgKm1vZGUsCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
