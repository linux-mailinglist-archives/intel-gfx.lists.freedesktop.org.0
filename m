Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3833810B734
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 21:12:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7757889319;
	Wed, 27 Nov 2019 20:12:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E256C6E373
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 20:12:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 12:12:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="261104299"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 27 Nov 2019 12:12:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2019 22:12:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 22:12:09 +0200
Message-Id: <20191127201222.16669-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
References: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 01/14] drm/i915/fbc: Disable fbc by default
 on all glk+
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
Cc: Jian-Hong Pan <jian-hong@endlessm.com>,
 Paulo Zanoni <paulo.r.zanoni@intel.com>, stable@vger.kernel.org,
 Daniel Drake <drake@endlessm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
J3JlIG1pc3NpbmcgYSB3b3JrYXJvdW5kIGluIHRoZSBmYmMgY29kZSBmb3IgYWxsIGdsaysgcGxh
dGZvcm1zCndoaWNoIGNhbiBjYXVzZSBjb3JydXB0aW9uIGFyb3VuZCB0aGUgdG9wIG9mIHRoZSBz
Y3JlZW4uIFNvCmVuYWJsaW5nIGZiYyBieSBkZWZhdWx0IGlzIGEgYmFkIGlkZWEuIEknbSBub3Qg
a2VlbiB0byBiYWNrcG9ydAp0aGUgdy9hIHNvIGxldCdzIHN0YXJ0IGJ5IGRpc2FibGluZyBmYmMg
YnkgZGVmYXVsdCBvbiBhbGwgZ2xrKy4KV2UnbGwgbGlmdCB0aGUgcmVzdHJpY3Rpb24gb25jZSB0
aGUgdy9hIGlzIGluIHBsYWNlLgoKQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IERhbmll
bCBEcmFrZSA8ZHJha2VAZW5kbGVzc20uY29tPgpDYzogUGF1bG8gWmFub25pIDxwYXVsby5yLnph
bm9uaUBpbnRlbC5jb20+CkNjOiBKaWFuLUhvbmcgUGFuIDxqaWFuLWhvbmdAZW5kbGVzc20uY29t
PgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwg
MiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKaW5kZXggOTJjN2ViMjQzNTU5Li4z
Y2MxZjRiNGI1YTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpA
QCAtMTI4NCw3ICsxMjg0LDcgQEAgc3RhdGljIGludCBpbnRlbF9zYW5pdGl6ZV9mYmNfb3B0aW9u
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJcmV0dXJuIDA7CiAKIAkvKiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDgwODUgKi8KLQlp
ZiAoSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpCiAJCXJldHVybiAwOwogCiAJaWYgKElTX0JS
T0FEV0VMTChkZXZfcHJpdikgfHwgSU5URUxfR0VOKGRldl9wcml2KSA+PSA5KQotLSAKMi4yMy4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
