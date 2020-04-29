Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5301BD921
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:10:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D493E6ECBA;
	Wed, 29 Apr 2020 10:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A55226EA95
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 10:10:49 +0000 (UTC)
IronPort-SDR: MFOGJa5OZ8hJkM8IMNuuAj23DNQpUQJc4fKJllrQV0NPuMO6CrBHoVH866GNp2T3WpihPv+VWD
 cYKbaPrwYDpA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 03:10:49 -0700
IronPort-SDR: TffKn1pMF7JoVNV3xYgJ0IWHT6cvnxTV5aGVlFcl99PANlfUec/ACRP4FNJ+tsmWykI64dWAA5
 gLX5TI/fDUhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,331,1583222400"; d="scan'208";a="276126617"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 29 Apr 2020 03:10:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 13:10:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 13:10:26 +0300
Message-Id: <20200429101034.8208-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/12] drm/i915/fbc: Fix nuke for pre-snb
 platforms
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBNU0dfRkJDX1JFTkRfU1RBVEUgcmVnaXN0ZXIgb25seSBleGlzdHMgb24gc25iKy4gRm9yIG9s
ZGVyCnBsYXRmb3JtcyAod291bGQgYWxzbyB3b3JrIGZvciBzbmIrKSB3ZSBjYW4gc2ltcGx5IHJl
d2l0ZSBEU1BTVVJGCnRvIHRyaWdnZXIgYSBmbGlwIG51a2UuCgpXaGlsZSBnZW5lcmFsbHkgUk1X
IGlzIGNvbnNpZGVyZWQgaGFybWZ1bCB3ZSdsbCB1c2UgaXQgaGVyZSBmb3IKc2ltcGxpY2l0eS4g
QW5kIHNpbmNlIEZCQyBkb2Vzbid0IGV4aXN0IGluIGk4MzAgd2UgZG9uJ3QgaGF2ZSB0bwp3b3Jy
eSBhYm91dCB0aGUgRFNQU1VSRiBkb3VibGUgYnVmZmVyaW5nIGhhcmR3YXJlIGZhaWxzIHByZXNl
bnQKb24gdGhhdCBwbGF0Zm9ybS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmMuYyB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNo
YW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYwppbmRleCA2MTNhYjQ5OWQ0MmUuLjk4MzIyNGUwN2VhZiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC0xODgsOCArMTg4
LDMwIEBAIHN0YXRpYyBib29sIGc0eF9mYmNfaXNfYWN0aXZlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAlyZXR1cm4gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgRFBGQ19DT05U
Uk9MKSAmIERQRkNfQ1RMX0VOOwogfQogCitzdGF0aWMgdm9pZCBpOHh4X2ZiY19yZWNvbXByZXNz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3sKKwlzdHJ1Y3QgaW50ZWxfZmJj
X3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZkZXZfcHJpdi0+ZmJjLnBhcmFtczsKKwllbnVtIGk5eHhf
cGxhbmVfaWQgaTl4eF9wbGFuZSA9IHBhcmFtcy0+Y3J0Yy5pOXh4X3BsYW5lOworCisJc3Bpbl9s
b2NrX2lycSgmZGV2X3ByaXYtPnVuY29yZS5sb2NrKTsKKwlpbnRlbF9kZV93cml0ZV9mdyhkZXZf
cHJpdiwgRFNQQUREUihpOXh4X3BsYW5lKSwKKwkJCSAgaW50ZWxfZGVfcmVhZF9mdyhkZXZfcHJp
diwgRFNQQUREUihpOXh4X3BsYW5lKSkpOworCXNwaW5fdW5sb2NrX2lycSgmZGV2X3ByaXYtPnVu
Y29yZS5sb2NrKTsKK30KKworc3RhdGljIHZvaWQgaTk2NV9mYmNfcmVjb21wcmVzcyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit7CisJc3RydWN0IGludGVsX2ZiY19yZWdfcGFy
YW1zICpwYXJhbXMgPSAmZGV2X3ByaXYtPmZiYy5wYXJhbXM7CisJZW51bSBpOXh4X3BsYW5lX2lk
IGk5eHhfcGxhbmUgPSBwYXJhbXMtPmNydGMuaTl4eF9wbGFuZTsKKworCXNwaW5fbG9ja19pcnEo
JmRldl9wcml2LT51bmNvcmUubG9jayk7CisJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIERT
UFNVUkYoaTl4eF9wbGFuZSksCisJCQkgIGludGVsX2RlX3JlYWRfZncoZGV2X3ByaXYsIERTUFNV
UkYoaTl4eF9wbGFuZSkpKTsKKwlzcGluX3VubG9ja19pcnEoJmRldl9wcml2LT51bmNvcmUubG9j
ayk7Cit9CisKIC8qIFRoaXMgZnVuY3Rpb24gZm9yY2VzIGEgQ0ZCIHJlY29tcHJlc3Npb24gdGhy
b3VnaCB0aGUgbnVrZSBvcGVyYXRpb24uICovCi1zdGF0aWMgdm9pZCBpbnRlbF9mYmNfcmVjb21w
cmVzcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0aWMgdm9pZCBzbmJf
ZmJjX3JlY29tcHJlc3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXN0
cnVjdCBpbnRlbF9mYmMgKmZiYyA9ICZkZXZfcHJpdi0+ZmJjOwogCkBAIC0xOTksNiArMjIxLDE2
IEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY19yZWNvbXByZXNzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAlpbnRlbF9kZV9wb3N0aW5nX3JlYWQoZGV2X3ByaXYsIE1TR19GQkNf
UkVORF9TVEFURSk7CiB9CiAKK3N0YXRpYyB2b2lkIGludGVsX2ZiY19yZWNvbXByZXNzKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3sKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSA2KQorCQlzbmJfZmJjX3JlY29tcHJlc3MoZGV2X3ByaXYpOworCWVsc2UgaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gNCkKKwkJaTk2NV9mYmNfcmVjb21wcmVzcyhkZXZfcHJpdik7CisJ
ZWxzZQorCQlpOHh4X2ZiY19yZWNvbXByZXNzKGRldl9wcml2KTsKK30KKwogc3RhdGljIHZvaWQg
aWxrX2ZiY19hY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJ
c3RydWN0IGludGVsX2ZiY19yZWdfcGFyYW1zICpwYXJhbXMgPSAmZGV2X3ByaXYtPmZiYy5wYXJh
bXM7Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
