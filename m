Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B63B220FFB0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:56:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEF176E544;
	Tue, 30 Jun 2020 21:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD46C6E526
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 21:56:31 +0000 (UTC)
IronPort-SDR: n6n4jhcHIdDHePW3REdubion+ovrt931baGY8bN3MzrKrP0cYUAOjBefhWh4qSbL/P+aVVQmg4
 R9ZYQOfTLA8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="164391952"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="164391952"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:56:31 -0700
IronPort-SDR: SXiaY/KNOWZ0Eg+vvPJAIq3iED2R+TAW8pHtE3RmsHTzZawWMi6xoGRhC/T+n0h8Ml+51OnyOF
 BmDi/uYGazeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="321544881"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 30 Jun 2020 14:56:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 00:56:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 00:55:58 +0300
Message-Id: <20200630215601.28557-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
References: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/12] drm/i915: Move hpd_pin setup to encoder
 init
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSBEUC9IRE1JL0RESSBlbmNvZGVycyBpbml0IHRoZWlyIGhwZF9waW4gZnJvbSB0aGUK
Y29ubmVjdG9yIGluaXQuIExldCdzIG1vdmUgaXQgdG8gdGhlIGVuY29kZXIgaW5pdCBzbyB0aGF0
CndlIGRvbid0IG5lZWQgdG8gYWRkIHBsYXRmb3JtIHNwZWNpZmljIGp1bmsgdG8gdGhlIGNvbm5l
Y3Rvcgppbml0ICh3aGljaCBpcyBzaGFyZWQgYnkgYWxsIGc0eCsgcGxhdGZvcm1zKS4KClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgfCAxICsKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgIHwgMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYwppbmRleCA4ODRiNTA3YzVmNTUuLmQwMjQ0OTE3MzhiMyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC00OTA3LDYgKzQ5MDcsNyBA
QCB2b2lkIGludGVsX2RkaV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
ZW51bSBwb3J0IHBvcnQpCiAJZW5jb2Rlci0+cG9ydCA9IHBvcnQ7CiAJZW5jb2Rlci0+Y2xvbmVh
YmxlID0gMDsKIAllbmNvZGVyLT5waXBlX21hc2sgPSB+MDsKKwllbmNvZGVyLT5ocGRfcGluID0g
aW50ZWxfaHBkX3Bpbl9kZWZhdWx0KGRldl9wcml2LCBwb3J0KTsKIAogCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDExKQogCQlpbnRlbF9kaWdfcG9ydC0+c2F2ZWRfcG9ydF9iaXRzID0gaW50
ZWxfZGVfcmVhZChkZXZfcHJpdiwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YwppbmRleCAzZGY1ZDkwMWRkOWQuLmNkNTE2Y2Q4YWNiOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtODIxMSw3ICs4MjExLDYgQEAgaW50ZWxfZHBfaW5pdF9j
b25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsCiAJaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCiAJCWNvbm5lY3Rvci0+eWNiY3JfNDIwX2FsbG93
ZWQgPSB0cnVlOwogCi0JaW50ZWxfZW5jb2Rlci0+aHBkX3BpbiA9IGludGVsX2hwZF9waW5fZGVm
YXVsdChkZXZfcHJpdiwgcG9ydCk7CiAJaW50ZWxfY29ubmVjdG9yLT5wb2xsZWQgPSBEUk1fQ09O
TkVDVE9SX1BPTExfSFBEOwogCiAJaW50ZWxfZHBfYXV4X2luaXQoaW50ZWxfZHApOwpAQCAtODM1
NCw2ICs4MzUzLDcgQEAgYm9vbCBpbnRlbF9kcF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKIAl9CiAJaW50ZWxfZW5jb2Rlci0+Y2xvbmVhYmxlID0gMDsKIAlpbnRlbF9l
bmNvZGVyLT5wb3J0ID0gcG9ydDsKKwlpbnRlbF9lbmNvZGVyLT5ocGRfcGluID0gaW50ZWxfaHBk
X3Bpbl9kZWZhdWx0KGRldl9wcml2LCBwb3J0KTsKIAogCWludGVsX2RpZ19wb3J0LT5ocGRfcHVs
c2UgPSBpbnRlbF9kcF9ocGRfcHVsc2U7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9oZG1pLmMKaW5kZXggODY0YTE2NDJlODFjLi5mNTE1ZDBmY2U5NjggMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCkBAIC0zMjUzLDcgKzMyNTMsNiBAQCB2
b2lkIGludGVsX2hkbWlfaW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAq
aW50ZWxfZGlnX3BvcnQsCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VN
SU5JTEFLRShkZXZfcHJpdikpCiAJCWNvbm5lY3Rvci0+eWNiY3JfNDIwX2FsbG93ZWQgPSB0cnVl
OwogCi0JaW50ZWxfZW5jb2Rlci0+aHBkX3BpbiA9IGludGVsX2hwZF9waW5fZGVmYXVsdChkZXZf
cHJpdiwgcG9ydCk7CiAJaW50ZWxfY29ubmVjdG9yLT5wb2xsZWQgPSBEUk1fQ09OTkVDVE9SX1BP
TExfSFBEOwogCiAJaWYgKEhBU19EREkoZGV2X3ByaXYpKQpAQCAtMzM4NSw2ICszMzg0LDcgQEAg
dm9pZCBpbnRlbF9oZG1pX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAog
CQlpbnRlbF9lbmNvZGVyLT5waXBlX21hc2sgPSB+MDsKIAl9CiAJaW50ZWxfZW5jb2Rlci0+Y2xv
bmVhYmxlID0gMSA8PCBJTlRFTF9PVVRQVVRfQU5BTE9HOworCWludGVsX2VuY29kZXItPmhwZF9w
aW4gPSBpbnRlbF9ocGRfcGluX2RlZmF1bHQoZGV2X3ByaXYsIHBvcnQpOwogCS8qCiAJICogQlNw
ZWMgaXMgdW5jbGVhciBhYm91dCBIRE1JK0hETUkgY2xvbmluZyBvbiBnNHgsIGJ1dCBpdCBzZWVt
cwogCSAqIHRvIHdvcmsgb24gcmVhbCBoYXJkd2FyZS4gQW5kIHNpbmNlIGc0eCBjYW4gc2VuZCBp
bmZvZnJhbWVzIHRvCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
