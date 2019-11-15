Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED34FE620
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 21:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 404466E120;
	Fri, 15 Nov 2019 20:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F6056E120
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 20:01:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 12:01:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,309,1569308400"; d="scan'208";a="199309953"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga008.jf.intel.com with ESMTP; 15 Nov 2019 12:01:18 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 12:02:28 -0800
Message-Id: <20191115200228.24130-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/irq: Disable display interrupt control
 during handler on gen11+
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGdlbjEyIGJzcGVjIGluZGljYXRlcyB3ZSBzaG91bGQgZGlzYWJsZSBkaXNwbGF5IGludGVy
cnVwdHMgdmlhCkRJU1BMQVlfSU5UX0NUTCBkdXJpbmcgdGhlIGRpc3BsYXkgaW50ZXJydXB0IGhh
bmRsZXIgYW5kIHJlLWVuYWJsZSB0aGVtCmFnYWluIGF0IHRoZSBlbmQuICBUaGlzIGlzbid0IHRl
Y2huaWNhbGx5IHJlcXVpcmVkIG9uIGdlbjExLCBidXQgaXMKc3RpbGwgc2FmZSAoY29uZmlybWVk
IGludGVybmFsbHkgd2l0aCBoYXJkd2FyZSBhcmNoaXRlY3RzKS4KCkJzcGVjOiA0OTIxMgpDYzog
QWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+CkNjOiBDbGludCBUYXlsb3Ig
PGNsaW50b24uYS50YXlsb3JAaW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDE3
ICsrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IDAyOGNiNjIzOWMxMi4uMjBh
MDZjZWFlMmRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTI0NzcsNyArMjQ3NywxNyBA
QCBfX2dlbjExX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICogY29uc3QgaTkx
NSwKIAogCS8qIElSUXMgYXJlIHN5bmNlZCBkdXJpbmcgcnVudGltZV9zdXNwZW5kLCB3ZSBkb24n
dCByZXF1aXJlIGEgd2FrZXJlZiAqLwogCWlmIChtYXN0ZXJfY3RsICYgR0VOMTFfRElTUExBWV9J
UlEpIHsKLQkJY29uc3QgdTMyIGRpc3BfY3RsID0gcmF3X3JlZ19yZWFkKHJlZ3MsIEdFTjExX0RJ
U1BMQVlfSU5UX0NUTCk7CisJCXUzMiBkaXNwX2N0bDsKKworCQkvKgorCQkgKiBDbGVhciBiaXQg
MzEgdG8gcHJldmVudCBtaXNzaW5nIGFueSBpbnRlcnJ1cHRzIG9jY3VycmluZworCQkgKiBiYWNr
LXRvLWJhY2sgb3IgZHVyaW5nIHRoZSBzZXJ2aWNlIHJvdXRpbmUuICBPbmx5IHJlcXVpcmVkCisJ
CSAqIG9uIGdlbjEyKywgYnV0IHN0aWxsIHNhZmUgb24gZ2VuMTEgdG9vIChhc3N1bWluZyB3ZSBo
YXZlCisJCSAqIHRoZSBjb21wbGVtZW50YXJ5IHJlLWVuYWJsZSBmYXJ0aGVyIGRvd24pLgorCQkg
Ki8KKwkJcmF3X3JlZ193cml0ZShyZWdzLCBHRU4xMV9ESVNQTEFZX0lOVF9DVEwsIDApOworCisJ
CWRpc3BfY3RsID0gcmF3X3JlZ19yZWFkKHJlZ3MsIEdFTjExX0RJU1BMQVlfSU5UX0NUTCk7CiAK
IAkJZGlzYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZpOTE1LT5ydW50aW1lX3BtKTsKIAkJLyoK
QEAgLTI0ODUsNyArMjQ5NSwxMiBAQCBfX2dlbjExX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICogY29uc3QgaTkxNSwKIAkJICogZm9yIHRoZSBkaXNwbGF5IHJlbGF0ZWQgYml0
cy4KIAkJICovCiAJCWdlbjhfZGVfaXJxX2hhbmRsZXIoaTkxNSwgZGlzcF9jdGwpOworCiAJCWVu
YWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZpOTE1LT5ydW50aW1lX3BtKTsKKworCQkvKiBSZS1l
bmFibGUgZGlzcGxheSBpbnRlcnJ1cHQgY29udHJvbCAqLworCQlyYXdfcmVnX3dyaXRlKHJlZ3Ms
IEdFTjExX0RJU1BMQVlfSU5UX0NUTCwKKwkJCSAgICAgIEdFTjExX0RJU1BMQVlfSVJRX0VOQUJM
RSk7CiAJfQogCiAJZ3VfbWlzY19paXIgPSBnZW4xMV9ndV9taXNjX2lycV9hY2soZ3QsIG1hc3Rl
cl9jdGwpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
