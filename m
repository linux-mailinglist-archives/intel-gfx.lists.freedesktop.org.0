Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 060E713333
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 19:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78FB86E838;
	Fri,  3 May 2019 17:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9AE66E839
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 17:38:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 10:38:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,426,1549958400"; d="scan'208";a="229055043"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 03 May 2019 10:38:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2019 20:38:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 20:38:07 +0300
Message-Id: <20190503173807.10834-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503173807.10834-1-ville.syrjala@linux.intel.com>
References: <20190503173807.10834-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Move w/a 0477/WaDisableIPC:skl
 into intel_init_ipc()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
dmUgdGhlIHcvYSB0byBkaXNhYmxlIElQQyBvbiBTS0wgY2xvc2VyIHRvIHRoZSBhY3R1YWwgY29k
ZQp0aGF0IGltcGxlbWVudHMgSVBTLiBPdGhlcndpc2UgSSBqdXN0IGVuZCB1cCBjb25mdXNlZCBh
cyB0bwp3aGF0IGlzIGV4Y2x1ZGluZyBTS0wgZnJvbSBjb25zaWRlcmF0aW9ucy4KCklNTyB0aGlz
IG1ha2VzIG1vcmUgc2Vuc2UgYW55d2F5IHNpbmNlIHRoZSBodyBkb2VzIGhhdmUgdGhlCmZlYXR1
cmUsIHdlJ3JlIGp1c3Qgbm90IHN1cHBvc2VkIHRvIHVzZSBpdC4KCkFuZCB0aGlzIGFsc28gbWFr
ZXMgdXMgYWN0dWFsbHkgZGlzYWJsZSBJUEMgaW4gY2FzZSBlZy4gdGhlCkJJT1MgZW5hYmxlZCBp
dCB3aGVuIGl0IHNob3VsZG4ndCBoYXZlLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2
aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jIHwgIDIgLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCAxOSArKysr
KysrKysrKysrKy0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDcgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggZmZhMmVlNzBhMDNkLi5kN2Mw
N2E5NDc0OTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAtNjAwLDggKzYwMCw2IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfY2hlcnJ5dmlld19pbmZv
ID0gewogCiAjZGVmaW5lIFNLTF9QTEFURk9STSBcCiAJR0VOOV9GRUFUVVJFUywgXAotCS8qIERp
c3BsYXkgV0EgIzA0NzcgV2FEaXNhYmxlSVBDOiBza2wgKi8gXAotCS5kaXNwbGF5Lmhhc19pcGMg
PSAwLCBcCiAJUExBVEZPUk0oSU5URUxfU0tZTEFLRSkKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBp
bnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9za3lsYWtlX2d0MV9pbmZvID0gewpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMKaW5kZXggY2UzNDhkZDZkYTJkLi5kZWNkZDc5YzM4MDUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYwpAQCAtNjM3NSwxNiArNjM3NSwyNSBAQCB2b2lkIGludGVsX2VuYWJsZV9pcGMo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCUk5MTVfV1JJVEUoRElTUF9BUkJf
Q1RMMiwgdmFsKTsKIH0KIAorc3RhdGljIGJvb2wgaW50ZWxfY2FuX2VuYWJsZV9pcGMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCS8qIERpc3BsYXkgV0EgIzA0NzcgV2FE
aXNhYmxlSVBDOiBza2wgKi8KKwlpZiAoSVNfU0tZTEFLRShkZXZfcHJpdikpCisJCXJldHVybiBm
YWxzZTsKKworCS8qIERpc3BsYXkgV0EgIzExNDE6IFNLTDphbGwgS0JMOmFsbCBDRkwgKi8KKwlp
ZiAoSVNfS0FCWUxBS0UoZGV2X3ByaXYpIHx8IElTX0NPRkZFRUxBS0UoZGV2X3ByaXYpKQorCQly
ZXR1cm4gZGV2X3ByaXYtPmRyYW1faW5mby5zeW1tZXRyaWNfbWVtb3J5OworCisJcmV0dXJuIHRy
dWU7Cit9CisKIHZvaWQgaW50ZWxfaW5pdF9pcGMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQogewogCWlmICghSEFTX0lQQyhkZXZfcHJpdikpCiAJCXJldHVybjsKIAotCS8qIERp
c3BsYXkgV0EgIzExNDE6IFNLTDphbGwgS0JMOmFsbCBDRkwgKi8KLQlpZiAoSVNfS0FCWUxBS0Uo
ZGV2X3ByaXYpIHx8IElTX0NPRkZFRUxBS0UoZGV2X3ByaXYpKQotCQlkZXZfcHJpdi0+aXBjX2Vu
YWJsZWQgPSBkZXZfcHJpdi0+ZHJhbV9pbmZvLnN5bW1ldHJpY19tZW1vcnk7Ci0JZWxzZQotCQlk
ZXZfcHJpdi0+aXBjX2VuYWJsZWQgPSB0cnVlOworCWRldl9wcml2LT5pcGNfZW5hYmxlZCA9IGlu
dGVsX2Nhbl9lbmFibGVfaXBjKGRldl9wcml2KTsKIAogCWludGVsX2VuYWJsZV9pcGMoZGV2X3By
aXYpOwogfQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
