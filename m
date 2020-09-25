Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E462786DA
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 14:17:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C186ECB0;
	Fri, 25 Sep 2020 12:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 770966ECB0
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 12:17:52 +0000 (UTC)
IronPort-SDR: KqXdJ21+mOmrgpEq30oQaVcErtkAmZO3a9OZ4OSUSnrnJfF0DKNwTcOkd1GH9srx+sFHV5i8Ya
 AoLv6CvM9i6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="160769134"
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; d="scan'208";a="160769134"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 05:17:52 -0700
IronPort-SDR: JwknBZlEOtga6ECjs7ViTCH6SiLz5NUVLoz3ACxPfONAgTgAiI8Zku4e2XAOCRA0qrj5RCr012
 woSPtTkw4gkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; d="scan'208";a="310790029"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 25 Sep 2020 05:17:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 15:17:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Sep 2020 15:17:48 +0300
Message-Id: <20200925121749.708-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Make intel_{enable,
 disable}_sagv() static
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmlu
dGVsX3tlbmFibGUsZGlzYWJsZX1fc2FndigpIGFyZSBubyBsb25nZXIgbmVlZGVkIG91dHNpZGUg
dGhlCmNvbXBpbGF0aW9uIHVuaXQuIE1ha2UgdGhlbSBzdGF0aWMuCgpTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCA0ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmggfCAyIC0tCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCAzNGUwZDIyZDQ1NmIuLjhj
ZDYyNDAyZDU5NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0zNzA2LDcgKzM3MDYsNyBA
QCBza2xfc2V0dXBfc2Fndl9ibG9ja190aW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKICAqICAtIEFsbCBwbGFuZXMgY2FuIGVuYWJsZSB3YXRlcm1hcmtzIGZvciBsYXRlbmNp
ZXMgPj0gU0FHViBlbmdpbmUgYmxvY2sgdGltZQogICogIC0gV2UncmUgbm90IHVzaW5nIGFuIGlu
dGVybGFjZWQgZGlzcGxheSBjb25maWd1cmF0aW9uCiAgKi8KLWludAorc3RhdGljIGludAogaW50
ZWxfZW5hYmxlX3NhZ3Yoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCWlu
dCByZXQ7CkBAIC0zNzQwLDcgKzM3NDAsNyBAQCBpbnRlbF9lbmFibGVfc2FndihzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJcmV0dXJuIDA7CiB9CiAKLWludAorc3RhdGljIGlu
dAogaW50ZWxfZGlzYWJsZV9zYWd2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
IHsKIAlpbnQgcmV0OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmgKaW5kZXggYTI0NzM1OTRjMmRiLi5l
YWI4M2UyNTFkZDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaApAQCAtNDksOCArNDksNiBAQCB2
b2lkIGc0eF93bV9zYW5pdGl6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwog
dm9pZCB2bHZfd21fc2FuaXRpemUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsK
IGJvb2wgaW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKIAkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9id19zdGF0ZSAqYndfc3RhdGUpOwotaW50
IGludGVsX2VuYWJsZV9zYWd2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Ci1p
bnQgaW50ZWxfZGlzYWJsZV9zYWd2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7
CiB2b2lkIGludGVsX3NhZ3ZfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSk7CiB2b2lkIGludGVsX3NhZ3ZfcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOwogYm9vbCBza2xfd21fbGV2ZWxfZXF1YWxzKGNvbnN0
IHN0cnVjdCBza2xfd21fbGV2ZWwgKmwxLAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
