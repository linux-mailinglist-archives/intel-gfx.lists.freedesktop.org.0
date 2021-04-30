Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 965C536FDD6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 17:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F13F36F553;
	Fri, 30 Apr 2021 15:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40D566F550
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 15:34:58 +0000 (UTC)
IronPort-SDR: o5gPLMBfvuQoSCXYVuQznLy09Li1xYc2IKWgqo7udmXGArfxCZfhIlmp3enHrHb8kOGqIXX7zk
 HoDSKrxU9YgQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="197348801"
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="197348801"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 08:34:57 -0700
IronPort-SDR: j/cuRgaEg12i4n1aFtSviuGQXyZPj5jIVoGakXaX788849UPKadBnJECQWvN4L8MdA0QX6J/bt
 engvVz9a2yGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="466855729"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 30 Apr 2021 08:34:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Apr 2021 18:34:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Apr 2021 18:34:42 +0300
Message-Id: <20210430153444.29270-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210430153444.29270-1-ville.syrjala@linux.intel.com>
References: <20210430153444.29270-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Use intel_de_rmw() in skl cdclk
 programming
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
cGxhY2UgdGhlIGhhbmQgcm9sbGVkIHJtdyBzZXF1ZW5jZXMgd2l0aCBpbnRlbF9kZV9ybXcoKS4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwg
MjUgKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMo
KyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2RjbGsuYwppbmRleCAxZWY4ZGEyYmY4NTYuLmQ3ZDA1MTk2OGFmNiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtOTY5LDIwICs5NjksMTYgQEAgc3Rh
dGljIHUzMiBza2xfZHBsbDBfbGlua19yYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwgaW50IHZjbykKIAogc3RhdGljIHZvaWQgc2tsX2RwbGwwX2VuYWJsZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCB2Y28pCiB7Ci0JdTMyIHZhbDsKLQotCXZhbCA9
IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERQTExfQ1RSTDEpOwotCi0JdmFsICY9IH4oRFBMTF9D
VFJMMV9IRE1JX01PREUoU0tMX0RQTEwwKSB8IERQTExfQ1RSTDFfU1NDKFNLTF9EUExMMCkgfAot
CQkgRFBMTF9DVFJMMV9MSU5LX1JBVEVfTUFTSyhTS0xfRFBMTDApKTsKLQl2YWwgfD0gRFBMTF9D
VFJMMV9PVkVSUklERShTS0xfRFBMTDApOwotCXZhbCB8PSBza2xfZHBsbDBfbGlua19yYXRlKGRl
dl9wcml2LCB2Y28pOwotCi0JaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERQTExfQ1RSTDEsIHZh
bCk7CisJaW50ZWxfZGVfcm13KGRldl9wcml2LCBEUExMX0NUUkwxLAorCQkgICAgIERQTExfQ1RS
TDFfSERNSV9NT0RFKFNLTF9EUExMMCkgfAorCQkgICAgIERQTExfQ1RSTDFfU1NDKFNLTF9EUExM
MCkgfAorCQkgICAgIERQTExfQ1RSTDFfTElOS19SQVRFX01BU0soU0tMX0RQTEwwKSwKKwkJICAg
ICBEUExMX0NUUkwxX09WRVJSSURFKFNLTF9EUExMMCkgfAorCQkgICAgIHNrbF9kcGxsMF9saW5r
X3JhdGUoZGV2X3ByaXYsIHZjbykpOwogCWludGVsX2RlX3Bvc3RpbmdfcmVhZChkZXZfcHJpdiwg
RFBMTF9DVFJMMSk7CiAKLQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgTENQTEwxX0NUTCwKLQkJ
ICAgICAgIGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIExDUExMMV9DVEwpIHwgTENQTExfUExMX0VO
QUJMRSk7CisJaW50ZWxfZGVfcm13KGRldl9wcml2LCBMQ1BMTDFfQ1RMLAorCQkgICAgIDAsIExD
UExMX1BMTF9FTkFCTEUpOwogCiAJaWYgKGludGVsX2RlX3dhaXRfZm9yX3NldChkZXZfcHJpdiwg
TENQTEwxX0NUTCwgTENQTExfUExMX0xPQ0ssIDUpKQogCQlkcm1fZXJyKCZkZXZfcHJpdi0+ZHJt
LCAiRFBMTDAgbm90IGxvY2tlZFxuIik7CkBAIC05OTUsOCArOTkxLDkgQEAgc3RhdGljIHZvaWQg
c2tsX2RwbGwwX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCB2
Y28pCiAKIHN0YXRpYyB2b2lkIHNrbF9kcGxsMF9kaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIHsKLQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgTENQTEwxX0NUTCwK
LQkJICAgICAgIGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIExDUExMMV9DVEwpICYgfkxDUExMX1BM
TF9FTkFCTEUpOworCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgTENQTEwxX0NUTCwKKwkJICAgICBM
Q1BMTF9QTExfRU5BQkxFLCAwKTsKKwogCWlmIChpbnRlbF9kZV93YWl0X2Zvcl9jbGVhcihkZXZf
cHJpdiwgTENQTEwxX0NUTCwgTENQTExfUExMX0xPQ0ssIDEpKQogCQlkcm1fZXJyKCZkZXZfcHJp
di0+ZHJtLCAiQ291bGRuJ3QgZGlzYWJsZSBEUExMMFxuIik7CiAKLS0gCjIuMjYuMwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
