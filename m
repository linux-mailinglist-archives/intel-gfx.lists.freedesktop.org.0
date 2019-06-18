Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9157D4A197
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:04:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E54F6E1B9;
	Tue, 18 Jun 2019 13:04:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 519FD6E178
 for <Intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 13:04:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 06:04:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="160053404"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jun 2019 06:04:28 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 14:03:40 +0100
Message-Id: <20190618130345.6135-29-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618130345.6135-1-tvrtko.ursulin@linux.intel.com>
References: <20190618130345.6135-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/33] drm/i915: Store ggtt pointer in intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoaXMgd2ls
bCBiZWNvbWUgdXNlZnVsIGluIHRoZSBmb2xsb3dpbmcgcGF0Y2guCgp2MjoKICogQXNzaWduIHRo
ZSBwb2ludGVyIHRocm91Z2ggYSBoZWxwZXIgb24gdGhlIHRvcCBsZXZlbCB0byB3b3JrIGFyb3Vu
ZAogICB0aGUgbGF5ZXJpbmcgdmlvbGF0aW9uLiAoQ2hyaXMpCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogUm9kcmln
byBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0LmMgICAgICAgfCA1ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndC5oICAgICAgIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90
eXBlcy5oIHwgMiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICB8
IDIgKysKIDQgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndC5jCmluZGV4IGQyNWJjYzRhZTJjOS4uMjA0ZTcwMzljYTMyIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0LmMKQEAgLTIzLDYgKzIzLDExIEBAIHZvaWQgaW50ZWxfZ3RfaW5p
dF9lYXJseShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKIAlpbnRlbF9ndF9wbV9pbml0X2Vhcmx5KGd0KTsKIH0KIAordm9pZCBpbnRlbF9ndF9pbml0
X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQoreworCWk5MTUtPmd0LmdndHQgPSAm
aTkxNS0+Z2d0dDsKK30KKwogc3RhdGljIHZvaWQgcm13X3NldChzdHJ1Y3QgaW50ZWxfdW5jb3Jl
ICp1bmNvcmUsIGk5MTVfcmVnX3QgcmVnLCB1MzIgc2V0KQogewogCWludGVsX3VuY29yZV9ybXco
dW5jb3JlLCByZWcsIDAsIHNldCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaAppbmRleCBm
ZmRjMzAxNDQ4NmYuLjA5MWRlZDRkZWVhZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5o
CkBAIC0xMyw2ICsxMyw3IEBACiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKIAogdm9pZCBpbnRl
bF9ndF9pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KTsKK3ZvaWQgaW50ZWxfZ3RfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSk7CiAKIHZvaWQgaW50ZWxfZ3RfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyhzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0KTsKIHZvaWQgaW50ZWxfZ3RfY2xlYXJfZXJyb3JfcmVnaXN0ZXJzKHN0cnVj
dCBpbnRlbF9ndCAqZ3QsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaApp
bmRleCBkOTZkZjRmNjg3NDEuLjIzM2Y3MzMxNmE0MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndF90eXBlcy5oCkBAIC0xOCwxMSArMTgsMTMgQEAKICNpbmNsdWRlICJpbnRlbF93
YWtlcmVmLmgiCiAKIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlOworc3RydWN0IGk5MTVfZ2d0dDsK
IHN0cnVjdCBpbnRlbF91bmNvcmU7CiAKIHN0cnVjdCBpbnRlbF9ndCB7CiAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTU7CiAJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlOworCXN0cnVj
dCBpOTE1X2dndHQgKmdndHQ7CiAKIAlzdHJ1Y3QgaTkxNV9ndF90aW1lbGluZXMgewogCQlzdHJ1
Y3QgbXV0ZXggbXV0ZXg7IC8qIHByb3RlY3RzIGxpc3QsIHRhaW50ZWQgYnkgR1BVICovCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYwppbmRleCBjNWRjNmE2NzJmN2MuLjY4ZDhhMTljYWFmNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCkBAIC0xNTkzLDYgKzE1OTMsOCBAQCBzdGF0aWMgaW50IGk5MTVf
ZHJpdmVyX2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWlmIChy
ZXQpCiAJCWdvdG8gZXJyX2dndHQ7CiAKKwlpbnRlbF9ndF9pbml0X2h3KGRldl9wcml2KTsKKwog
CXJldCA9IGk5MTVfZ2d0dF9lbmFibGVfaHcoZGV2X3ByaXYpOwogCWlmIChyZXQpIHsKIAkJRFJN
X0VSUk9SKCJmYWlsZWQgdG8gZW5hYmxlIEdHVFRcbiIpOwotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
