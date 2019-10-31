Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FD5EAE10
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 11:59:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024906EE28;
	Thu, 31 Oct 2019 10:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F6406EE28
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 10:59:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 03:59:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,250,1569308400"; d="scan'208";a="212422436"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 31 Oct 2019 03:59:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2019 12:59:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2019 12:59:28 +0200
Message-Id: <20191031105929.11594-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191031105929.11594-1-ville.syrjala@linux.intel.com>
References: <20191031105929.11594-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Move icl_is_hdr_plane() next to
 its cousins
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFs
bCB0aGUgb3RoZXIgaWNsIHBsYW5lIHR5cGUgY2hlY2sgc3R1ZmYgbGl2ZXMgaW4gaW50ZWxfc3By
aXRlLmgKc28gbW92ZSBpY2xfaXNfaGRyX3BsYW5lKCkgdGhlcmUgYXMgd2VsbC4KClNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDYgLS0tLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5oIHwgNyArKysrKyst
CiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwppbmRleCA5YTJlYzJjNWY4
OTAuLmJhMzQ0ZDllMmUxOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5jCkBAIC0zMTYsMTIgKzMxNiw2IEBAIGludCBpbnRlbF9wbGFuZV9jaGVja19zcmNf
Y29vcmRpbmF0ZXMoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIAlyZXR1
cm4gMDsKIH0KIAotYm9vbCBpY2xfaXNfaGRyX3BsYW5lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwgZW51bSBwbGFuZV9pZCBwbGFuZV9pZCkKLXsKLQlyZXR1cm4gSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMSAmJgotCQlpY2xfaGRyX3BsYW5lX21hc2soKSAmIEJJVChwbGFuZV9p
ZCk7Ci19Ci0KIHN0YXRpYyB2b2lkCiBza2xfcGxhbmVfcmF0aW8oY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqcGxhbmVfc3RhdGUsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nwcml0ZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJp
dGUuaAppbmRleCBmMzhjYzQ2YWIyODIuLmZmYjAzZWU2NDBlZCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5oCkBAIC00OCw3ICs0OCwxMiBAQCBzdGF0aWMg
aW5saW5lIHU4IGljbF9oZHJfcGxhbmVfbWFzayh2b2lkKQogCQlCSVQoUExBTkVfU1BSSVRFMCkg
fCBCSVQoUExBTkVfU1BSSVRFMSk7CiB9CiAKLWJvb2wgaWNsX2lzX2hkcl9wbGFuZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGxhbmVfaWQgcGxhbmVfaWQpOworc3Rh
dGljIGlubGluZSBib29sIGljbF9pc19oZHJfcGxhbmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAorCQkJCSAgICBlbnVtIHBsYW5lX2lkIHBsYW5lX2lkKQoreworCXJldHVybiBJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYmCisJCWljbF9oZHJfcGxhbmVfbWFzaygpICYgQklU
KHBsYW5lX2lkKTsKK30KIAogaW50IGl2Yl9wbGFuZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUgKnBsYW5lX3N0YXRlKTsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
