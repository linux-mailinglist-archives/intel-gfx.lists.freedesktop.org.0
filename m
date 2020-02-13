Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C017415CAAF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 19:48:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150226F61E;
	Thu, 13 Feb 2020 18:48:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCAC66F61E
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 18:48:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 10:48:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,437,1574150400"; d="scan'208";a="267246275"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 13 Feb 2020 10:48:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2020 20:48:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Feb 2020 20:47:58 +0200
Message-Id: <20200213184800.14147-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213184800.14147-1-ville.syrjala@linux.intel.com>
References: <20200213184800.14147-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Nuke skl_ddb_get_hw_state()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnNr
bF9kZGJfZ2V0X2h3X3N0YXRlKCkgaXMgcmVkdW5kYW50IGFuZCBraW5kYSBjYWxsZWQgaW4gdGh3
IHdyb25nCnNwb3QgYW55d2F5LiBKdXN0IGtpbGwgaXQuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMgfCA3IC0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmggfCAxIC0KIDIgZmlsZXMgY2hhbmdlZCwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYwppbmRleCAzMTE3OWUzMGJmZTMuLjAwMzI0NThmMGE1ZCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jCkBAIC00MTE3LDEyICs0MTE3LDYgQEAgdm9pZCBza2xfcGlwZV9kZGJf
Z2V0X2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCWludGVsX2Rpc3BsYXlfcG93
ZXJfcHV0KGRldl9wcml2LCBwb3dlcl9kb21haW4sIHdha2VyZWYpOwogfQogCi12b2lkIHNrbF9k
ZGJfZ2V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKLXsKLQlk
ZXZfcHJpdi0+ZGJ1Zi5lbmFibGVkX3NsaWNlcyA9Ci0JCWludGVsX2VuYWJsZWRfZGJ1Zl9zbGlj
ZXNfbWFzayhkZXZfcHJpdik7Ci19Ci0KIC8qCiAgKiBEZXRlcm1pbmVzIHRoZSBkb3duc2NhbGUg
YW1vdW50IG9mIGEgcGxhbmUgZm9yIHRoZSBwdXJwb3NlcyBvZiB3YXRlcm1hcmsgY2FsY3VsYXRp
b25zLgogICogVGhlIGJzcGVjIGRlZmluZXMgZG93bnNjYWxlIGFtb3VudCBhczoKQEAgLTU5MzAs
NyArNTkyNCw2IEBAIHZvaWQgc2tsX3dtX2dldF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiAJc3RydWN0IGludGVsX2NydGMgKmNydGM7CiAJc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGU7CiAKLQlza2xfZGRiX2dldF9od19zdGF0ZShkZXZfcHJp
dik7CiAJZm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2X3ByaXYtPmRybSwgY3J0YykgewogCQljcnRj
X3N0YXRlID0gdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKIApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmgKaW5kZXggZmFkZjdjYmM0NGM0Li4xMDU0YTBhYjFlNDAgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uaApAQCAtMzgsNyArMzgsNiBAQCB1OCBpbnRlbF9lbmFibGVkX2RidWZf
c2xpY2VzX21hc2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQgc2ts
X3BpcGVfZGRiX2dldF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJCSAgICAg
ICBzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSAqZGRiX3ksCiAJCQkgICAgICAgc3RydWN0IHNrbF9kZGJf
ZW50cnkgKmRkYl91dik7Ci12b2lkIHNrbF9kZGJfZ2V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdik7CiB2b2lkIHNrbF9waXBlX3dtX2dldF9od19zdGF0ZShzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJCSAgICAgIHN0cnVjdCBza2xfcGlwZV93bSAqb3V0KTsK
IHZvaWQgZzR4X3dtX3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7
Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
