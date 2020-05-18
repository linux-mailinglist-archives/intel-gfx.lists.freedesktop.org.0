Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3F41D7875
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 14:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F41576E15B;
	Mon, 18 May 2020 12:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1316D89D73
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 12:23:12 +0000 (UTC)
IronPort-SDR: fGnzu++VK6rCdx6eNhvyQ8n+a8+PeqUjW3C8BS+aXoAPmxJPx6bRXae4a2RtsBdtA1hSdAD4x7
 cxMeLibEIXng==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 05:23:11 -0700
IronPort-SDR: WdFKCGwNzcBvpg4TGiBGmC9Ie6NHnSJubkoMrnwJR6H+M87Y8Ahflo76kD+SnsqSpmlrohDHMH
 PE5iIkFMwHcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="267500632"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 18 May 2020 05:23:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 May 2020 15:23:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 15:23:02 +0300
Message-Id: <20200518122303.28083-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200518122303.28083-1-ville.syrjala@linux.intel.com>
References: <20200518122303.28083-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] Revert "drm/i915: Nuke
 skl_ddb_get_hw_state()"
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRi
dWYgc2xpY2UgdHJhY2tpbmcgYnVzdGVkIGFjcm9zcyBydW50aW1lIFBNLiBCYWNrIHRvIHRoZQpk
cmF3aW5nIGJvYXJkLgoKVGhpcyByZXZlcnRzIGNvbW1pdCAwY2RlMGUwZmY1ZjVlYmQyNzUwNzA2
OTI1MDcyOGM3NjNjMTRhYzgxLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jIHwgNyArKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oIHwgMSAr
CiAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
CmluZGV4IGE5MmQ1N2Q5Yjc1OS4uY2I1Nzc4NmZkYzlmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMKQEAgLTQzMTUsNiArNDMxNSwxMiBAQCB2b2lkIHNrbF9waXBlX2RkYl9nZXRfaHdfc3RhdGUo
c3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoZGV2X3By
aXYsIHBvd2VyX2RvbWFpbiwgd2FrZXJlZik7CiB9CiAKK3ZvaWQgc2tsX2RkYl9nZXRfaHdfc3Rh
dGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCWRldl9wcml2LT5kYnVm
LmVuYWJsZWRfc2xpY2VzID0KKwkJaW50ZWxfZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrKGRldl9w
cml2KTsKK30KKwogLyoKICAqIERldGVybWluZXMgdGhlIGRvd25zY2FsZSBhbW91bnQgb2YgYSBw
bGFuZSBmb3IgdGhlIHB1cnBvc2VzIG9mIHdhdGVybWFyayBjYWxjdWxhdGlvbnMuCiAgKiBUaGUg
YnNwZWMgZGVmaW5lcyBkb3duc2NhbGUgYW1vdW50IGFzOgpAQCAtNjE3NSw2ICs2MTgxLDcgQEAg
dm9pZCBza2xfd21fZ2V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZTsKIAorCXNrbF9kZGJfZ2V0X2h3X3N0YXRlKGRldl9wcml2KTsKIAlmb3JfZWFj
aF9pbnRlbF9jcnRjKCZkZXZfcHJpdi0+ZHJtLCBjcnRjKSB7CiAJCWNydGNfc3RhdGUgPSB0b19p
bnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
aAppbmRleCAzZmNjOWI2ZTJjYmYuLjlmNzVhYzRjMmJkMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5oCkBAIC0zOSw2ICszOSw3IEBAIHU4IGludGVsX2VuYWJsZWRfZGJ1Zl9zbGljZXNfbWFzayhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBza2xfcGlwZV9kZGJfZ2V0
X2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJICAgICAgIHN0cnVjdCBza2xf
ZGRiX2VudHJ5ICpkZGJfeSwKIAkJCSAgICAgICBzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSAqZGRiX3V2
KTsKK3ZvaWQgc2tsX2RkYl9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KTsKIHZvaWQgc2tsX3BpcGVfd21fZ2V0X2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjLAogCQkJICAgICAgc3RydWN0IHNrbF9waXBlX3dtICpvdXQpOwogdm9pZCBnNHhfd21f
c2FuaXRpemUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLS0gCjIuMjYuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
