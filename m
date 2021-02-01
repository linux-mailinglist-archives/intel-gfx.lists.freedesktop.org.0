Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5C130AF63
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 19:34:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E587E6E86F;
	Mon,  1 Feb 2021 18:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B2D36E86F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 18:33:58 +0000 (UTC)
IronPort-SDR: CIWuFQx7yAHiLQ28uKfOeAIOuO4Y5gcjJa3AjlO09gjCGOyOsASrXkrHsz682rdIGvWQ/4/8pV
 oOKlpOfx7a+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180875595"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="180875595"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 10:33:58 -0800
IronPort-SDR: gL0l8H/liO3kaI+OjmO778QylwpI4Yv/nxZ9MYw/FePpC0GumQezulYXrlILB54bXLKmLZD87t
 tcxZ4RbawmXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="412865889"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 01 Feb 2021 10:33:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Feb 2021 20:33:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 20:33:32 +0200
Message-Id: <20210201183343.15292-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/15] drm/i915: Extract hsw_ddi_{enable,
 disable}_clock()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCllh
bmsgb3V0IHRoZSBIU1cvQkRXIGNvZGUgZnJvbSBpbnRlbF9kZGlfY2xrX3tzZWxlY3QsZGlzYWJs
ZX0oKQphbmQgcHV0IGl0IGludG8gdGhlIG5ldyBlbmNvZGVyIC57ZW5hYmxlLGRpc2FibGV9X2Ns
b2NrKCkgdmZ1bmNzLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jIHwgMzIgKysrKysrKysrKysrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MjYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYwppbmRleCBkYThiYjlhMmRlMGIuLmI0NmQ3YmUxOTk2YiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zNDMzLDkgKzM0MzMsNiBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfY2xrX3NlbGVjdChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwKIAogCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRFBMTF9DVFJMMiwgdmFsKTsK
IAotCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDkpIHsKLQkJaW50ZWxfZGVfd3Jp
dGUoZGV2X3ByaXYsIFBPUlRfQ0xLX1NFTChwb3J0KSwKLQkJCSAgICAgICBoc3dfcGxsX3RvX2Rk
aV9wbGxfc2VsKHBsbCkpOwogCX0KIAogCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmRwbGwubG9j
ayk7CkBAIC0zNDU4LDEyICszNDU1LDMwIEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9jbGtfZGlz
YWJsZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAl9IGVsc2UgaWYgKElTX0dFTjlf
QkMoZGV2X3ByaXYpKSB7CiAJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBEUExMX0NUUkwyLAog
CQkJICAgICAgIGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERQTExfQ1RSTDIpIHwgRFBMTF9DVFJM
Ml9ERElfQ0xLX09GRihwb3J0KSk7Ci0JfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwg
OSkgewotCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUE9SVF9DTEtfU0VMKHBvcnQpLAotCQkJ
ICAgICAgIFBPUlRfQ0xLX1NFTF9OT05FKTsKIAl9CiB9CiAKK3N0YXRpYyB2b2lkIGhzd19kZGlf
ZW5hYmxlX2Nsb2NrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAorCQkJCSBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKKwljb25zdCBz
dHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCA9IGNydGNfc3RhdGUtPnNoYXJlZF9kcGxsOwor
CWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsKKworCWlmIChkcm1fV0FSTl9PTigmZGV2
X3ByaXYtPmRybSwgIXBsbCkpCisJCXJldHVybjsKKworCWludGVsX2RlX3dyaXRlKGRldl9wcml2
LCBQT1JUX0NMS19TRUwocG9ydCksIGhzd19wbGxfdG9fZGRpX3BsbF9zZWwocGxsKSk7Cit9CisK
K3N0YXRpYyB2b2lkIGhzd19kZGlfZGlzYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlcikKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGVuY29kZXItPmJhc2UuZGV2KTsKKwllbnVtIHBvcnQgcG9ydCA9IGVuY29kZXItPnBvcnQ7CisK
KwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUE9SVF9DTEtfU0VMKHBvcnQpLCBQT1JUX0NMS19T
RUxfTk9ORSk7Cit9CisKIHN0YXRpYyB2b2lkIGludGVsX2RkaV9lbmFibGVfY2xvY2soc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpCiB7CkBAIC01NjEwLDYgKzU2MjUsMTEgQEAgdm9pZCBpbnRlbF9k
ZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0
KQogCWVuY29kZXItPmNsb25lYWJsZSA9IDA7CiAJZW5jb2Rlci0+cGlwZV9tYXNrID0gfjA7CiAK
KwlpZiAoSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJU19IQVNXRUxMKGRldl9wcml2KSkgewor
CQllbmNvZGVyLT5lbmFibGVfY2xvY2sgPSBoc3dfZGRpX2VuYWJsZV9jbG9jazsKKwkJZW5jb2Rl
ci0+ZGlzYWJsZV9jbG9jayA9IGhzd19kZGlfZGlzYWJsZV9jbG9jazsKKwl9CisKIAlpZiAoSVNf
REcxKGRldl9wcml2KSkKIAkJZW5jb2Rlci0+aHBkX3BpbiA9IGRnMV9ocGRfcGluKGRldl9wcml2
LCBwb3J0KTsKIAllbHNlIGlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSkKLS0gCjIuMjYuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
