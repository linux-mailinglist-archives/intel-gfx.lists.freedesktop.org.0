Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BAA1BD92D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D3E6ECE4;
	Wed, 29 Apr 2020 10:11:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D1316EE02
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 10:11:04 +0000 (UTC)
IronPort-SDR: 9u0AP5u9UDp40I/KaR/ajsAhuF6qh68aqK5sF9zsU2oMySyNQjpaV1161y+9+TN+H2BOPvWzy5
 iiopAlNmfWTQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 03:11:03 -0700
IronPort-SDR: Wt0COhYDmEGGzhZjO0vaJy3Hts3TiIBPBCjEbKODqYCTb7rzDJJxANftye/iW8vW4Ro1tuLAHg
 aeDKZ83xBWxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,331,1583222400"; d="scan'208";a="367764097"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 29 Apr 2020 03:11:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 13:11:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 13:10:31 +0300
Message-Id: <20200429101034.8208-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/12] drm/i915/fbc: Store the fbc1 compression
 interval in the params
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkF2
b2lkIHRoZSBGQkNfQ09OVFJPTCBybXcgYW5kIGp1c3Qgc3RvcmUgdGhlIGZiYyBjb21wcmVzc2lv
bgppbnRlcnZhbCBpbiB0aGUgcGFyYW1zLwoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMTMgKysrKysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8ICAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYwppbmRleCBkYmVmNThhZjRiOTQuLmIxZWI2YTJlY2M0MyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC0xMzIsOCArMTMyLDcgQEAgc3RhdGlj
IHZvaWQgaTh4eF9mYmNfYWN0aXZhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCX0KIAogCS8qIGVuYWJsZSBpdC4uLiAqLwotCWZiY19jdGwgPSBpbnRlbF9kZV9yZWFkKGRl
dl9wcml2LCBGQkNfQ09OVFJPTCk7Ci0JZmJjX2N0bCAmPSBGQkNfQ1RMX0lOVEVSVkFMKDB4M2Zm
Zik7CisJZmJjX2N0bCA9IEZCQ19DVExfSU5URVJWQUwocGFyYW1zLT5pbnRlcnZhbCk7CiAJZmJj
X2N0bCB8PSBGQkNfQ1RMX0VOIHwgRkJDX0NUTF9QRVJJT0RJQzsKIAlpZiAoSVNfSTk0NUdNKGRl
dl9wcml2KSkKIAkJZmJjX2N0bCB8PSBGQkNfQ1RMX0MzX0lETEU7IC8qIDk0NSBuZWVkcyBzcGVj
aWFsIFNSIGhhbmRsaW5nICovCkBAIC03MjgsNiArNzI3LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxf
ZmJjX3VwZGF0ZV9zdGF0ZV9jYWNoZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAljYWNoZS0+
ZmIubW9kaWZpZXIgPSBmYi0+bW9kaWZpZXI7CiAJY2FjaGUtPmZiLnN0cmlkZSA9IHBsYW5lX3N0
YXRlLT5jb2xvcl9wbGFuZVswXS5zdHJpZGU7CiAKKwkvKiBUaGlzIHZhbHVlIHdhcyBwdWxsZWQg
b3V0IG9mIHNvbWVvbmUncyBoYXQgKi8KKwljYWNoZS0+aW50ZXJ2YWwgPSA1MDA7CisKIAljYWNo
ZS0+ZmVuY2VfeV9vZmZzZXQgPSBpbnRlbF9wbGFuZV9mZW5jZV95X29mZnNldChwbGFuZV9zdGF0
ZSk7CiAKIAlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgcGxhbmVfc3RhdGUtPmZsYWdzICYg
UExBTkVfSEFTX0ZFTkNFICYmCkBAIC05MDIsNiArOTA0LDggQEAgc3RhdGljIHZvaWQgaW50ZWxf
ZmJjX2dldF9yZWdfcGFyYW1zKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCXBhcmFtcy0+ZmVu
Y2VfaWQgPSBjYWNoZS0+ZmVuY2VfaWQ7CiAJcGFyYW1zLT5mZW5jZV95X29mZnNldCA9IGNhY2hl
LT5mZW5jZV95X29mZnNldDsKIAorCXBhcmFtcy0+aW50ZXJ2YWwgPSBjYWNoZS0+aW50ZXJ2YWw7
CisKIAlwYXJhbXMtPmNydGMucGlwZSA9IGNydGMtPnBpcGU7CiAJcGFyYW1zLT5jcnRjLmk5eHhf
cGxhbmUgPSB0b19pbnRlbF9wbGFuZShjcnRjLT5iYXNlLnByaW1hcnkpLT5pOXh4X3BsYW5lOwog
CkBAIC0xNDQ5LDExICsxNDUzLDYgQEAgdm9pZCBpbnRlbF9mYmNfaW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCXJldHVybjsKIAl9CiAKLQkvKiBUaGlzIHZhbHVlIHdh
cyBwdWxsZWQgb3V0IG9mIHNvbWVvbmUncyBoYXQgKi8KLQlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA8PSA0ICYmICFJU19HTTQ1KGRldl9wcml2KSkKLQkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYs
IEZCQ19DT05UUk9MLAotCQkJICAgICAgIEZCQ19DVExfSU5URVJWQUwoNTAwKSk7Ci0KIAkvKiBX
ZSBzdGlsbCBkb24ndCBoYXZlIGFueSBzb3J0IG9mIGhhcmR3YXJlIHN0YXRlIHJlYWRvdXQgZm9y
IEZCQywgc28KIAkgKiBkZWFjdGl2YXRlIGl0IGluIGNhc2UgdGhlIEJJT1MgYWN0aXZhdGVkIGl0
IHRvIG1ha2Ugc3VyZSBzb2Z0d2FyZQogCSAqIG1hdGNoZXMgdGhlIGhhcmR3YXJlIHN0YXRlLiAq
LwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggYTYzNGZkMjMzMGMzLi5iYzY2YTdjYjg4NmIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtNDE5LDYgKzQxOSw3IEBAIHN0cnVjdCBpbnRl
bF9mYmMgewogCiAJCXVuc2lnbmVkIGludCBmZW5jZV95X29mZnNldDsKIAkJdTE2IGdlbjlfd2Ff
Y2ZiX3N0cmlkZTsKKwkJdTE2IGludGVydmFsOwogCQlzOCBmZW5jZV9pZDsKIAl9IHN0YXRlX2Nh
Y2hlOwogCkBAIC00NDMsNiArNDQ0LDcgQEAgc3RydWN0IGludGVsX2ZiYyB7CiAJCWludCBjZmJf
c2l6ZTsKIAkJdW5zaWduZWQgaW50IGZlbmNlX3lfb2Zmc2V0OwogCQl1MTYgZ2VuOV93YV9jZmJf
c3RyaWRlOworCQl1MTYgaW50ZXJ2YWw7CiAJCXM4IGZlbmNlX2lkOwogCQlib29sIHBsYW5lX3Zp
c2libGU7CiAJfSBwYXJhbXM7Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
