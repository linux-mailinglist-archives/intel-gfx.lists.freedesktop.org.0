Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 344762D1A9A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 21:35:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8E7F89BA3;
	Mon,  7 Dec 2020 20:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C09B389BA3
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 20:35:20 +0000 (UTC)
IronPort-SDR: YXSywubYFnQ5CyoEiVC6C5PKlvfVwbU8vue6s3ZOu0dz9tc0pq3SpZtU3scEoBU4e+kN8b315d
 KEPT8UWXoebw==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="161536242"
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="161536242"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 12:35:18 -0800
IronPort-SDR: m/l/Dw0sOLAoMYSKp5GmbDSfLhNk/kBFBwkgzV207i+im2UvJxcytY+EUq0Wnkpk+1waQqLY0c
 +2q/8IV00SWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="437073673"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 07 Dec 2020 12:35:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Dec 2020 22:35:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Dec 2020 22:35:12 +0200
Message-Id: <20201207203512.1718-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201207203512.1718-1-ville.syrjala@linux.intel.com>
References: <20201207203512.1718-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Unify the sanity checks for the
 buf trans tables
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdl
dCByaWQgb2YgdGhlICJJIGxpa2UgbXkgcmFuZG9tIG5ldyBzdHlsZSBiZXN0IiBhcHByb2FjaCBh
bmQgdW5pZnkKdGhlIGhhbmRsaW5nIGZvciB0aGUgRERJIGJ1ZiB0cmFucyB0YWJsZSBzYW5pdHkg
Y2hlY2tzIG9uY2UgYWdhaW4uCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMgfCAyMyArKysrKysrKysrLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDEwIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IGMzYTE1Y2U2NjQ3OC4uNjg2OTNkNDUzOGUyIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTI2MzEsMTUgKzI2
MzEsMTEgQEAgc3RhdGljIHZvaWQgaWNsX2RkaV9jb21ib192c3dpbmdfcHJvZ3JhbShzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJZGRpX3RyYW5zbGF0aW9ucyA9IGVobF9nZXRfY29t
Ym9fYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwogCWVsc2UKIAkJ
ZGRpX3RyYW5zbGF0aW9ucyA9IGljbF9nZXRfY29tYm9fYnVmX3RyYW5zKGVuY29kZXIsIGNydGNf
c3RhdGUsICZuX2VudHJpZXMpOwotCWlmICghZGRpX3RyYW5zbGF0aW9ucykKLQkJcmV0dXJuOwog
Ci0JaWYgKGxldmVsID49IG5fZW50cmllcykgewotCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRy
bSwKLQkJCSAgICAiRERJIHRyYW5zbGF0aW9uIG5vdCBmb3VuZCBmb3IgbGV2ZWwgJWQuIFVzaW5n
ICVkIGluc3RlYWQuIiwKLQkJCSAgICBsZXZlbCwgbl9lbnRyaWVzIC0gMSk7CisJaWYgKGRybV9X
QVJOX09OX09OQ0UoJmRldl9wcml2LT5kcm0sICFkZGlfdHJhbnNsYXRpb25zKSkKKwkJcmV0dXJu
OworCWlmIChkcm1fV0FSTl9PTl9PTkNFKCZkZXZfcHJpdi0+ZHJtLCBsZXZlbCA+PSBuX2VudHJp
ZXMpKQogCQlsZXZlbCA9IG5fZW50cmllcyAtIDE7Ci0JfQogCiAJaWYgKGludGVsX2NydGNfaGFz
X3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0VEUCkpIHsKIAkJc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsKQEAgLTI3NjAsMTIgKzI3NTYs
MTEgQEAgc3RhdGljIHZvaWQgaWNsX21nX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAogCXUzMiB2YWw7CiAKIAlkZGlfdHJhbnNsYXRpb25zID0g
aWNsX2dldF9tZ19idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Ci0J
aWYgKGxldmVsID49IG5fZW50cmllcykgewotCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwK
LQkJCSAgICAiRERJIHRyYW5zbGF0aW9uIG5vdCBmb3VuZCBmb3IgbGV2ZWwgJWQuIFVzaW5nICVk
IGluc3RlYWQuIiwKLQkJCSAgICBsZXZlbCwgbl9lbnRyaWVzIC0gMSk7CisKKwlpZiAoZHJtX1dB
Uk5fT05fT05DRSgmZGV2X3ByaXYtPmRybSwgIWRkaV90cmFuc2xhdGlvbnMpKQorCQlyZXR1cm47
CisJaWYgKGRybV9XQVJOX09OX09OQ0UoJmRldl9wcml2LT5kcm0sIGxldmVsID49IG5fZW50cmll
cykpCiAJCWxldmVsID0gbl9lbnRyaWVzIC0gMTsKLQl9CiAKIAkvKiBTZXQgTUdfVFhfTElOS19Q
QVJBTVMgY3JpX3VzZV9mczMyIHRvIDAuICovCiAJZm9yIChsbiA9IDA7IGxuIDwgMjsgbG4rKykg
ewpAQCAtMjg5Nyw3ICsyODkyLDkgQEAgdGdsX2RrbF9waHlfZGRpX3Zzd2luZ19zZXF1ZW5jZShz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAogCWRkaV90cmFuc2xhdGlvbnMgPSB0Z2xf
Z2V0X2RrbF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7CiAKLQlp
ZiAobGV2ZWwgPj0gbl9lbnRyaWVzKQorCWlmIChkcm1fV0FSTl9PTl9PTkNFKCZkZXZfcHJpdi0+
ZHJtLCAhZGRpX3RyYW5zbGF0aW9ucykpCisJCXJldHVybjsKKwlpZiAoZHJtX1dBUk5fT05fT05D
RSgmZGV2X3ByaXYtPmRybSwgbGV2ZWwgPj0gbl9lbnRyaWVzKSkKIAkJbGV2ZWwgPSBuX2VudHJp
ZXMgLSAxOwogCiAJZHBjbnRfbWFzayA9IChES0xfVFhfUFJFU0hPT1RfQ09FRkZfTUFTSyB8Ci0t
IAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
