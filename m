Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B96804C308
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 23:34:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ABF76E47A;
	Wed, 19 Jun 2019 21:34:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBDB96E47A
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 21:34:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 14:34:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="162159106"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jun 2019 14:34:41 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 22:34:10 +0100
Message-Id: <20190619213437.1190-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619213437.1190-1-tvrtko.ursulin@linux.intel.com>
References: <20190619213437.1190-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 06/33] drm/i915: Make i915_check_and_clear_faults
 take intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkNvbnRpbnVp
bmcgdGhlIGNvbnZlcnNpb24gYW5kIGVsaW1pbmF0aW9uIG9mIGltcGxpY2l0IGRldl9wcml2LgoK
U2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
U3VnZ2VzdGVkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyB8ICAgNCArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyAgICAgICAgfCAxMzAgKysrKysrKysrKysrKysrKysr
KysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCAgICAgICAgfCAgIDUgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyAgICAgfCAxMjYgKy0tLS0tLS0t
LS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5oICAgICB8
ICAgMiAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICB8ICAgMiAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgICAgICAgfCAgIDUgKy0KIDcg
ZmlsZXMgY2hhbmdlZCwgMTQ0IGluc2VydGlvbnMoKyksIDEzMCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IDdmZDMzZTgxYzJkOS4u
YzU0OGY2ZDFjMWE2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3Mu
YwpAQCAtMjgsNiArMjgsOCBAQAogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKIAorI2luY2x1ZGUg
Imd0L2ludGVsX2d0LmgiCisKICNpbmNsdWRlICJpbnRlbF9lbmdpbmUuaCIKICNpbmNsdWRlICJp
bnRlbF9lbmdpbmVfcG0uaCIKICNpbmNsdWRlICJpbnRlbF9jb250ZXh0LmgiCkBAIC00NTMsNyAr
NDU1LDcgQEAgaW50IGludGVsX2VuZ2luZXNfaW5pdF9tbWlvKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogCiAJUlVOVElNRV9JTkZPKGk5MTUpLT5udW1fZW5naW5lcyA9IGh3ZWlnaHQz
MihtYXNrKTsKIAotCWk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyhpOTE1KTsKKwlpbnRlbF9n
dF9jaGVja19hbmRfY2xlYXJfZmF1bHRzKCZpOTE1LT5ndCk7CiAKIAlpbnRlbF9zZXR1cF9lbmdp
bmVfY2FwYWJpbGl0aWVzKGk5MTUpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwppbmRl
eCBmNzYwYzJlMDI1M2UuLjVjOWJlMzg3MTNkYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dC5jCkBAIC03LDYgKzcsNyBAQAogCiAjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJp
bnRlbF9ndF9wbS5oIgorI2luY2x1ZGUgImludGVsX3VuY29yZS5oIgogCiB2b2lkIGludGVsX2d0
X2luaXRfZWFybHkoc3RydWN0IGludGVsX2d0ICpndCwgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiB7CkBAIC0yMCwzICsyMSwxMzIgQEAgdm9pZCBpbnRlbF9ndF9pbml0X2Vhcmx5KHN0
cnVjdCBpbnRlbF9ndCAqZ3QsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCiAJaW50
ZWxfZ3RfcG1faW5pdF9lYXJseShndCk7CiB9CisKK3N0YXRpYyB2b2lkIHJtd19zZXQoc3RydWN0
IGludGVsX3VuY29yZSAqdW5jb3JlLCBpOTE1X3JlZ190IHJlZywgdTMyIHNldCkKK3sKKwlpbnRl
bF91bmNvcmVfcm13KHVuY29yZSwgcmVnLCAwLCBzZXQpOworfQorCitzdGF0aWMgdm9pZCBybXdf
Y2xlYXIoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLCBpOTE1X3JlZ190IHJlZywgdTMyIGNs
cikKK3sKKwlpbnRlbF91bmNvcmVfcm13KHVuY29yZSwgcmVnLCBjbHIsIDApOworfQorCitzdGF0
aWMgdm9pZCBjbGVhcl9yZWdpc3RlcihzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsIGk5MTVf
cmVnX3QgcmVnKQoreworCWludGVsX3VuY29yZV9ybXcodW5jb3JlLCByZWcsIDAsIDApOworfQor
CitzdGF0aWMgdm9pZCBnZW44X2NsZWFyX2VuZ2luZV9lcnJvcl9yZWdpc3RlcihzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJR0VONl9SSU5HX0ZBVUxUX1JFR19STVcoZW5naW5l
LCBSSU5HX0ZBVUxUX1ZBTElELCAwKTsKKwlHRU42X1JJTkdfRkFVTFRfUkVHX1BPU1RJTkdfUkVB
RChlbmdpbmUpOworfQorCit2b2lkCitpbnRlbF9ndF9jbGVhcl9lcnJvcl9yZWdpc3RlcnMoc3Ry
dWN0IGludGVsX2d0ICpndCwKKwkJCSAgICAgICBpbnRlbF9lbmdpbmVfbWFza190IGVuZ2luZV9t
YXNrKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7CisJc3Ry
dWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKKwl1MzIgZWlyOworCisJaWYg
KCFJU19HRU4oaTkxNSwgMikpCisJCWNsZWFyX3JlZ2lzdGVyKHVuY29yZSwgUEdUQkxfRVIpOwor
CisJaWYgKElOVEVMX0dFTihpOTE1KSA8IDQpCisJCWNsZWFyX3JlZ2lzdGVyKHVuY29yZSwgSVBF
SVIoUkVOREVSX1JJTkdfQkFTRSkpOworCWVsc2UKKwkJY2xlYXJfcmVnaXN0ZXIodW5jb3JlLCBJ
UEVJUl9JOTY1KTsKKworCWNsZWFyX3JlZ2lzdGVyKHVuY29yZSwgRUlSKTsKKwllaXIgPSBpbnRl
bF91bmNvcmVfcmVhZCh1bmNvcmUsIEVJUik7CisJaWYgKGVpcikgeworCQkvKgorCQkgKiBzb21l
IGVycm9ycyBtaWdodCBoYXZlIGJlY29tZSBzdHVjaywKKwkJICogbWFzayB0aGVtLgorCQkgKi8K
KwkJRFJNX0RFQlVHX0RSSVZFUigiRUlSIHN0dWNrOiAweCUwOHgsIG1hc2tpbmdcbiIsIGVpcik7
CisJCXJtd19zZXQodW5jb3JlLCBFTVIsIGVpcik7CisJCWludGVsX3VuY29yZV93cml0ZSh1bmNv
cmUsIEdFTjJfSUlSLAorCQkJCSAgIEk5MTVfTUFTVEVSX0VSUk9SX0lOVEVSUlVQVCk7CisJfQor
CisJaWYgKElOVEVMX0dFTihpOTE1KSA+PSA4KSB7CisJCXJtd19jbGVhcih1bmNvcmUsIEdFTjhf
UklOR19GQVVMVF9SRUcsIFJJTkdfRkFVTFRfVkFMSUQpOworCQlpbnRlbF91bmNvcmVfcG9zdGlu
Z19yZWFkKHVuY29yZSwgR0VOOF9SSU5HX0ZBVUxUX1JFRyk7CisJfSBlbHNlIGlmIChJTlRFTF9H
RU4oaTkxNSkgPj0gNikgeworCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CisJCWVu
dW0gaW50ZWxfZW5naW5lX2lkIGlkOworCisJCWZvcl9lYWNoX2VuZ2luZV9tYXNrZWQoZW5naW5l
LCBpOTE1LCBlbmdpbmVfbWFzaywgaWQpCisJCQlnZW44X2NsZWFyX2VuZ2luZV9lcnJvcl9yZWdp
c3RlcihlbmdpbmUpOworCX0KK30KKworc3RhdGljIHZvaWQgZ2VuNl9jaGVja19mYXVsdHMoc3Ry
dWN0IGludGVsX2d0ICpndCkKK3sKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CisJ
ZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CisJdTMyIGZhdWx0OworCisJZm9yX2VhY2hfZW5naW5l
KGVuZ2luZSwgZ3QtPmk5MTUsIGlkKSB7CisJCWZhdWx0ID0gR0VONl9SSU5HX0ZBVUxUX1JFR19S
RUFEKGVuZ2luZSk7CisJCWlmIChmYXVsdCAmIFJJTkdfRkFVTFRfVkFMSUQpIHsKKwkJCURSTV9E
RUJVR19EUklWRVIoIlVuZXhwZWN0ZWQgZmF1bHRcbiIKKwkJCQkJICJcdEFkZHI6IDB4JTA4bHhc
biIKKwkJCQkJICJcdEFkZHJlc3Mgc3BhY2U6ICVzXG4iCisJCQkJCSAiXHRTb3VyY2UgSUQ6ICVk
XG4iCisJCQkJCSAiXHRUeXBlOiAlZFxuIiwKKwkJCQkJIGZhdWx0ICYgUEFHRV9NQVNLLAorCQkJ
CQkgZmF1bHQgJiBSSU5HX0ZBVUxUX0dUVFNFTF9NQVNLID8KKwkJCQkJICJHR1RUIiA6ICJQUEdU
VCIsCisJCQkJCSBSSU5HX0ZBVUxUX1NSQ0lEKGZhdWx0KSwKKwkJCQkJIFJJTkdfRkFVTFRfRkFV
TFRfVFlQRShmYXVsdCkpOworCQl9CisJfQorfQorCitzdGF0aWMgdm9pZCBnZW44X2NoZWNrX2Zh
dWx0cyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQoreworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29y
ZSA9IGd0LT51bmNvcmU7CisJdTMyIGZhdWx0ID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBH
RU44X1JJTkdfRkFVTFRfUkVHKTsKKworCWlmIChmYXVsdCAmIFJJTkdfRkFVTFRfVkFMSUQpIHsK
KwkJdTMyIGZhdWx0X2RhdGEwLCBmYXVsdF9kYXRhMTsKKwkJdTY0IGZhdWx0X2FkZHI7CisKKwkJ
ZmF1bHRfZGF0YTAgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjhfRkFVTFRfVExCX0RB
VEEwKTsKKwkJZmF1bHRfZGF0YTEgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjhfRkFV
TFRfVExCX0RBVEExKTsKKwkJZmF1bHRfYWRkciA9ICgodTY0KShmYXVsdF9kYXRhMSAmIEZBVUxU
X1ZBX0hJR0hfQklUUykgPDwgNDQpIHwKKwkJCSAgICAgKCh1NjQpZmF1bHRfZGF0YTAgPDwgMTIp
OworCisJCURSTV9ERUJVR19EUklWRVIoIlVuZXhwZWN0ZWQgZmF1bHRcbiIKKwkJCQkgIlx0QWRk
cjogMHglMDh4XyUwOHhcbiIKKwkJCQkgIlx0QWRkcmVzcyBzcGFjZTogJXNcbiIKKwkJCQkgIlx0
RW5naW5lIElEOiAlZFxuIgorCQkJCSAiXHRTb3VyY2UgSUQ6ICVkXG4iCisJCQkJICJcdFR5cGU6
ICVkXG4iLAorCQkJCSB1cHBlcl8zMl9iaXRzKGZhdWx0X2FkZHIpLAorCQkJCSBsb3dlcl8zMl9i
aXRzKGZhdWx0X2FkZHIpLAorCQkJCSBmYXVsdF9kYXRhMSAmIEZBVUxUX0dUVF9TRUwgPyAiR0dU
VCIgOiAiUFBHVFQiLAorCQkJCSBHRU44X1JJTkdfRkFVTFRfRU5HSU5FX0lEKGZhdWx0KSwKKwkJ
CQkgUklOR19GQVVMVF9TUkNJRChmYXVsdCksCisJCQkJIFJJTkdfRkFVTFRfRkFVTFRfVFlQRShm
YXVsdCkpOworCX0KK30KKwordm9pZCBpbnRlbF9ndF9jaGVja19hbmRfY2xlYXJfZmF1bHRzKHN0
cnVjdCBpbnRlbF9ndCAqZ3QpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBn
dC0+aTkxNTsKKworCS8qIEZyb20gR0VOOCBvbndhcmRzIHdlIG9ubHkgaGF2ZSBvbmUgJ0FsbCBF
bmdpbmUgRmF1bHQgUmVnaXN0ZXInICovCisJaWYgKElOVEVMX0dFTihpOTE1KSA+PSA4KQorCQln
ZW44X2NoZWNrX2ZhdWx0cyhndCk7CisJZWxzZSBpZiAoSU5URUxfR0VOKGk5MTUpID49IDYpCisJ
CWdlbjZfY2hlY2tfZmF1bHRzKGd0KTsKKwllbHNlCisJCXJldHVybjsKKworCWludGVsX2d0X2Ns
ZWFyX2Vycm9yX3JlZ2lzdGVycyhndCwgQUxMX0VOR0lORVMpOworfQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0LmgKaW5kZXggMGRkMjE4ZTUzMzY4Li4wMzM3MTNiNjg0YmYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3QuaApAQCAtNiwxMCArNiwxNSBAQAogI2lmbmRlZiBfX0lOVEVMX0dU
X18KICNkZWZpbmUgX19JTlRFTF9HVF9fCiAKKyNpbmNsdWRlICJpbnRlbF9lbmdpbmVfdHlwZXMu
aCIKICNpbmNsdWRlICJpbnRlbF9ndF90eXBlcy5oIgogCiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZTsKIAogdm9pZCBpbnRlbF9ndF9pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKIAordm9pZCBpbnRlbF9ndF9jaGVja19hbmRfY2xl
YXJfZmF1bHRzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwordm9pZCBpbnRlbF9ndF9jbGVhcl9lcnJv
cl9yZWdpc3RlcnMoc3RydWN0IGludGVsX2d0ICpndCwKKwkJCQkgICAgaW50ZWxfZW5naW5lX21h
c2tfdCBlbmdpbmVfbWFzayk7CisKICNlbmRpZiAvKiBfX0lOVEVMX0dUX0hfXyAqLwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKaW5kZXggNGM0NzhiMzhlNDIwLi41Mjk3YjNhY2I1
NmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpAQCAtMTUsNiArMTUsNyBA
QAogI2luY2x1ZGUgImk5MTVfZ3B1X2Vycm9yLmgiCiAjaW5jbHVkZSAiaTkxNV9pcnEuaCIKICNp
bmNsdWRlICJpbnRlbF9lbmdpbmVfcG0uaCIKKyNpbmNsdWRlICJpbnRlbF9ndC5oIgogI2luY2x1
ZGUgImludGVsX2d0X3BtLmgiCiAjaW5jbHVkZSAiaW50ZWxfcmVzZXQuaCIKIApAQCAtMjUsMTYg
KzI2LDYgQEAKIC8qIFhYWCBIb3cgdG8gaGFuZGxlIGNvbmN1cnJlbnQgR0dUVCB1cGRhdGVzIHVz
aW5nIHRpbGluZyByZWdpc3RlcnM/ICovCiAjZGVmaW5lIFJFU0VUX1VOREVSX1NUT1BfTUFDSElO
RSAwCiAKLXN0YXRpYyB2b2lkIHJtd19zZXQoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLCBp
OTE1X3JlZ190IHJlZywgdTMyIHNldCkKLXsKLQlpbnRlbF91bmNvcmVfcm13KHVuY29yZSwgcmVn
LCAwLCBzZXQpOwotfQotCi1zdGF0aWMgdm9pZCBybXdfY2xlYXIoc3RydWN0IGludGVsX3VuY29y
ZSAqdW5jb3JlLCBpOTE1X3JlZ190IHJlZywgdTMyIGNscikKLXsKLQlpbnRlbF91bmNvcmVfcm13
KHVuY29yZSwgcmVnLCBjbHIsIDApOwotfQotCiBzdGF0aWMgdm9pZCBybXdfc2V0X2Z3KHN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSwgaTkxNV9yZWdfdCByZWcsIHUzMiBzZXQpCiB7CiAJaW50
ZWxfdW5jb3JlX3Jtd19mdyh1bmNvcmUsIHJlZywgMCwgc2V0KTsKQEAgLTExNTcsMTE5ICsxMTQ4
LDYgQEAgc3RhdGljIHZvaWQgaTkxNV9yZXNldF9kZXZpY2Uoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsCiAJCWtvYmplY3RfdWV2ZW50X2Vudihrb2JqLCBLT0JKX0NIQU5HRSwgcmVzZXRf
ZG9uZV9ldmVudCk7CiB9CiAKLXN0YXRpYyB2b2lkIGNsZWFyX3JlZ2lzdGVyKHN0cnVjdCBpbnRl
bF91bmNvcmUgKnVuY29yZSwgaTkxNV9yZWdfdCByZWcpCi17Ci0JaW50ZWxfdW5jb3JlX3Jtdyh1
bmNvcmUsIHJlZywgMCwgMCk7Ci19Ci0KLXN0YXRpYyB2b2lkIGdlbjhfY2xlYXJfZW5naW5lX2Vy
cm9yX3JlZ2lzdGVyKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKLXsKLQlHRU42X1JJ
TkdfRkFVTFRfUkVHX1JNVyhlbmdpbmUsIFJJTkdfRkFVTFRfVkFMSUQsIDApOwotCUdFTjZfUklO
R19GQVVMVF9SRUdfUE9TVElOR19SRUFEKGVuZ2luZSk7Ci19Ci0KLXN0YXRpYyB2b2lkIGNsZWFy
X2Vycm9yX3JlZ2lzdGVycyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKLQkJCQkgIGlu
dGVsX2VuZ2luZV9tYXNrX3QgZW5naW5lX21hc2spCi17Ci0Jc3RydWN0IGludGVsX3VuY29yZSAq
dW5jb3JlID0gJmk5MTUtPnVuY29yZTsKLQl1MzIgZWlyOwotCi0JaWYgKCFJU19HRU4oaTkxNSwg
MikpCi0JCWNsZWFyX3JlZ2lzdGVyKHVuY29yZSwgUEdUQkxfRVIpOwotCi0JaWYgKElOVEVMX0dF
TihpOTE1KSA8IDQpCi0JCWNsZWFyX3JlZ2lzdGVyKHVuY29yZSwgSVBFSVIoUkVOREVSX1JJTkdf
QkFTRSkpOwotCWVsc2UKLQkJY2xlYXJfcmVnaXN0ZXIodW5jb3JlLCBJUEVJUl9JOTY1KTsKLQot
CWNsZWFyX3JlZ2lzdGVyKHVuY29yZSwgRUlSKTsKLQllaXIgPSBpbnRlbF91bmNvcmVfcmVhZCh1
bmNvcmUsIEVJUik7Ci0JaWYgKGVpcikgewotCQkvKgotCQkgKiBzb21lIGVycm9ycyBtaWdodCBo
YXZlIGJlY29tZSBzdHVjaywKLQkJICogbWFzayB0aGVtLgotCQkgKi8KLQkJRFJNX0RFQlVHX0RS
SVZFUigiRUlSIHN0dWNrOiAweCUwOHgsIG1hc2tpbmdcbiIsIGVpcik7Ci0JCXJtd19zZXQodW5j
b3JlLCBFTVIsIGVpcik7Ci0JCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIEdFTjJfSUlSLAot
CQkJCSAgIEk5MTVfTUFTVEVSX0VSUk9SX0lOVEVSUlVQVCk7Ci0JfQotCi0JaWYgKElOVEVMX0dF
TihpOTE1KSA+PSA4KSB7Ci0JCXJtd19jbGVhcih1bmNvcmUsIEdFTjhfUklOR19GQVVMVF9SRUcs
IFJJTkdfRkFVTFRfVkFMSUQpOwotCQlpbnRlbF91bmNvcmVfcG9zdGluZ19yZWFkKHVuY29yZSwg
R0VOOF9SSU5HX0ZBVUxUX1JFRyk7Ci0JfSBlbHNlIGlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNikg
ewotCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0JCWVudW0gaW50ZWxfZW5naW5l
X2lkIGlkOwotCi0JCWZvcl9lYWNoX2VuZ2luZV9tYXNrZWQoZW5naW5lLCBpOTE1LCBlbmdpbmVf
bWFzaywgaWQpCi0JCQlnZW44X2NsZWFyX2VuZ2luZV9lcnJvcl9yZWdpc3RlcihlbmdpbmUpOwot
CX0KLX0KLQotc3RhdGljIHZvaWQgZ2VuNl9jaGVja19mYXVsdHMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQotewotCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKLQll
bnVtIGludGVsX2VuZ2luZV9pZCBpZDsKLQl1MzIgZmF1bHQ7Ci0KLQlmb3JfZWFjaF9lbmdpbmUo
ZW5naW5lLCBkZXZfcHJpdiwgaWQpIHsKLQkJZmF1bHQgPSBHRU42X1JJTkdfRkFVTFRfUkVHX1JF
QUQoZW5naW5lKTsKLQkJaWYgKGZhdWx0ICYgUklOR19GQVVMVF9WQUxJRCkgewotCQkJRFJNX0RF
QlVHX0RSSVZFUigiVW5leHBlY3RlZCBmYXVsdFxuIgotCQkJCQkgIlx0QWRkcjogMHglMDhseFxu
IgotCQkJCQkgIlx0QWRkcmVzcyBzcGFjZTogJXNcbiIKLQkJCQkJICJcdFNvdXJjZSBJRDogJWRc
biIKLQkJCQkJICJcdFR5cGU6ICVkXG4iLAotCQkJCQkgZmF1bHQgJiBQQUdFX01BU0ssCi0JCQkJ
CSBmYXVsdCAmIFJJTkdfRkFVTFRfR1RUU0VMX01BU0sgPyAiR0dUVCIgOiAiUFBHVFQiLAotCQkJ
CQkgUklOR19GQVVMVF9TUkNJRChmYXVsdCksCi0JCQkJCSBSSU5HX0ZBVUxUX0ZBVUxUX1RZUEUo
ZmF1bHQpKTsKLQkJfQotCX0KLX0KLQotc3RhdGljIHZvaWQgZ2VuOF9jaGVja19mYXVsdHMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQotewotCXUzMiBmYXVsdCA9IEk5MTVfUkVB
RChHRU44X1JJTkdfRkFVTFRfUkVHKTsKLQotCWlmIChmYXVsdCAmIFJJTkdfRkFVTFRfVkFMSUQp
IHsKLQkJdTMyIGZhdWx0X2RhdGEwLCBmYXVsdF9kYXRhMTsKLQkJdTY0IGZhdWx0X2FkZHI7Ci0K
LQkJZmF1bHRfZGF0YTAgPSBJOTE1X1JFQUQoR0VOOF9GQVVMVF9UTEJfREFUQTApOwotCQlmYXVs
dF9kYXRhMSA9IEk5MTVfUkVBRChHRU44X0ZBVUxUX1RMQl9EQVRBMSk7Ci0JCWZhdWx0X2FkZHIg
PSAoKHU2NCkoZmF1bHRfZGF0YTEgJiBGQVVMVF9WQV9ISUdIX0JJVFMpIDw8IDQ0KSB8Ci0JCQkg
ICAgICgodTY0KWZhdWx0X2RhdGEwIDw8IDEyKTsKLQotCQlEUk1fREVCVUdfRFJJVkVSKCJVbmV4
cGVjdGVkIGZhdWx0XG4iCi0JCQkJICJcdEFkZHI6IDB4JTA4eF8lMDh4XG4iCi0JCQkJICJcdEFk
ZHJlc3Mgc3BhY2U6ICVzXG4iCi0JCQkJICJcdEVuZ2luZSBJRDogJWRcbiIKLQkJCQkgIlx0U291
cmNlIElEOiAlZFxuIgotCQkJCSAiXHRUeXBlOiAlZFxuIiwKLQkJCQkgdXBwZXJfMzJfYml0cyhm
YXVsdF9hZGRyKSwKLQkJCQkgbG93ZXJfMzJfYml0cyhmYXVsdF9hZGRyKSwKLQkJCQkgZmF1bHRf
ZGF0YTEgJiBGQVVMVF9HVFRfU0VMID8gIkdHVFQiIDogIlBQR1RUIiwKLQkJCQkgR0VOOF9SSU5H
X0ZBVUxUX0VOR0lORV9JRChmYXVsdCksCi0JCQkJIFJJTkdfRkFVTFRfU1JDSUQoZmF1bHQpLAot
CQkJCSBSSU5HX0ZBVUxUX0ZBVUxUX1RZUEUoZmF1bHQpKTsKLQl9Ci19Ci0KLXZvaWQgaTkxNV9j
aGVja19hbmRfY2xlYXJfZmF1bHRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQotewot
CS8qIEZyb20gR0VOOCBvbndhcmRzIHdlIG9ubHkgaGF2ZSBvbmUgJ0FsbCBFbmdpbmUgRmF1bHQg
UmVnaXN0ZXInICovCi0JaWYgKElOVEVMX0dFTihpOTE1KSA+PSA4KQotCQlnZW44X2NoZWNrX2Zh
dWx0cyhpOTE1KTsKLQllbHNlIGlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNikKLQkJZ2VuNl9jaGVj
a19mYXVsdHMoaTkxNSk7Ci0JZWxzZQotCQlyZXR1cm47Ci0KLQljbGVhcl9lcnJvcl9yZWdpc3Rl
cnMoaTkxNSwgQUxMX0VOR0lORVMpOwotfQotCiAvKioKICAqIGk5MTVfaGFuZGxlX2Vycm9yIC0g
aGFuZGxlIGEgZ3B1IGVycm9yCiAgKiBAaTkxNTogaTkxNSBkZXZpY2UgcHJpdmF0ZQpAQCAtMTMx
OCw3ICsxMTk2LDcgQEAgdm9pZCBpOTE1X2hhbmRsZV9lcnJvcihzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwKIAogCWlmIChmbGFncyAmIEk5MTVfRVJST1JfQ0FQVFVSRSkgewogCQlpOTE1
X2NhcHR1cmVfZXJyb3Jfc3RhdGUoaTkxNSwgZW5naW5lX21hc2ssIG1zZyk7Ci0JCWNsZWFyX2Vy
cm9yX3JlZ2lzdGVycyhpOTE1LCBlbmdpbmVfbWFzayk7CisJCWludGVsX2d0X2NsZWFyX2Vycm9y
X3JlZ2lzdGVycygmaTkxNS0+Z3QsIGVuZ2luZV9tYXNrKTsKIAl9CiAKIAkvKgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3Jlc2V0LmgKaW5kZXggNTgwZWJkYjU5ZWNhLi4wM2ZiYTBhYjM4Njgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuaApAQCAtMjUsOCArMjUsNiBAQCB2
b2lkIGk5MTVfaGFuZGxlX2Vycm9yKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQkg
ICAgICAgY29uc3QgY2hhciAqZm10LCAuLi4pOwogI2RlZmluZSBJOTE1X0VSUk9SX0NBUFRVUkUg
QklUKDApCiAKLXZvaWQgaTkxNV9jaGVja19hbmRfY2xlYXJfZmF1bHRzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KTsKLQogdm9pZCBpOTE1X3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LAogCQlpbnRlbF9lbmdpbmVfbWFza190IHN0YWxsZWRfbWFzaywKIAkJY29uc3Qg
Y2hhciAqcmVhc29uKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IDRmM2YyY2ExMTBmNy4u
ZmU0Njc4MWZhNzE0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTIzNTEsNyArMjM1MSw3
IEBAIHN0YXRpYyBpbnQgaTkxNV9kcm1fcmVzdW1lX2Vhcmx5KHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYpCiAKIAlpbnRlbF91bmNvcmVfcmVzdW1lX2Vhcmx5KCZkZXZfcHJpdi0+dW5jb3JlKTsKIAot
CWk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyhkZXZfcHJpdik7CisJaW50ZWxfZ3RfY2hlY2tf
YW5kX2NsZWFyX2ZhdWx0cygmZGV2X3ByaXYtPmd0KTsKIAogCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDExIHx8IElTX0dFTjlfTFAoZGV2X3ByaXYpKSB7CiAJCWdlbjlfc2FuaXRpemVfZGNf
c3RhdGUoZGV2X3ByaXYpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCA2YjQ5
ZGEyZDgxMDEuLjNkZDgyNTE2MjM2ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
QEAgLTM2LDYgKzM2LDcgQEAKICNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KIAogI2luY2x1ZGUg
ImRpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuaCIKKyNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgog
CiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpOTE1X3NjYXR0ZXJsaXN0LmgiCkBA
IC0yMzA3LDcgKzIzMDgsNyBAQCB2b2lkIGk5MTVfZ2VtX3N1c3BlbmRfZ3R0X21hcHBpbmdzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA8IDYpCiAJCXJldHVybjsKIAotCWk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyhkZXZfcHJp
dik7CisJaW50ZWxfZ3RfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cygmZGV2X3ByaXYtPmd0KTsKIAog
CWdndHQtPnZtLmNsZWFyX3JhbmdlKCZnZ3R0LT52bSwgMCwgZ2d0dC0+dm0udG90YWwpOwogCkBA
IC0zNjE2LDcgKzM2MTcsNyBAQCB2b2lkIGk5MTVfZ2VtX3Jlc3RvcmVfZ3R0X21hcHBpbmdzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0
ID0gJmRldl9wcml2LT5nZ3R0OwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hLCAqdm47CiAKLQlpOTE1
X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMoZGV2X3ByaXYpOworCWludGVsX2d0X2NoZWNrX2FuZF9j
bGVhcl9mYXVsdHMoJmRldl9wcml2LT5ndCk7CiAKIAltdXRleF9sb2NrKCZnZ3R0LT52bS5tdXRl
eCk7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
