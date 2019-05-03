Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5AE13332
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 19:38:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE7826E836;
	Fri,  3 May 2019 17:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E936E836
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 17:38:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 10:38:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,426,1549958400"; d="scan'208";a="154510292"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 03 May 2019 10:38:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2019 20:38:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 20:38:06 +0300
Message-Id: <20190503173807.10834-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503173807.10834-1-ville.syrjala@linux.intel.com>
References: <20190503173807.10834-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Drop
 WaIncreaseLatencyIPCEnabled/1140 for cnl
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRy
b3AgV2FJbmNyZWFzZUxhdGVuY3lJUENFbmFibGVkL0Rpc3BsYXkgdy9hICMxMTQwIGZvcgplYXJs
eSBjbmwgc3RlcHBpbmdzLgoKdjI6IERyb3AgdGhlIElTX0dFTjlfQkMoKSBjaGFuZ2Ugc2luY2Ug
b3RoZXIgcmVsYXRlZAogICAgcGFydHMgb2YgdGhlIGNvZGUgYWxzbyB1c2UgdGhlIEtCTHx8Q0ZM
IHBhdHRlcm4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDMgKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMKaW5kZXggMzRmYmY3MGRmODM2Li5jZTM0OGRkNmRhMmQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYwpAQCAtNDc4Niw4ICs0Nzg2LDcgQEAgc3RhdGljIHZvaWQgc2tsX2NvbXB1
dGVfcGxhbmVfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNzdGF0ZSwKIAkgKiBX
YUluY3JlYXNlTGF0ZW5jeUlQQ0VuYWJsZWQ6IGtibCxjZmwKIAkgKiBEaXNwbGF5IFdBICMxMTQx
OiBrYmwsY2ZsCiAJICovCi0JaWYgKChJU19LQUJZTEFLRShkZXZfcHJpdikgfHwgSVNfQ09GRkVF
TEFLRShkZXZfcHJpdikgfHwKLQkgICAgSVNfQ05MX1JFVklEKGRldl9wcml2LCBDTkxfUkVWSURf
QTAsIENOTF9SRVZJRF9CMCkpICYmCisJaWYgKChJU19LQUJZTEFLRShkZXZfcHJpdikgfHwgSVNf
Q09GRkVFTEFLRShkZXZfcHJpdikpIHx8CiAJICAgIGRldl9wcml2LT5pcGNfZW5hYmxlZCkKIAkJ
bGF0ZW5jeSArPSA0OwogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
