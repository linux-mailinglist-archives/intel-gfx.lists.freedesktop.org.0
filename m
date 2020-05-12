Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0A21CFC67
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 19:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD4276E136;
	Tue, 12 May 2020 17:41:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A94376E94C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 17:41:56 +0000 (UTC)
IronPort-SDR: UPsZATAP6Cof/o/PpVAEwkw7dYO2T1dMKPUAUMpzANQ/NThRBYv4zAUfVGX9tBSs0W0JZAuQkV
 GVaygov9oeqw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 10:41:56 -0700
IronPort-SDR: cm4LpZ7quFCBf9OZDWvvdj0V1pgWXI80l5t0Cni0VkcmKbQfIgh+3OuhOYzhg1ZVd4ZL8w1RKl
 IQIPqvieTFtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="252953629"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 12 May 2020 10:41:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 May 2020 20:41:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 May 2020 20:41:41 +0300
Message-Id: <20200512174145.3186-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
References: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: Fix ivb cpu edp vswing
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFj
Y29yZGluZyB0byB0aGUgRFAgc3BlYyBzdXBwb3J0aW5nIHZzd2luZyAxICsgcHJlZW1waCAyIGlz
Cm1hbmRhdG9yeS4gV2UgZG9uJ3QgaGF2ZSB0aGUgaHcgc2V0dGluZ3MgZm9yIHRoYXQgdGhvdWdo
LiBJbgpvcmRlciB0byBwcmV0ZW5kIHRvIGZvbGxvdyB0aGUgRFAgc3BlYyBsZXQncyBqdXN0IHNl
bGVjdAp2c3dpbmcgMCArIHByZWVtcGggMiBpbiB0aGlzIGNhc2UgKHRoZSBEUCBzcGVjIHNheXMg
dG8gdXNlCnRoZSByZXF1ZXN0ZWQgcHJlZW1waCBpbiBwcmVmZXJlbmNlIHRvIHRoZSB2c3dpbmcg
d2hlbiB0aGUKcmVxdWVzdGVkIHZhbHVlcyBhcmVuJ3Qgc3VwcG9ydGVkKS4KClNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTMgKy0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggMDkyNGUwNDFlMWJmLi40OTUy
OTE4ZDA5MDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTM5
NjAsOCArMzk2MCw2IEBAIGludGVsX2RwX3ZvbHRhZ2VfbWF4KHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHApCiAJZWxzZSBpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklF
VyhkZXZfcHJpdikgfHwKIAkJIChIQVNfUENIX1NQTElUKGRldl9wcml2KSAmJiBwb3J0ICE9IFBP
UlRfQSkpCiAJCXJldHVybiBEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX0xFVkVMXzM7Ci0JZWxzZSBp
ZiAoSVNfSVZZQlJJREdFKGRldl9wcml2KSAmJiBwb3J0ID09IFBPUlRfQSkKLQkJcmV0dXJuIERQ
X1RSQUlOX1ZPTFRBR0VfU1dJTkdfTEVWRUxfMjsKIAllbHNlCiAJCXJldHVybiBEUF9UUkFJTl9W
T0xUQUdFX1NXSU5HX0xFVkVMXzI7CiB9CkBAIC0zOTg4LDE2ICszOTg2LDYgQEAgaW50ZWxfZHBf
cHJlX2VtcGhhc2lzX21heChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCB1OCB2b2x0YWdlX3N3
aW5nKQogCQlkZWZhdWx0OgogCQkJcmV0dXJuIERQX1RSQUlOX1BSRV9FTVBIX0xFVkVMXzA7CiAJ
CX0KLQl9IGVsc2UgaWYgKElTX0lWWUJSSURHRShkZXZfcHJpdikgJiYgcG9ydCA9PSBQT1JUX0Ep
IHsKLQkJc3dpdGNoICh2b2x0YWdlX3N3aW5nICYgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19NQVNL
KSB7Ci0JCWNhc2UgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19MRVZFTF8wOgotCQkJcmV0dXJuIERQ
X1RSQUlOX1BSRV9FTVBIX0xFVkVMXzI7Ci0JCWNhc2UgRFBfVFJBSU5fVk9MVEFHRV9TV0lOR19M
RVZFTF8xOgotCQljYXNlIERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdfTEVWRUxfMjoKLQkJCXJldHVy
biBEUF9UUkFJTl9QUkVfRU1QSF9MRVZFTF8xOwotCQlkZWZhdWx0OgotCQkJcmV0dXJuIERQX1RS
QUlOX1BSRV9FTVBIX0xFVkVMXzA7Ci0JCX0KIAl9IGVsc2UgewogCQlzd2l0Y2ggKHZvbHRhZ2Vf
c3dpbmcgJiBEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX01BU0spIHsKIAkJY2FzZSBEUF9UUkFJTl9W
T0xUQUdFX1NXSU5HX0xFVkVMXzA6CkBAIC00MjkzLDYgKzQyODEsNyBAQCBzdGF0aWMgdTMyIGl2
Yl9jcHVfZWRwX3NpZ25hbF9sZXZlbHModTggdHJhaW5fc2V0KQogCWNhc2UgRFBfVFJBSU5fVk9M
VEFHRV9TV0lOR19MRVZFTF8wIHwgRFBfVFJBSU5fUFJFX0VNUEhfTEVWRUxfMToKIAkJcmV0dXJu
IEVEUF9MSU5LX1RSQUlOXzQwME1WXzNfNURCX0lWQjsKIAljYXNlIERQX1RSQUlOX1ZPTFRBR0Vf
U1dJTkdfTEVWRUxfMCB8IERQX1RSQUlOX1BSRV9FTVBIX0xFVkVMXzI6CisJY2FzZSBEUF9UUkFJ
Tl9WT0xUQUdFX1NXSU5HX0xFVkVMXzEgfCBEUF9UUkFJTl9QUkVfRU1QSF9MRVZFTF8yOgogCQly
ZXR1cm4gRURQX0xJTktfVFJBSU5fNDAwTVZfNkRCX0lWQjsKIAogCWNhc2UgRFBfVFJBSU5fVk9M
VEFHRV9TV0lOR19MRVZFTF8xIHwgRFBfVFJBSU5fUFJFX0VNUEhfTEVWRUxfMDoKLS0gCjIuMjYu
MgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
