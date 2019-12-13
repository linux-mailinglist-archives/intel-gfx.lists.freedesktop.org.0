Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C28311E4BF
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 14:35:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05CEE6E882;
	Fri, 13 Dec 2019 13:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C33DA6E882
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 13:35:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 05:35:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="208459234"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 13 Dec 2019 05:35:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Dec 2019 15:35:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 15:34:53 +0200
Message-Id: <20191213133453.22152-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
References: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Rename pipe update tracepoints
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFs
bCB0aGUgb3RoZXIgZGlzcGxheSByZWxhdGVkIHRyYWNlcG9pbnRzIHVzZSBpbnRlbF8gaW5zdGVh
ZAppZiBpOTE1XyBhcyB0aGUgcHJlZml4LiBEbyB0aGUgc2FtZSBmb3IgdGhlIHBpcGUgdXBkYXRl
CnRyYWNlcG9pbnRzIHNvIEkgZG9uJ3QgYWx3YXlzIGhhdmUgdG8gc3BlbmQgdGltZSBsb29raW5n
IGZvcgp0aGVtLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5jIHwgNiArKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdHJhY2UuaCAg
ICAgICAgICAgfCA2ICsrKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRl
LmMKaW5kZXggODM5NDUwMmIwOTJkLi5hNWI3Y2FiNmRmZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpAQCAtMTIwLDcgKzEyMCw3IEBAIHZvaWQgaW50
ZWxfcGlwZV91cGRhdGVfc3RhcnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19j
cnRjX3N0YXRlKQogCiAJY3J0Yy0+ZGVidWcubWluX3ZibCA9IG1pbjsKIAljcnRjLT5kZWJ1Zy5t
YXhfdmJsID0gbWF4OwotCXRyYWNlX2k5MTVfcGlwZV91cGRhdGVfc3RhcnQoY3J0Yyk7CisJdHJh
Y2VfaW50ZWxfcGlwZV91cGRhdGVfc3RhcnQoY3J0Yyk7CiAKIAlmb3IgKDs7KSB7CiAJCS8qCkBA
IC0xNzMsNyArMTczLDcgQEAgdm9pZCBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydChjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCiAJY3J0Yy0+ZGVidWcuc3RhcnRf
dmJsX3RpbWUgPSBrdGltZV9nZXQoKTsKIAljcnRjLT5kZWJ1Zy5zdGFydF92YmxfY291bnQgPSBp
bnRlbF9jcnRjX2dldF92YmxhbmtfY291bnRlcihjcnRjKTsKIAotCXRyYWNlX2k5MTVfcGlwZV91
cGRhdGVfdmJsYW5rX2V2YWRlZChjcnRjKTsKKwl0cmFjZV9pbnRlbF9waXBlX3VwZGF0ZV92Ymxh
bmtfZXZhZGVkKGNydGMpOwogCXJldHVybjsKIAogaXJxX2Rpc2FibGU6CkBAIC0xOTcsNyArMTk3
LDcgQEAgdm9pZCBpbnRlbF9waXBlX3VwZGF0ZV9lbmQoc3RydWN0IGludGVsX2NydGNfc3RhdGUg
Km5ld19jcnRjX3N0YXRlKQogCWt0aW1lX3QgZW5kX3ZibF90aW1lID0ga3RpbWVfZ2V0KCk7CiAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRl
dik7CiAKLQl0cmFjZV9pOTE1X3BpcGVfdXBkYXRlX2VuZChjcnRjLCBlbmRfdmJsX2NvdW50LCBz
Y2FubGluZV9lbmQpOworCXRyYWNlX2ludGVsX3BpcGVfdXBkYXRlX2VuZChjcnRjLCBlbmRfdmJs
X2NvdW50LCBzY2FubGluZV9lbmQpOwogCiAJLyogV2UncmUgc3RpbGwgaW4gdGhlIHZibGFuay1l
dmFkZSBjcml0aWNhbCBzZWN0aW9uLCB0aGlzIGNhbid0IHJhY2UuCiAJICogV291bGQgYmUgc2xp
Z2h0bHkgbmljZSB0byBqdXN0IGdyYWIgdGhlIHZibGFuayBjb3VudCBhbmQgYXJtIHRoZQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90cmFjZS5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV90cmFjZS5oCmluZGV4IDY2ZmY5NjMwM2I5NS4uMTYyYzc2YTlkMWU4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3RyYWNlLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV90cmFjZS5oCkBAIC00MDMsNyArNDAzLDcgQEAgVFJBQ0VfRVZF
TlQoaW50ZWxfZmJjX251a2UsCiAKIC8qIHBpcGUgdXBkYXRlcyAqLwogCi1UUkFDRV9FVkVOVChp
OTE1X3BpcGVfdXBkYXRlX3N0YXJ0LAorVFJBQ0VfRVZFTlQoaW50ZWxfcGlwZV91cGRhdGVfc3Rh
cnQsCiAJICAgIFRQX1BST1RPKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKSwKIAkgICAgVFBfQVJH
UyhjcnRjKSwKIApAQCAtNDI4LDcgKzQyOCw3IEBAIFRSQUNFX0VWRU5UKGk5MTVfcGlwZV91cGRh
dGVfc3RhcnQsCiAJCSAgICAgICBfX2VudHJ5LT5zY2FubGluZSwgX19lbnRyeS0+bWluLCBfX2Vu
dHJ5LT5tYXgpCiApOwogCi1UUkFDRV9FVkVOVChpOTE1X3BpcGVfdXBkYXRlX3ZibGFua19ldmFk
ZWQsCitUUkFDRV9FVkVOVChpbnRlbF9waXBlX3VwZGF0ZV92YmxhbmtfZXZhZGVkLAogCSAgICBU
UF9QUk9UTyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyksCiAJICAgIFRQX0FSR1MoY3J0YyksCiAK
QEAgLTQ1Myw3ICs0NTMsNyBAQCBUUkFDRV9FVkVOVChpOTE1X3BpcGVfdXBkYXRlX3ZibGFua19l
dmFkZWQsCiAJCSAgICAgICBfX2VudHJ5LT5zY2FubGluZSwgX19lbnRyeS0+bWluLCBfX2VudHJ5
LT5tYXgpCiApOwogCi1UUkFDRV9FVkVOVChpOTE1X3BpcGVfdXBkYXRlX2VuZCwKK1RSQUNFX0VW
RU5UKGludGVsX3BpcGVfdXBkYXRlX2VuZCwKIAkgICAgVFBfUFJPVE8oc3RydWN0IGludGVsX2Ny
dGMgKmNydGMsIHUzMiBmcmFtZSwgaW50IHNjYW5saW5lX2VuZCksCiAJICAgIFRQX0FSR1MoY3J0
YywgZnJhbWUsIHNjYW5saW5lX2VuZCksCiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
