Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA2CCBA3A
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 14:20:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B9089C08;
	Fri,  4 Oct 2019 12:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2830C89C08
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 12:20:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 05:20:26 -0700
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="198831608"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 05:20:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 15:20:17 +0300
Message-Id: <20191004122019.12009-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [CI 1/3] drm/i915/vga: rename intel_vga_msr_write() to
 intel_vga_reset_io_mem()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVuYW1lIHRoZSBmdW5jdGlvbiBwZXIgVmlsbGUncyBzdWdnZXN0aW9uLiBObyBmdW5jdGlvbmFs
IGNoYW5nZXMuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KU3VnZ2VzdGVkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYyB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMg
ICAgICAgICAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2Eu
aCAgICAgICAgICAgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jCmluZGV4IGJiNjQyYTFhMGRkNC4uMDYxNjI4NGM2ZGE2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwpA
QCAtMjY3LDcgKzI2Nyw3IEBAIHN0YXRpYyB2b2lkIGhzd19wb3dlcl93ZWxsX3Bvc3RfZW5hYmxl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkgICAgICAgdTggaXJxX3Bp
cGVfbWFzaywgYm9vbCBoYXNfdmdhKQogewogCWlmIChoYXNfdmdhKQotCQlpbnRlbF92Z2FfbXNy
X3dyaXRlKGRldl9wcml2KTsKKwkJaW50ZWxfdmdhX3Jlc2V0X2lvX21lbShkZXZfcHJpdik7CiAK
IAlpZiAoaXJxX3BpcGVfbWFzaykKIAkJZ2VuOF9pcnFfcG93ZXJfd2VsbF9wb3N0X2VuYWJsZShk
ZXZfcHJpdiwgaXJxX3BpcGVfbWFzayk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3ZnYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92Z2EuYwppbmRleCA3MzI1NjhlYWE5ODguLjJmZjcyOTM5ODZkNCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jCkBAIC03Miw3ICs3Miw3IEBAIHZvaWQgaW50ZWxf
dmdhX3JlZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpbnRlbF9kaXNw
bGF5X3Bvd2VyX3B1dChpOTE1LCBQT1dFUl9ET01BSU5fVkdBLCB3YWtlcmVmKTsKIH0KIAotdm9p
ZCBpbnRlbF92Z2FfbXNyX3dyaXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQordm9p
ZCBpbnRlbF92Z2FfcmVzZXRfaW9fbWVtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQog
ewogCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gaTkxNS0+ZHJtLnBkZXY7CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5oCmluZGV4IDM1MTc4NzJlNjJhYy4uYmE1YjU1Yjkx
N2YwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmgKQEAgLTgsNyAr
OCw3IEBACiAKIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlOwogCi12b2lkIGludGVsX3ZnYV9tc3Jf
d3JpdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwordm9pZCBpbnRlbF92Z2FfcmVz
ZXRfaW9fbWVtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKIHZvaWQgaW50ZWxfdmdh
X2Rpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogdm9pZCBpbnRlbF92Z2Ff
cmVkaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKIHZvaWQgaW50ZWxfdmdh
X3JlZGlzYWJsZV9wb3dlcl9vbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Ci0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
