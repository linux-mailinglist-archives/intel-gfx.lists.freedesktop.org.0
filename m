Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3D52A9ACD
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 18:31:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133C76EABA;
	Fri,  6 Nov 2020 17:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1081B6EABA
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 17:31:04 +0000 (UTC)
IronPort-SDR: E86pU539XjE3625AVbG3IU8hbxVu6eDqNk323u2fSQGk7lG+Ser8GuppEEmlc8VqCax3eEf3Af
 briltbLyp5yw==
X-IronPort-AV: E=McAfee;i="6000,8403,9797"; a="187502899"
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="187502899"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 09:31:02 -0800
IronPort-SDR: ZpmJuQrTJzxrvps4DRbd2Kh1yW1HP0IlpGqDGp8rF9xhZReEnmtZorF2XLh0h2nMWPj4lSHCuh
 ZG2gp/A7uoug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="337635309"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 06 Nov 2020 09:31:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Nov 2020 19:30:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Nov 2020 19:30:42 +0200
Message-Id: <20201106173042.7534-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201106173042.7534-1-ville.syrjala@linux.intel.com>
References: <20201106173042.7534-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Remove
 skl_adjusted_plane_pixel_rate()
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
cGxhY2Ugc2tsX2FkanVzdGVkX3BsYW5lX3BpeGVsX3JhdGUoKSB3aXRoIHRoZSBnZW5lcmljCmlu
dGVsX3BsYW5lX3BpeGVsX3JhdGUoKS4gVGhlIHR3byBzaG91bGQgcHJvZHVjZSBpZGVudGljYWwK
cmVzdWx0cy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDI3
ICsrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMjUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggODg2NWYz
N2Q2Mjk3Li5iYzU5ZGM4ZjQ0ZTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtMzMsNiAr
MzMsNyBAQAogI2luY2x1ZGUgPGRybS9kcm1fcGxhbmVfaGVscGVyLmg+CiAKICNpbmNsdWRlICJk
aXNwbGF5L2ludGVsX2F0b21pYy5oIgorI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfYXRvbWljX3Bs
YW5lLmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9idy5oIgogI2luY2x1ZGUgImRpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZmJjLmgiCkBA
IC01MTAyLDMwICs1MTAzLDYgQEAgaW50ZWxfZ2V0X2xpbmV0aW1lX3VzKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCXJldHVybiBsaW5ldGltZV91czsKIH0KIAot
c3RhdGljIHUzMgotc2tsX2FkanVzdGVkX3BsYW5lX3BpeGVsX3JhdGUoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCi0JCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxf
cGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQotewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOwotCXU2NCBhZGp1
c3RlZF9waXhlbF9yYXRlOwotCXVpbnRfZml4ZWRfMTZfMTZfdCBkb3duc2NhbGVfYW1vdW50Owot
Ci0JLyogU2hvdWxkbid0IHJlYWNoIGhlcmUgb24gZGlzYWJsZWQgcGxhbmVzLi4uICovCi0JaWYg
KGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLAotCQkJIWludGVsX3dtX3BsYW5lX3Zpc2libGUo
Y3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpKSkKLQkJcmV0dXJuIDA7Ci0KLQkvKgotCSAqIEFkanVz
dGVkIHBsYW5lIHBpeGVsIHJhdGUgaXMganVzdCB0aGUgcGlwZSdzIGFkanVzdGVkIHBpeGVsIHJh
dGUKLQkgKiB3aXRoIGFkZGl0aW9uYWwgYWRqdXN0bWVudHMgZm9yIHBsYW5lLXNwZWNpZmljIHNj
YWxpbmcuCi0JICovCi0JYWRqdXN0ZWRfcGl4ZWxfcmF0ZSA9IGNydGNfc3RhdGUtPnBpeGVsX3Jh
dGU7Ci0JZG93bnNjYWxlX2Ftb3VudCA9IHNrbF9wbGFuZV9kb3duc2NhbGVfYW1vdW50KGNydGNf
c3RhdGUsIHBsYW5lX3N0YXRlKTsKLQotCXJldHVybiBtdWxfcm91bmRfdXBfdTMyX2ZpeGVkMTYo
YWRqdXN0ZWRfcGl4ZWxfcmF0ZSwKLQkJCQkJICAgIGRvd25zY2FsZV9hbW91bnQpOwotfQotCiBz
dGF0aWMgaW50CiBza2xfY29tcHV0ZV93bV9wYXJhbXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsCiAJCSAgICAgIGludCB3aWR0aCwgY29uc3Qgc3RydWN0IGRybV9m
b3JtYXRfaW5mbyAqZm9ybWF0LApAQCAtNTIzOCw3ICs1MjE1LDcgQEAgc2tsX2NvbXB1dGVfcGxh
bmVfd21fcGFyYW1zKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAog
CXJldHVybiBza2xfY29tcHV0ZV93bV9wYXJhbXMoY3J0Y19zdGF0ZSwgd2lkdGgsCiAJCQkJICAg
ICBmYi0+Zm9ybWF0LCBmYi0+bW9kaWZpZXIsCiAJCQkJICAgICBwbGFuZV9zdGF0ZS0+aHcucm90
YXRpb24sCi0JCQkJICAgICBza2xfYWRqdXN0ZWRfcGxhbmVfcGl4ZWxfcmF0ZShjcnRjX3N0YXRl
LCBwbGFuZV9zdGF0ZSksCisJCQkJICAgICBpbnRlbF9wbGFuZV9waXhlbF9yYXRlKGNydGNfc3Rh
dGUsIHBsYW5lX3N0YXRlKSwKIAkJCQkgICAgIHdwLCBjb2xvcl9wbGFuZSk7CiB9CiAKLS0gCjIu
MjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
