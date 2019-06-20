Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D21324DB6F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 22:39:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD3CC6E81B;
	Thu, 20 Jun 2019 20:39:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EADD26E7EA
 for <Intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 20:38:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 13:38:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="186938691"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jun 2019 13:38:47 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 21:38:16 +0100
Message-Id: <20190620203835.1421-14-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
References: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 14/33] drm/i915: Consolidate some open coded mmio
 rmw
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlcGxhY2Ug
c29tZSBnZW42Lzcgb3BlbiBjb2RlZCBybXcgd2l0aCBpbnRlbF91bmNvcmVfcm13LgoKU2lnbmVk
LW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KUmV2aWV3
ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDQxICsrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCBiM2YxMjY0ZTliMjkuLjI1ZGFj
OGYyOTY2NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTE2NzgsMTMgKzE2
NzgsMTAgQEAgc3RhdGljIHZvaWQgZ2VuN19wcGd0dF9lbmFibGUoc3RydWN0IGludGVsX2d0ICpn
dCkKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1OwogCXN0cnVjdCBp
bnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7CiAJc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lOwotCXUzMiBlY29jaGssIGVjb2JpdHM7CiAJZW51bSBpbnRlbF9lbmdpbmVfaWQg
aWQ7CisJdTMyIGVjb2NoazsKIAotCWVjb2JpdHMgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUs
IEdBQ19FQ09fQklUUyk7Ci0JaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKLQkJCSAgIEdBQ19F
Q09fQklUUywKLQkJCSAgIGVjb2JpdHMgfCBFQ09CSVRTX1BQR1RUX0NBQ0hFNjRCKTsKKwlpbnRl
bF91bmNvcmVfcm13KHVuY29yZSwgR0FDX0VDT19CSVRTLCAwLCBFQ09CSVRTX1BQR1RUX0NBQ0hF
NjRCKTsKIAogCWVjb2NoayA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0FNX0VDT0NISyk7
CiAJaWYgKElTX0hBU1dFTEwoaTkxNSkpIHsKQEAgLTE3MDYsMjIgKzE3MDMsMjEgQEAgc3RhdGlj
IHZvaWQgZ2VuN19wcGd0dF9lbmFibGUoc3RydWN0IGludGVsX2d0ICpndCkKIHN0YXRpYyB2b2lk
IGdlbjZfcHBndHRfZW5hYmxlKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CiAJc3RydWN0IGludGVs
X3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKLQl1MzIgZWNvY2hrLCBnYWJfY3RsLCBlY29i
aXRzOwogCi0JZWNvYml0cyA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0FDX0VDT19CSVRT
KTsKLQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAotCQkJICAgR0FDX0VDT19CSVRTLAotCQkJ
ICAgZWNvYml0cyB8IEVDT0JJVFNfU05CX0JJVCB8IEVDT0JJVFNfUFBHVFRfQ0FDSEU2NEIpOwor
CWludGVsX3VuY29yZV9ybXcodW5jb3JlLAorCQkJIEdBQ19FQ09fQklUUywKKwkJCSAwLAorCQkJ
IEVDT0JJVFNfU05CX0JJVCB8IEVDT0JJVFNfUFBHVFRfQ0FDSEU2NEIpOwogCi0JZ2FiX2N0bCA9
IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0FCX0NUTCk7Ci0JaW50ZWxfdW5jb3JlX3dyaXRl
KHVuY29yZSwKLQkJCSAgIEdBQl9DVEwsCi0JCQkgICBnYWJfY3RsIHwgR0FCX0NUTF9DT05UX0FG
VEVSX1BBR0VGQVVMVCk7CisJaW50ZWxfdW5jb3JlX3Jtdyh1bmNvcmUsCisJCQkgR0FCX0NUTCwK
KwkJCSAwLAorCQkJIEdBQl9DVExfQ09OVF9BRlRFUl9QQUdFRkFVTFQpOwogCi0JZWNvY2hrID0g
aW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHQU1fRUNPQ0hLKTsKLQlpbnRlbF91bmNvcmVfd3Jp
dGUodW5jb3JlLAotCQkJICAgR0FNX0VDT0NISywKLQkJCSAgIGVjb2NoayB8IEVDT0NIS19TTkJf
QklUIHwgRUNPQ0hLX1BQR1RUX0NBQ0hFNjRCKTsKKwlpbnRlbF91bmNvcmVfcm13KHVuY29yZSwK
KwkJCSBHQU1fRUNPQ0hLLAorCQkJIDAsCisJCQkgRUNPQ0hLX1NOQl9CSVQgfCBFQ09DSEtfUFBH
VFRfQ0FDSEU2NEIpOwogCiAJaWYgKEhBU19QUEdUVCh1bmNvcmUtPmk5MTUpKSAvKiBtYXkgYmUg
ZGlzYWJsZWQgZm9yIFZULWQgKi8KIAkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKQEAgLTIy
MzQsMTEgKzIyMzAsMTAgQEAgc3RhdGljIHZvaWQgZ3R0X3dyaXRlX3dvcmthcm91bmRzKHN0cnVj
dCBpbnRlbF9ndCAqZ3QpCiAJICovCiAJaWYgKEhBU19QQUdFX1NJWkVTKGk5MTUsIEk5MTVfR1RU
X1BBR0VfU0laRV82NEspICYmCiAJICAgIElOVEVMX0dFTihpOTE1KSA8PSAxMCkKLQkJaW50ZWxf
dW5jb3JlX3dyaXRlKHVuY29yZSwKLQkJCQkgICBHRU44X0dBTVdfRUNPX0RFVl9SV19JQSwKLQkJ
CQkgICBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsCi0JCQkJCQkgICAgIEdFTjhfR0FNV19FQ09f
REVWX1JXX0lBKSB8Ci0JCQkJICAgR0FNV19FQ09fRU5BQkxFXzY0S19JUFNfRklFTEQpOworCQlp
bnRlbF91bmNvcmVfcm13KHVuY29yZSwKKwkJCQkgR0VOOF9HQU1XX0VDT19ERVZfUldfSUEsCisJ
CQkJIDAsCisJCQkJIEdBTVdfRUNPX0VOQUJMRV82NEtfSVBTX0ZJRUxEKTsKIH0KIAogaW50IGk5
MTVfcHBndHRfaW5pdF9odyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
