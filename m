Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB70436C3
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:39:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB3F89A76;
	Thu, 13 Jun 2019 13:39:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 684EC89A92
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 13:39:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 06:39:24 -0700
X-ExtLoop1: 1
Received: from aabuhatz-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.210])
 by orsmga008.jf.intel.com with ESMTP; 13 Jun 2019 06:39:18 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 14:35:25 +0100
Message-Id: <20190613133539.12620-15-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 14/28] drm/i915: Move intel_engines_resume into
 common init
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClNpbmNlIHRo
aXMgcGFydCBzdGlsbCBvcGVyYXRlcyBvbiBpOTE1IGFuZCBub3QgaW50ZWxfZ3QsIG1vdmUgaXQg
dG8gdGhlCmNvbW1vbiAodG9wLWxldmVsKSBmdW5jdGlvbi4KClNpZ25lZC1vZmYtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYyB8IDI5ICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYwppbmRleCBiNmY0NTBlNzgyZTcuLjc3ZDlkMDkyYjJmNCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jCkBAIC0xMjkwLDE3ICsxMjkwLDEwIEBAIHN0YXRpYyBpbnQgaW5pdF9odyhz
dHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCiAJaW50ZWxfbW9jc19pbml0X2wzY2NfdGFibGUoZ3QpOwog
Ci0JLyogT25seSB3aGVuIHRoZSBIVyBpcyByZS1pbml0aWFsaXNlZCwgY2FuIHdlIHJlcGxheSB0
aGUgcmVxdWVzdHMgKi8KLQlyZXQgPSBpbnRlbF9lbmdpbmVzX3Jlc3VtZShpOTE1KTsKLQlpZiAo
cmV0KQotCQlnb3RvIGNsZWFudXBfdWM7Ci0KIAlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1dCh1
bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwogCiAJcmV0dXJuIDA7CiAKLWNsZWFudXBfdWM6Ci0JaW50
ZWxfdWNfZmluaV9odyhpOTE1KTsKIG91dDoKIAlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1dCh1
bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwogCkBAIC0xMzA5LDYgKzEzMDIsNyBAQCBzdGF0aWMgaW50
IGluaXRfaHcoc3RydWN0IGludGVsX2d0ICpndCkKIAogaW50IGk5MTVfZ2VtX2luaXRfaHcoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5j
b3JlID0gJmk5MTUtPnVuY29yZTsKIAlpbnQgcmV0OwogCiAJQlVHX09OKCFpOTE1LT5rZXJuZWxf
Y29udGV4dCk7CkBAIC0xMzE2LDcgKzEzMTAsMjggQEAgaW50IGk5MTVfZ2VtX2luaXRfaHcoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAor
CS8qIERvdWJsZSBsYXllciBzZWN1cml0eSBibGFua2V0LCBzZWUgaTkxNV9nZW1faW5pdCgpICov
CisJaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9nZXQodW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKKwog
CXJldCA9IGluaXRfaHcoJmk5MTUtPmd0KTsKKwlpZiAocmV0KQorCQlnb3RvIGVycl9pbml0Owor
CisJLyogT25seSB3aGVuIHRoZSBIVyBpcyByZS1pbml0aWFsaXNlZCwgY2FuIHdlIHJlcGxheSB0
aGUgcmVxdWVzdHMgKi8KKwlyZXQgPSBpbnRlbF9lbmdpbmVzX3Jlc3VtZShpOTE1KTsKKwlpZiAo
cmV0KQorCQlnb3RvIGVycl9lbmdpbmVzOworCisJaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9wdXQo
dW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKKworCWludGVsX2VuZ2luZXNfc2V0X3NjaGVkdWxlcl9j
YXBzKGk5MTUpOworCisJcmV0dXJuIDA7CisKK2Vycl9lbmdpbmVzOgorCWludGVsX3VjX2Zpbmlf
aHcoaTkxNSk7CitlcnJfaW5pdDoKKwlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1dCh1bmNvcmUs
IEZPUkNFV0FLRV9BTEwpOwogCiAJaW50ZWxfZW5naW5lc19zZXRfc2NoZWR1bGVyX2NhcHMoaTkx
NSk7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
