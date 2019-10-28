Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E26BE7069
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 12:30:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CEA6E5D7;
	Mon, 28 Oct 2019 11:30:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 534486E530
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 11:30:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 04:30:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,239,1569308400"; d="scan'208";a="198049861"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 28 Oct 2019 04:30:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 13:30:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 13:30:35 +0200
Message-Id: <20191028113036.27553-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
References: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Enable pipe gamma for the overlay
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IHBhc3MgdGhlIHBsYW5lIGRhdGEgdGhyb3VnaCB0aGUgcGlwZSBnYW1tYSBmb3IgYWxsIHRoZSBv
dGhlcgpwbGFuZXMuIENhbid0IHNlZSB3aHkgd2Ugc2hvdWxkIHRyZWF0IHRoZSBvdmVybGF5IGRp
ZmZlcmVudGx5LApzbyBsZXQncyBlbmFibGUgcGlwZSBnYW1tYSBmb3IgaXQgYXMgd2VsbC4KClNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMgfCAy
ICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX292ZXJsYXkuYwppbmRleCBlNTE1OTJlMzVlZmUuLjMyNDFjYzk4
ZTI1MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVy
bGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMK
QEAgLTc4NCw2ICs3ODQsOCBAQCBzdGF0aWMgaW50IGludGVsX292ZXJsYXlfZG9fcHV0X2ltYWdl
KHN0cnVjdCBpbnRlbF9vdmVybGF5ICpvdmVybGF5LAogCQlpZiAoY3J0Y19zdGF0ZS0+Z2FtbWFf
ZW5hYmxlICYmCiAJCSAgICBjcnRjX3N0YXRlLT5nYW1tYV9tb2RlID09IEdBTU1BX01PREVfTU9E
RV84QklUKQogCQkJb2NvbmZpZyB8PSBPQ09ORl9DQ19PVVRfOEJJVDsKKwkJaWYgKGNydGNfc3Rh
dGUtPmdhbW1hX2VuYWJsZSkKKwkJCW9jb25maWcgfD0gT0NPTkZfR0FNTUEyX0VOQUJMRTsKIAkJ
aWYgKElTX0dFTihkZXZfcHJpdiwgNCkpCiAJCQlvY29uZmlnIHw9IE9DT05GX0NTQ19NT0RFX0JU
NzA5OwogCQlvY29uZmlnIHw9IHBpcGUgPT0gMCA/Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
