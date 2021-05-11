Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D45DB37AB57
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F056EA79;
	Tue, 11 May 2021 16:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C87DF6EA7C
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 16:05:40 +0000 (UTC)
IronPort-SDR: /46DYJUrP657zlO8qcjm6/J8pA0LGq02DJSgNK/KoR6Xrq3KNdXH5OVlqwSlrMZkPiMKtkSUCx
 Am68PCFl23GA==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="260742025"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="260742025"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:05:38 -0700
IronPort-SDR: 6jMUitt9TVhXWbm7xdE8cD38ntsQ+qFCv/kRI909zkFo7Hft9CK1CoBG6+Nod6QhZ9571kPQFL
 i9r7LIKBt3OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="468974738"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 11 May 2021 09:05:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 May 2021 19:05:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 May 2021 19:05:27 +0300
Message-Id: <20210511160532.21446-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Extract intel_hdmi_bpc_possible()
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
Cc: Werner Sembach <wse@tuxedocomputers.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV4
dHJhY3QgaW50ZWxfaGRtaV9icGNfcG9zc2libGUoKSBmcm9tIGludGVsX2hkbWlfZGVlcF9jb2xv
cl9wb3NzaWJsZSgpCnNvIHRoYXQgd2UgY2FuIHJldXNlIGl0IGZvciBtb2RlIHZhbGlkYXRpb24u
CgpDYzogV2VybmVyIFNlbWJhY2ggPHdzZUB0dXhlZG9jb21wdXRlcnMuY29tPgpTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgNDYgKysrKysrKysr
KysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAxOSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCmluZGV4
IDkxYjAzZmUyMTM4Ny4uM2RlYzMzMDdjMmI1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2hkbWkuYwpAQCAtMTg2Miw2ICsxODYyLDMxIEBAIHN0YXRpYyBpbnQgaW50ZWxf
aGRtaV9wb3J0X2Nsb2NrKGludCBjbG9jaywgaW50IGJwYykKIAlyZXR1cm4gY2xvY2sgKiBicGMg
LyA4OwogfQogCitzdGF0aWMgYm9vbCBpbnRlbF9oZG1pX2JwY19wb3NzaWJsZShzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdG9yLAorCQkJCSAgICBpbnQgYnBjLCBib29sIGhhc19oZG1pX3Np
bmssIGJvb2wgeWNiY3I0MjBfb3V0cHV0KQoreworCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9p
bmZvICppbmZvID0gJmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvOworCWNvbnN0IHN0cnVjdCBkcm1f
aGRtaV9pbmZvICpoZG1pID0gJmluZm8tPmhkbWk7CisKKwlzd2l0Y2ggKGJwYykgeworCWNhc2Ug
MTI6CisJCWlmICh5Y2JjcjQyMF9vdXRwdXQpCisJCQlyZXR1cm4gaGRtaS0+eTQyMF9kY19tb2Rl
cyAmIERSTV9FRElEX1lDQkNSNDIwX0RDXzM2OworCQllbHNlCisJCQlyZXR1cm4gaW5mby0+ZWRp
ZF9oZG1pX2RjX21vZGVzICYgRFJNX0VESURfSERNSV9EQ18zNjsKKwljYXNlIDEwOgorCQlpZiAo
eWNiY3I0MjBfb3V0cHV0KQorCQkJcmV0dXJuIGhkbWktPnk0MjBfZGNfbW9kZXMgJiBEUk1fRURJ
RF9ZQ0JDUjQyMF9EQ18zMDsKKwkJZWxzZQorCQkJcmV0dXJuIGluZm8tPmVkaWRfaGRtaV9kY19t
b2RlcyAmIERSTV9FRElEX0hETUlfRENfMzA7CisJY2FzZSA4OgorCQlyZXR1cm4gdHJ1ZTsKKwlk
ZWZhdWx0OgorCQlNSVNTSU5HX0NBU0UoYnBjKTsKKwkJcmV0dXJuIGZhbHNlOworCX0KK30KKwog
c3RhdGljIGVudW0gZHJtX21vZGVfc3RhdHVzCiBpbnRlbF9oZG1pX21vZGVfY2xvY2tfdmFsaWQo
c3RydWN0IGludGVsX2hkbWkgKmhkbWksIGludCBjbG9jaywgYm9vbCBoYXNfaGRtaV9zaW5rKQog
ewpAQCAtMTk1MSwyOCArMTk3NiwxMSBAQCBib29sIGludGVsX2hkbWlfZGVlcF9jb2xvcl9wb3Nz
aWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJcmV0dXJu
IGZhbHNlOwogCiAJZm9yX2VhY2hfbmV3X2Nvbm5lY3Rvcl9pbl9zdGF0ZShzdGF0ZSwgY29ubmVj
dG9yLCBjb25uZWN0b3Jfc3RhdGUsIGkpIHsKLQkJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X2lu
Zm8gKmluZm8gPSAmY29ubmVjdG9yLT5kaXNwbGF5X2luZm87Ci0KIAkJaWYgKGNvbm5lY3Rvcl9z
dGF0ZS0+Y3J0YyAhPSBjcnRjX3N0YXRlLT51YXBpLmNydGMpCiAJCQljb250aW51ZTsKIAotCQlp
ZiAoeWNiY3I0MjBfb3V0cHV0KSB7Ci0JCQljb25zdCBzdHJ1Y3QgZHJtX2hkbWlfaW5mbyAqaGRt
aSA9ICZpbmZvLT5oZG1pOwotCi0JCQlpZiAoYnBjID09IDEyICYmICEoaGRtaS0+eTQyMF9kY19t
b2RlcyAmCi0JCQkJCSAgIERSTV9FRElEX1lDQkNSNDIwX0RDXzM2KSkKLQkJCQlyZXR1cm4gZmFs
c2U7Ci0JCQllbHNlIGlmIChicGMgPT0gMTAgJiYgIShoZG1pLT55NDIwX2RjX21vZGVzICYKLQkJ
CQkJCURSTV9FRElEX1lDQkNSNDIwX0RDXzMwKSkKLQkJCQlyZXR1cm4gZmFsc2U7Ci0JCX0gZWxz
ZSB7Ci0JCQlpZiAoYnBjID09IDEyICYmICEoaW5mby0+ZWRpZF9oZG1pX2RjX21vZGVzICYKLQkJ
CQkJICAgRFJNX0VESURfSERNSV9EQ18zNikpCi0JCQkJcmV0dXJuIGZhbHNlOwotCQkJZWxzZSBp
ZiAoYnBjID09IDEwICYmICEoaW5mby0+ZWRpZF9oZG1pX2RjX21vZGVzICYKLQkJCQkJCURSTV9F
RElEX0hETUlfRENfMzApKQotCQkJCXJldHVybiBmYWxzZTsKLQkJfQorCQlpZiAoIWludGVsX2hk
bWlfYnBjX3Bvc3NpYmxlKGNvbm5lY3RvciwgYnBjLCBoYXNfaGRtaV9zaW5rLCB5Y2JjcjQyMF9v
dXRwdXQpKQorCQkJcmV0dXJuIGZhbHNlOwogCX0KIAogCXJldHVybiB0cnVlOwotLSAKMi4yNi4z
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
