Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2955B21BE89
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 22:34:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 806ED6ED11;
	Fri, 10 Jul 2020 20:34:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5A1F6ED11
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 20:34:15 +0000 (UTC)
IronPort-SDR: hwwajvfNizLQFB8MXjOviEub7UvxessN5rHofNIvK++e6cLsvhQ/iBe4LnRLJbT2A4c6+WGnFJ
 Gkx3KDr65evQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="136484094"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="136484094"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 13:34:11 -0700
IronPort-SDR: fL4KZe1zZTwwyc9VwUjIxVtU4sxlsqDGRvmM7TzgrV7gJr9ttosz7DmVwONen2M1J92dydwvw9
 MhuWMtGgMkXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="389628455"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 10 Jul 2020 13:34:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Jul 2020 23:34:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 23:34:08 +0300
Message-Id: <20200710203408.23039-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Recalculate FBC w/a stride when needed
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSB3ZSdyZSBmYWlsaW5nIHRvIHJlY2FsY3VsYXRlIHRoZSBnZW45IEZCQyB3L2Egc3Ry
aWRlCnVubGVzcyBzb21ldGhpbmcgbW9yZSBkcmFzdGljIHRoYW4ganVzdCB0aGUgbW9kaWZpZXIg
aXRzZWxmIGhhcwpjaGFuZ2VkLiBUaGlzIG9mdGVuIGxlYXZlcyB1cyB3aXRoIEZCQyBlbmFibGVk
IHdpdGggdGhlIGxpbmVhcgpmYmRldiBmcmFtZWJ1ZmZlciB3aXRob3V0IHRoZSB3L2Egc3RyaWRl
IGVuYWJsZWQuIFRoYXQgd2lsbCBjYXVzZQphbiBpbW1lZGlhdGUgdW5kZXJydW4gYW5kIEZCQyB3
aWxsIGdldCBwcm9tcHRseSBkaXNhYmxlZC4KCkZpeCB0aGUgcHJvYmxlbSBieSBjaGVja2luZyBp
ZiB0aGUgdy9hIHN0cmlkZSBpcyBhYm91dCB0byBjaGFuZ2UsCmFuZCBnbyB0aHJvdWdoIHRoZSBm
dWxsIGRhbmNlIGlmIHNvLiBUaGlzIHBhcnQgb2YgdGhlIEZCQyBjb2RlCmlzIHN0aWxsIHByZXR0
eSBtdWNoIGEgZGlzYXN0ZXIgYW5kIHdpbGwgbmVlZCBsb3RzIG1vcmUgd29yay4KQnV0IHRoaXMg
c2hvdWxkIGF0IGxlYXN0IGZpeCB0aGUgaW1tZWRpYXRlIGlzc3VlLgoKQ2M6IHN0YWJsZUB2Z2Vy
Lmtlcm5lbC5vcmcKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jIHwgMjkgKysrKysrKysrKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjIg
aW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYwppbmRleCBlZjJlYjE0ZjYxNTcuLmZmMTk5Mzc0ZWQzNiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC03NDIsNiArNzQyLDI1IEBAIHN0
YXRpYyBib29sIGludGVsX2ZiY19jZmJfc2l6ZV9jaGFuZ2VkKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAkJZmJjLT5jb21wcmVzc2VkX2ZiLnNpemUgKiBmYmMtPnRocmVzaG9s
ZDsKIH0KIAorc3RhdGljIHUxNiBpbnRlbF9mYmNfZ2VuOV93YV9jZmJfc3RyaWRlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3sKKwlzdHJ1Y3QgaW50ZWxfZmJjICpmYmMgPSAm
ZGV2X3ByaXYtPmZiYzsKKwlzdHJ1Y3QgaW50ZWxfZmJjX3N0YXRlX2NhY2hlICpjYWNoZSA9ICZm
YmMtPnN0YXRlX2NhY2hlOworCisJaWYgKChJU19HRU45X0JDKGRldl9wcml2KSB8fCBJU19CUk9Y
VE9OKGRldl9wcml2KSkgJiYKKwkgICAgY2FjaGUtPmZiLm1vZGlmaWVyICE9IEk5MTVfRk9STUFU
X01PRF9YX1RJTEVEKQorCQlyZXR1cm4gRElWX1JPVU5EX1VQKGNhY2hlLT5wbGFuZS5zcmNfdywg
MzIgKiBmYmMtPnRocmVzaG9sZCkgKiA4OworCWVsc2UKKwkJcmV0dXJuIDA7Cit9CisKK3N0YXRp
YyBib29sIGludGVsX2ZiY19nZW45X3dhX2NmYl9zdHJpZGVfY2hhbmdlZChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit7CisJc3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9w
cml2LT5mYmM7CisKKwlyZXR1cm4gZmJjLT5wYXJhbXMuZ2VuOV93YV9jZmJfc3RyaWRlICE9IGlu
dGVsX2ZiY19nZW45X3dhX2NmYl9zdHJpZGUoZGV2X3ByaXYpOworfQorCiBzdGF0aWMgYm9vbCBp
bnRlbF9mYmNfY2FuX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7
CiAJc3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9wcml2LT5mYmM7CkBAIC0xMjE4LDcgKzEy
MzcsOCBAQCB2b2lkIGludGVsX2ZiY19lbmFibGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsCiAKIAlpZiAoZmJjLT5jcnRjKSB7CiAJCWlmIChmYmMtPmNydGMgIT0gY3J0YyB8fAot
CQkgICAgIWludGVsX2ZiY19jZmJfc2l6ZV9jaGFuZ2VkKGRldl9wcml2KSkKKwkJICAgICghaW50
ZWxfZmJjX2NmYl9zaXplX2NoYW5nZWQoZGV2X3ByaXYpICYmCisJCSAgICAgIWludGVsX2ZiY19n
ZW45X3dhX2NmYl9zdHJpZGVfY2hhbmdlZChkZXZfcHJpdikpKQogCQkJZ290byBvdXQ7CiAKIAkJ
X19pbnRlbF9mYmNfZGlzYWJsZShkZXZfcHJpdik7CkBAIC0xMjQwLDEyICsxMjYwLDcgQEAgdm9p
ZCBpbnRlbF9mYmNfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQln
b3RvIG91dDsKIAl9CiAKLQlpZiAoKElTX0dFTjlfQkMoZGV2X3ByaXYpIHx8IElTX0JST1hUT04o
ZGV2X3ByaXYpKSAmJgotCSAgICBwbGFuZV9zdGF0ZS0+aHcuZmItPm1vZGlmaWVyICE9IEk5MTVf
Rk9STUFUX01PRF9YX1RJTEVEKQotCQljYWNoZS0+Z2VuOV93YV9jZmJfc3RyaWRlID0KLQkJCURJ
Vl9ST1VORF9VUChjYWNoZS0+cGxhbmUuc3JjX3csIDMyICogZmJjLT50aHJlc2hvbGQpICogODsK
LQllbHNlCi0JCWNhY2hlLT5nZW45X3dhX2NmYl9zdHJpZGUgPSAwOworCWNhY2hlLT5nZW45X3dh
X2NmYl9zdHJpZGUgPSBpbnRlbF9mYmNfZ2VuOV93YV9jZmJfc3RyaWRlKGRldl9wcml2KTsKIAog
CWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiRW5hYmxpbmcgRkJDIG9uIHBpcGUgJWNcbiIs
CiAJCSAgICBwaXBlX25hbWUoY3J0Yy0+cGlwZSkpOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
