Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D01EC307A31
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:00:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E3456E202;
	Thu, 28 Jan 2021 16:00:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 110246E202
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:00:02 +0000 (UTC)
IronPort-SDR: L+AlAGlV+eiHwzXkdEqCu8mhyfN5tmfhc2DoqCi6/kSmY2BPkens1oT9M/SGNIdHlqsQ9Q46kS
 EAVAvbfKNOZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="167353481"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="167353481"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 08:00:00 -0800
IronPort-SDR: e4LgFjvLl+F+caSaSrKWx3DyQT1KfOA/uzfDFkqBWRAeKzYILIN3X7mn4mpLiJg79T/Fc3ZLZv
 bCpQ708GMerw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="409186201"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 28 Jan 2021 07:59:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Jan 2021 17:59:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 17:59:47 +0200
Message-Id: <20210128155948.13678-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210128155948.13678-1-ville.syrjala@linux.intel.com>
References: <20210128155948.13678-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Move HDMI vswing programming to
 the right place
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBkb2N1bWVudGVkIHByb2dyYW1taW5nIHNlcXVlbmNlIGluZGljYXRlcyB0aGUgY29ycmVjdCBw
b2ludApmb3IgdGhlIHZzd2luZyBwcm9ncmFtbWluZyBpcyBqdXN0IGJlZm9yZSB3ZSBlbmFibGUg
dGhlIERESS4KTWFrZSBpdCBzby4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYyB8IDMwICsrKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDhmYmViOGMyNGVmYi4uZWZjZGY1NDk5OTAz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTM4OTMsNyAr
Mzg5Myw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVfZW5hYmxlX2hkbWkoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGln
X3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoZW5jb2Rlcik7CiAJc3RydWN0IGludGVsX2hkbWkgKmlu
dGVsX2hkbWkgPSAmZGlnX3BvcnQtPmhkbWk7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7Ci0JaW50IGxldmVsID0gaW50ZWxf
ZGRpX2hkbWlfbGV2ZWwoZW5jb2RlciwgY3J0Y19zdGF0ZSk7CiAKIAlpbnRlbF9kcF9kdWFsX21v
ZGVfc2V0X3RtZHNfb3V0cHV0KGludGVsX2hkbWksIHRydWUpOwogCWludGVsX2RkaV9jbGtfc2Vs
ZWN0KGVuY29kZXIsIGNydGNfc3RhdGUpOwpAQCAtMzkwNCwyMCArMzkwMyw2IEBAIHN0YXRpYyB2
b2lkIGludGVsX2RkaV9wcmVfZW5hYmxlX2hkbWkoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsCiAKIAlpY2xfcHJvZ3JhbV9tZ19kcF9tb2RlKGRpZ19wb3J0LCBjcnRjX3N0YXRlKTsK
IAotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQotCQl0Z2xfZGRpX3Zzd2luZ19zZXF1
ZW5jZShlbmNvZGVyLCBjcnRjX3N0YXRlLCBsZXZlbCk7Ci0JZWxzZSBpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA9PSAxMSkKLQkJaWNsX2RkaV92c3dpbmdfc2VxdWVuY2UoZW5jb2RlciwgY3J0Y19z
dGF0ZSwgbGV2ZWwpOwotCWVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKQotCQljbmxf
ZGRpX3Zzd2luZ19zZXF1ZW5jZShlbmNvZGVyLCBjcnRjX3N0YXRlLCBsZXZlbCk7Ci0JZWxzZSBp
ZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpCi0JCWJ4dF9kZGlfdnN3aW5nX3NlcXVlbmNlKGVuY29k
ZXIsIGNydGNfc3RhdGUsIGxldmVsKTsKLQllbHNlCi0JCWludGVsX3ByZXBhcmVfaGRtaV9kZGlf
YnVmZmVycyhlbmNvZGVyLCBsZXZlbCk7Ci0KLQlpZiAoSVNfR0VOOV9CQyhkZXZfcHJpdikpCi0J
CXNrbF9kZGlfc2V0X2lib29zdChlbmNvZGVyLCBjcnRjX3N0YXRlLCBsZXZlbCk7Ci0KIAlpbnRl
bF9kZGlfZW5hYmxlX3BpcGVfY2xvY2soZW5jb2RlciwgY3J0Y19zdGF0ZSk7CiAKIAlkaWdfcG9y
dC0+c2V0X2luZm9mcmFtZXMoZW5jb2RlciwKQEAgLTQyOTMsNiArNDI3OCw3IEBAIHN0YXRpYyB2
b2lkIGludGVsX2VuYWJsZV9kZGlfaGRtaShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXIt
PmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGVuY190
b19kaWdfcG9ydChlbmNvZGVyKTsKIAlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0g
Y29ubl9zdGF0ZS0+Y29ubmVjdG9yOworCWludCBsZXZlbCA9IGludGVsX2RkaV9oZG1pX2xldmVs
KGVuY29kZXIsIGNydGNfc3RhdGUpOwogCWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsK
IAogCWlmICghaW50ZWxfaGRtaV9oYW5kbGVfc2lua19zY3JhbWJsaW5nKGVuY29kZXIsIGNvbm5l
Y3RvciwKQEAgLTQzMDIsNiArNDI4OCwyMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9lbmFibGVfZGRp
X2hkbWkoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCQkgICAgIltDT05ORUNU
T1I6JWQ6JXNdIEZhaWxlZCB0byBjb25maWd1cmUgc2luayBzY3JhbWJsaW5nL1RNRFMgYml0IGNs
b2NrIHJhdGlvXG4iLAogCQkJICAgIGNvbm5lY3Rvci0+YmFzZS5pZCwgY29ubmVjdG9yLT5uYW1l
KTsKIAorCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQorCQl0Z2xfZGRpX3Zzd2luZ19z
ZXF1ZW5jZShlbmNvZGVyLCBjcnRjX3N0YXRlLCBsZXZlbCk7CisJZWxzZSBpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA9PSAxMSkKKwkJaWNsX2RkaV92c3dpbmdfc2VxdWVuY2UoZW5jb2RlciwgY3J0
Y19zdGF0ZSwgbGV2ZWwpOworCWVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKQorCQlj
bmxfZGRpX3Zzd2luZ19zZXF1ZW5jZShlbmNvZGVyLCBjcnRjX3N0YXRlLCBsZXZlbCk7CisJZWxz
ZSBpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpCisJCWJ4dF9kZGlfdnN3aW5nX3NlcXVlbmNlKGVu
Y29kZXIsIGNydGNfc3RhdGUsIGxldmVsKTsKKwllbHNlCisJCWludGVsX3ByZXBhcmVfaGRtaV9k
ZGlfYnVmZmVycyhlbmNvZGVyLCBsZXZlbCk7CisKKwlpZiAoSVNfR0VOOV9CQyhkZXZfcHJpdikp
CisJCXNrbF9kZGlfc2V0X2lib29zdChlbmNvZGVyLCBjcnRjX3N0YXRlLCBsZXZlbCk7CisKIAkv
KiBEaXNwbGF5IFdBICMxMTQzOiBza2wsa2JsLGNmbCAqLwogCWlmIChJU19HRU45X0JDKGRldl9w
cml2KSkgewogCQkvKgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
