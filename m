Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F13A3C9C03
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 11:36:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629446E802;
	Thu, 15 Jul 2021 09:36:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607166E7EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 09:36:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="197778551"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="197778551"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 02:36:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="466508546"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 15 Jul 2021 02:36:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Jul 2021 12:36:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jul 2021 12:35:28 +0300
Message-Id: <20210715093530.31711-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
References: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/13] drm/i915: Fold i9xx_set_pll_dividers()
 into i9xx_enable_pll()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkNh
bid0IHRoaW5rIG9mIGEgZ29vZCByZWFzb24gd2h5IHdlJ2QgbmVlZCB0byBwcm9ncmFtIHRoZSBG
UApkaXZpZGVycyBzbyBlYXJseS4gTGV0J3MganVzdCBkbyBpdCB3aGVuIHByb2dyYW1taW5nIHRo
ZSByZXN0Cm9mIHRoZSBEUExMLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEzIC0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBsbC5jICAgIHwgIDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBkNWJjMWUzMmIyYmEuLmY1NGNiMDUyMWY2YSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTM5
NTYsMTcgKzM5NTYsNiBAQCBzdGF0aWMgdm9pZCB2YWxsZXl2aWV3X2NydGNfZW5hYmxlKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCWludGVsX2VuY29kZXJzX2VuYWJsZShzdGF0
ZSwgY3J0Yyk7CiB9CiAKLXN0YXRpYyB2b2lkIGk5eHhfc2V0X3BsbF9kaXZpZGVycyhjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKLXsKLQlzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKLQlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKLQot
CWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBGUDAoY3J0Yy0+cGlwZSksCi0JCSAgICAgICBjcnRj
X3N0YXRlLT5kcGxsX2h3X3N0YXRlLmZwMCk7Ci0JaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIEZQ
MShjcnRjLT5waXBlKSwKLQkJICAgICAgIGNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUuZnAxKTsK
LX0KLQogc3RhdGljIHZvaWQgaTl4eF9jcnRjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwKIAkJCSAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMpCiB7CkBAIC0zOTc4
LDggKzM5NjcsNiBAQCBzdGF0aWMgdm9pZCBpOXh4X2NydGNfZW5hYmxlKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLAogCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgY3J0
Yy0+YWN0aXZlKSkKIAkJcmV0dXJuOwogCi0JaTl4eF9zZXRfcGxsX2RpdmlkZXJzKG5ld19jcnRj
X3N0YXRlKTsKLQogCWlmIChpbnRlbF9jcnRjX2hhc19kcF9lbmNvZGVyKG5ld19jcnRjX3N0YXRl
KSkKIAkJaW50ZWxfZHBfc2V0X21fbihuZXdfY3J0Y19zdGF0ZSwgTTFfTjEpOwogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGwuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbC5jCmluZGV4IDU0Mzg5MDA1MDA0MC4uMTc3
NmM0N2FhMmJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGwuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGwuYwpA
QCAtMTQwNCw2ICsxNDA0LDkgQEAgdm9pZCBpOXh4X2VuYWJsZV9wbGwoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJaWYgKGk5eHhfaGFzX3BwcyhkZXZfcHJpdikp
CiAJCWFzc2VydF9wYW5lbF91bmxvY2tlZChkZXZfcHJpdiwgcGlwZSk7CiAKKwlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgRlAwKHBpcGUpLCBjcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlLmZwMCk7
CisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIEZQMShwaXBlKSwgY3J0Y19zdGF0ZS0+ZHBsbF9o
d19zdGF0ZS5mcDEpOworCiAJLyoKIAkgKiBBcHBhcmVudGx5IHdlIG5lZWQgdG8gaGF2ZSBWR0Eg
bW9kZSBlbmFibGVkIHByaW9yIHRvIGNoYW5naW5nCiAJICogdGhlIFAxL1AyIGRpdmlkZXJzLiBP
dGhlcndpc2UgdGhlIERQTEwgd2lsbCBrZWVwIHVzaW5nIHRoZSBvbGQKLS0gCjIuMzEuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
