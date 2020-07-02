Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A52C212806
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 17:37:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B896E212;
	Thu,  2 Jul 2020 15:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 473B06E212
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 15:37:32 +0000 (UTC)
IronPort-SDR: OE/ZwF4d36wfiHLZYWdiX4QCsAmX+cfWfnTvbZJ3tVH+0q5wcY+1svlL91WmyiFRfOEBGtfTSc
 Y1axOyKsfBew==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="145084607"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="145084607"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 08:37:31 -0700
IronPort-SDR: T8VFQE7YPyEkkCIEhqYMnpByJl4gNy2oWTU9x7YjFCSYhh1KlOrGzUhLMQZlxYbLK7tW3NhYWJ
 OVc9alsR8C/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="314170251"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 02 Jul 2020 08:37:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Jul 2020 18:37:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 18:37:21 +0300
Message-Id: <20200702153723.24327-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
References: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/fbc: Fix nuke for pre-snb platforms
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
MTUvZGlzcGxheS9pbnRlbF9mYmMuYwppbmRleCBkMzBjMmEzODkyOTQuLjAzNjU0NmNlOGRiOCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC0xODcsOCArMTg3
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
cnVjdCBpbnRlbF9mYmMgKmZiYyA9ICZkZXZfcHJpdi0+ZmJjOwogCkBAIC0xOTgsNiArMjIwLDE2
IEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY19yZWNvbXByZXNzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAlpbnRlbF9kZV9wb3N0aW5nX3JlYWQoZGV2X3ByaXYsIE1TR19GQkNf
UkVORF9TVEFURSk7CiB9CiAKK3N0YXRpYyB2b2lkIGludGVsX2ZiY19yZWNvbXByZXNzKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3sKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSA2KQorCQlzbmJfZmJjX3JlY29tcHJlc3MoZGV2X3ByaXYpOworCWVsc2UgaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gNCkKKwkJaTk2NV9mYmNfcmVjb21wcmVzcyhkZXZfcHJpdik7CisJ
ZWxzZQorCQlpOHh4X2ZiY19yZWNvbXByZXNzKGRldl9wcml2KTsKK30KKwogc3RhdGljIHZvaWQg
aWxrX2ZiY19hY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJ
c3RydWN0IGludGVsX2ZiY19yZWdfcGFyYW1zICpwYXJhbXMgPSAmZGV2X3ByaXYtPmZiYy5wYXJh
bXM7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
