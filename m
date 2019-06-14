Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9728D46270
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1B2D89A59;
	Fri, 14 Jun 2019 15:17:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A4E789A56
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 15:17:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 08:17:45 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by orsmga004.jf.intel.com with ESMTP; 14 Jun 2019 08:17:43 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 16:17:05 +0100
Message-Id: <20190614151731.17608-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 05/31] drm/i915: Make i915_check_and_clear_faults
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
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyAgICAgICAgfCAxMjkgKysrKysrKysrKysrKysrKysr
KysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCAgICAgICAgfCAgIDUgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyAgICAgfCAxMjYgKy0tLS0tLS0t
LS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5oICAgICB8
ICAgMiAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICB8ICAgMyAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgICAgICAgfCAgIDYgKy0KIDcg
ZmlsZXMgY2hhbmdlZCwgMTQ1IGluc2VydGlvbnMoKyksIDEzMCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IGMwZDk4NmRiNWE3NS4u
MzVhOWY3NTRiY2I5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
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
eCBlOGQ3MjU3MGE1YmYuLmQ1ZWUzNDg3ZTE4MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dC5jCkBAIC03LDYgKzcsNyBAQAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAKICNpbmNsdWRlICJp
bnRlbF9ndC5oIgorI2luY2x1ZGUgImludGVsX3VuY29yZS5oIgogCiB2b2lkIGludGVsX2d0X2lu
aXQoc3RydWN0IGludGVsX2d0ICpndCwgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7
CkBAIC0xOCwzICsxOSwxMzEgQEAgdm9pZCBpbnRlbF9ndF9pbml0KHN0cnVjdCBpbnRlbF9ndCAq
Z3QsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCiAJc3Bpbl9sb2NrX2luaXQoJmd0
LT5jbG9zZWRfbG9jayk7CiB9CisKK3N0YXRpYyB2b2lkIHJtd19zZXQoc3RydWN0IGludGVsX3Vu
Y29yZSAqdW5jb3JlLCBpOTE1X3JlZ190IHJlZywgdTMyIHNldCkKK3sKKwlpbnRlbF91bmNvcmVf
cm13KHVuY29yZSwgcmVnLCAwLCBzZXQpOworfQorCitzdGF0aWMgdm9pZCBybXdfY2xlYXIoc3Ry
dWN0IGludGVsX3VuY29yZSAqdW5jb3JlLCBpOTE1X3JlZ190IHJlZywgdTMyIGNscikKK3sKKwlp
bnRlbF91bmNvcmVfcm13KHVuY29yZSwgcmVnLCBjbHIsIDApOworfQorCitzdGF0aWMgdm9pZCBj
bGVhcl9yZWdpc3RlcihzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsIGk5MTVfcmVnX3QgcmVn
KQoreworCWludGVsX3VuY29yZV9ybXcodW5jb3JlLCByZWcsIDAsIDApOworfQorCitzdGF0aWMg
dm9pZCBnZW44X2NsZWFyX2VuZ2luZV9lcnJvcl9yZWdpc3RlcihzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCit7CisJR0VONl9SSU5HX0ZBVUxUX1JFR19STVcoZW5naW5lLCBSSU5HX0ZB
VUxUX1ZBTElELCAwKTsKKwlHRU42X1JJTkdfRkFVTFRfUkVHX1BPU1RJTkdfUkVBRChlbmdpbmUp
OworfQorCit2b2lkCitpbnRlbF9ndF9jbGVhcl9lcnJvcl9yZWdpc3RlcnMoc3RydWN0IGludGVs
X2d0ICpndCwKKwkJCSAgICAgICBpbnRlbF9lbmdpbmVfbWFza190IGVuZ2luZV9tYXNrKQorewor
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7CisJc3RydWN0IGludGVs
X3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKKwl1MzIgZWlyOworCisJaWYgKCFJU19HRU4o
aTkxNSwgMikpCisJCWNsZWFyX3JlZ2lzdGVyKHVuY29yZSwgUEdUQkxfRVIpOworCisJaWYgKElO
VEVMX0dFTihpOTE1KSA8IDQpCisJCWNsZWFyX3JlZ2lzdGVyKHVuY29yZSwgSVBFSVIoUkVOREVS
X1JJTkdfQkFTRSkpOworCWVsc2UKKwkJY2xlYXJfcmVnaXN0ZXIodW5jb3JlLCBJUEVJUl9JOTY1
KTsKKworCWNsZWFyX3JlZ2lzdGVyKHVuY29yZSwgRUlSKTsKKwllaXIgPSBpbnRlbF91bmNvcmVf
cmVhZCh1bmNvcmUsIEVJUik7CisJaWYgKGVpcikgeworCQkvKgorCQkgKiBzb21lIGVycm9ycyBt
aWdodCBoYXZlIGJlY29tZSBzdHVjaywKKwkJICogbWFzayB0aGVtLgorCQkgKi8KKwkJRFJNX0RF
QlVHX0RSSVZFUigiRUlSIHN0dWNrOiAweCUwOHgsIG1hc2tpbmdcbiIsIGVpcik7CisJCXJtd19z
ZXQodW5jb3JlLCBFTVIsIGVpcik7CisJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIEdFTjJf
SUlSLAorCQkJCSAgIEk5MTVfTUFTVEVSX0VSUk9SX0lOVEVSUlVQVCk7CisJfQorCisJaWYgKElO
VEVMX0dFTihpOTE1KSA+PSA4KSB7CisJCXJtd19jbGVhcih1bmNvcmUsIEdFTjhfUklOR19GQVVM
VF9SRUcsIFJJTkdfRkFVTFRfVkFMSUQpOworCQlpbnRlbF91bmNvcmVfcG9zdGluZ19yZWFkKHVu
Y29yZSwgR0VOOF9SSU5HX0ZBVUxUX1JFRyk7CisJfSBlbHNlIGlmIChJTlRFTF9HRU4oaTkxNSkg
Pj0gNikgeworCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CisJCWVudW0gaW50ZWxf
ZW5naW5lX2lkIGlkOworCisJCWZvcl9lYWNoX2VuZ2luZV9tYXNrZWQoZW5naW5lLCBpOTE1LCBl
bmdpbmVfbWFzaywgaWQpCisJCQlnZW44X2NsZWFyX2VuZ2luZV9lcnJvcl9yZWdpc3Rlcihlbmdp
bmUpOworCX0KK30KKworc3RhdGljIHZvaWQgZ2VuNl9jaGVja19mYXVsdHMoc3RydWN0IGludGVs
X2d0ICpndCkKK3sKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CisJZW51bSBpbnRl
bF9lbmdpbmVfaWQgaWQ7CisJdTMyIGZhdWx0OworCisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwg
Z3QtPmk5MTUsIGlkKSB7CisJCWZhdWx0ID0gR0VONl9SSU5HX0ZBVUxUX1JFR19SRUFEKGVuZ2lu
ZSk7CisJCWlmIChmYXVsdCAmIFJJTkdfRkFVTFRfVkFMSUQpIHsKKwkJCURSTV9ERUJVR19EUklW
RVIoIlVuZXhwZWN0ZWQgZmF1bHRcbiIKKwkJCQkJICJcdEFkZHI6IDB4JTA4bHhcbiIKKwkJCQkJ
ICJcdEFkZHJlc3Mgc3BhY2U6ICVzXG4iCisJCQkJCSAiXHRTb3VyY2UgSUQ6ICVkXG4iCisJCQkJ
CSAiXHRUeXBlOiAlZFxuIiwKKwkJCQkJIGZhdWx0ICYgUEFHRV9NQVNLLAorCQkJCQkgZmF1bHQg
JiBSSU5HX0ZBVUxUX0dUVFNFTF9NQVNLID8gIkdHVFQiIDogIlBQR1RUIiwKKwkJCQkJIFJJTkdf
RkFVTFRfU1JDSUQoZmF1bHQpLAorCQkJCQkgUklOR19GQVVMVF9GQVVMVF9UWVBFKGZhdWx0KSk7
CisJCX0KKwl9Cit9CisKK3N0YXRpYyB2b2lkIGdlbjhfY2hlY2tfZmF1bHRzKHN0cnVjdCBpbnRl
bF9ndCAqZ3QpCit7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsK
Kwl1MzIgZmF1bHQgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjhfUklOR19GQVVMVF9S
RUcpOworCisJaWYgKGZhdWx0ICYgUklOR19GQVVMVF9WQUxJRCkgeworCQl1MzIgZmF1bHRfZGF0
YTAsIGZhdWx0X2RhdGExOworCQl1NjQgZmF1bHRfYWRkcjsKKworCQlmYXVsdF9kYXRhMCA9IGlu
dGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0VOOF9GQVVMVF9UTEJfREFUQTApOworCQlmYXVsdF9k
YXRhMSA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0VOOF9GQVVMVF9UTEJfREFUQTEpOwor
CQlmYXVsdF9hZGRyID0gKCh1NjQpKGZhdWx0X2RhdGExICYgRkFVTFRfVkFfSElHSF9CSVRTKSA8
PCA0NCkgfAorCQkJICAgICAoKHU2NClmYXVsdF9kYXRhMCA8PCAxMik7CisKKwkJRFJNX0RFQlVH
X0RSSVZFUigiVW5leHBlY3RlZCBmYXVsdFxuIgorCQkJCSAiXHRBZGRyOiAweCUwOHhfJTA4eFxu
IgorCQkJCSAiXHRBZGRyZXNzIHNwYWNlOiAlc1xuIgorCQkJCSAiXHRFbmdpbmUgSUQ6ICVkXG4i
CisJCQkJICJcdFNvdXJjZSBJRDogJWRcbiIKKwkJCQkgIlx0VHlwZTogJWRcbiIsCisJCQkJIHVw
cGVyXzMyX2JpdHMoZmF1bHRfYWRkciksCisJCQkJIGxvd2VyXzMyX2JpdHMoZmF1bHRfYWRkciks
CisJCQkJIGZhdWx0X2RhdGExICYgRkFVTFRfR1RUX1NFTCA/ICJHR1RUIiA6ICJQUEdUVCIsCisJ
CQkJIEdFTjhfUklOR19GQVVMVF9FTkdJTkVfSUQoZmF1bHQpLAorCQkJCSBSSU5HX0ZBVUxUX1NS
Q0lEKGZhdWx0KSwKKwkJCQkgUklOR19GQVVMVF9GQVVMVF9UWVBFKGZhdWx0KSk7CisJfQorfQor
Cit2b2lkIGludGVsX2d0X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMoc3RydWN0IGludGVsX2d0ICpn
dCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1OworCisJLyog
RnJvbSBHRU44IG9ud2FyZHMgd2Ugb25seSBoYXZlIG9uZSAnQWxsIEVuZ2luZSBGYXVsdCBSZWdp
c3RlcicgKi8KKwlpZiAoSU5URUxfR0VOKGk5MTUpID49IDgpCisJCWdlbjhfY2hlY2tfZmF1bHRz
KGd0KTsKKwllbHNlIGlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNikKKwkJZ2VuNl9jaGVja19mYXVs
dHMoZ3QpOworCWVsc2UKKwkJcmV0dXJuOworCisJaW50ZWxfZ3RfY2xlYXJfZXJyb3JfcmVnaXN0
ZXJzKGd0LCBBTExfRU5HSU5FUyk7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaAppbmRl
eCBmNTdmZjM3NThmNTQuLmQ0ZjU4NTE1MTUyNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dC5oCkBAIC03LDEwICs3LDE1IEBACiAjaWZuZGVmIF9fSU5URUxfR1RfXwogI2RlZmluZSBfX0lO
VEVMX0dUX18KIAorI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV90eXBlcy5oIgogI2luY2x1ZGUg
Imd0L2ludGVsX2d0X3R5cGVzLmgiCiAKIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlOwogCiB2b2lk
IGludGVsX2d0X2luaXQoc3RydWN0IGludGVsX2d0ICpndCwgc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpOwogCit2b2lkIGludGVsX2d0X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMoc3RydWN0
IGludGVsX2d0ICpndCk7Cit2b2lkIGludGVsX2d0X2NsZWFyX2Vycm9yX3JlZ2lzdGVycyhzdHJ1
Y3QgaW50ZWxfZ3QgKmd0LAorCQkJCSAgICBpbnRlbF9lbmdpbmVfbWFza190IGVuZ2luZV9tYXNr
KTsKKwogI2VuZGlmIC8qIF9fSU5URUxfR1RfSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmVzZXQuYwppbmRleCA0MWEyOTRmNWNjMTkuLmE4MzdmMzAzNTBkMyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCkBAIC0xMyw2ICsxMyw3IEBACiAjaW5jbHVkZSAiaTkx
NV9ncHVfZXJyb3IuaCIKICNpbmNsdWRlICJpOTE1X2lycS5oIgogI2luY2x1ZGUgImludGVsX2Vu
Z2luZV9wbS5oIgorI2luY2x1ZGUgImludGVsX2d0LmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3RfcG0u
aCIKICNpbmNsdWRlICJpbnRlbF9yZXNldC5oIgogCkBAIC0yNCwxNiArMjUsNiBAQAogLyogWFhY
IEhvdyB0byBoYW5kbGUgY29uY3VycmVudCBHR1RUIHVwZGF0ZXMgdXNpbmcgdGlsaW5nIHJlZ2lz
dGVycz8gKi8KICNkZWZpbmUgUkVTRVRfVU5ERVJfU1RPUF9NQUNISU5FIDAKIAotc3RhdGljIHZv
aWQgcm13X3NldChzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsIGk5MTVfcmVnX3QgcmVnLCB1
MzIgc2V0KQotewotCWludGVsX3VuY29yZV9ybXcodW5jb3JlLCByZWcsIDAsIHNldCk7Ci19Ci0K
LXN0YXRpYyB2b2lkIHJtd19jbGVhcihzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsIGk5MTVf
cmVnX3QgcmVnLCB1MzIgY2xyKQotewotCWludGVsX3VuY29yZV9ybXcodW5jb3JlLCByZWcsIGNs
ciwgMCk7Ci19Ci0KIHN0YXRpYyB2b2lkIHJtd19zZXRfZncoc3RydWN0IGludGVsX3VuY29yZSAq
dW5jb3JlLCBpOTE1X3JlZ190IHJlZywgdTMyIHNldCkKIHsKIAlpbnRlbF91bmNvcmVfcm13X2Z3
KHVuY29yZSwgcmVnLCAwLCBzZXQpOwpAQCAtMTE1NiwxMTkgKzExNDcsNiBAQCBzdGF0aWMgdm9p
ZCBpOTE1X3Jlc2V0X2RldmljZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJa29i
amVjdF91ZXZlbnRfZW52KGtvYmosIEtPQkpfQ0hBTkdFLCByZXNldF9kb25lX2V2ZW50KTsKIH0K
IAotc3RhdGljIHZvaWQgY2xlYXJfcmVnaXN0ZXIoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3Jl
LCBpOTE1X3JlZ190IHJlZykKLXsKLQlpbnRlbF91bmNvcmVfcm13KHVuY29yZSwgcmVnLCAwLCAw
KTsKLX0KLQotc3RhdGljIHZvaWQgZ2VuOF9jbGVhcl9lbmdpbmVfZXJyb3JfcmVnaXN0ZXIoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQotewotCUdFTjZfUklOR19GQVVMVF9SRUdfUk1X
KGVuZ2luZSwgUklOR19GQVVMVF9WQUxJRCwgMCk7Ci0JR0VONl9SSU5HX0ZBVUxUX1JFR19QT1NU
SU5HX1JFQUQoZW5naW5lKTsKLX0KLQotc3RhdGljIHZvaWQgY2xlYXJfZXJyb3JfcmVnaXN0ZXJz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAotCQkJCSAgaW50ZWxfZW5naW5lX21hc2tf
dCBlbmdpbmVfbWFzaykKLXsKLQlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmaTkxNS0+
dW5jb3JlOwotCXUzMiBlaXI7Ci0KLQlpZiAoIUlTX0dFTihpOTE1LCAyKSkKLQkJY2xlYXJfcmVn
aXN0ZXIodW5jb3JlLCBQR1RCTF9FUik7Ci0KLQlpZiAoSU5URUxfR0VOKGk5MTUpIDwgNCkKLQkJ
Y2xlYXJfcmVnaXN0ZXIodW5jb3JlLCBJUEVJUihSRU5ERVJfUklOR19CQVNFKSk7Ci0JZWxzZQot
CQljbGVhcl9yZWdpc3Rlcih1bmNvcmUsIElQRUlSX0k5NjUpOwotCi0JY2xlYXJfcmVnaXN0ZXIo
dW5jb3JlLCBFSVIpOwotCWVpciA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgRUlSKTsKLQlp
ZiAoZWlyKSB7Ci0JCS8qCi0JCSAqIHNvbWUgZXJyb3JzIG1pZ2h0IGhhdmUgYmVjb21lIHN0dWNr
LAotCQkgKiBtYXNrIHRoZW0uCi0JCSAqLwotCQlEUk1fREVCVUdfRFJJVkVSKCJFSVIgc3R1Y2s6
IDB4JTA4eCwgbWFza2luZ1xuIiwgZWlyKTsKLQkJcm13X3NldCh1bmNvcmUsIEVNUiwgZWlyKTsK
LQkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgR0VOMl9JSVIsCi0JCQkJICAgSTkxNV9NQVNU
RVJfRVJST1JfSU5URVJSVVBUKTsKLQl9Ci0KLQlpZiAoSU5URUxfR0VOKGk5MTUpID49IDgpIHsK
LQkJcm13X2NsZWFyKHVuY29yZSwgR0VOOF9SSU5HX0ZBVUxUX1JFRywgUklOR19GQVVMVF9WQUxJ
RCk7Ci0JCWludGVsX3VuY29yZV9wb3N0aW5nX3JlYWQodW5jb3JlLCBHRU44X1JJTkdfRkFVTFRf
UkVHKTsKLQl9IGVsc2UgaWYgKElOVEVMX0dFTihpOTE1KSA+PSA2KSB7Ci0JCXN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZTsKLQkJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Ci0KLQkJZm9y
X2VhY2hfZW5naW5lX21hc2tlZChlbmdpbmUsIGk5MTUsIGVuZ2luZV9tYXNrLCBpZCkKLQkJCWdl
bjhfY2xlYXJfZW5naW5lX2Vycm9yX3JlZ2lzdGVyKGVuZ2luZSk7Ci0JfQotfQotCi1zdGF0aWMg
dm9pZCBnZW42X2NoZWNrX2ZhdWx0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Ci17Ci0Jc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwotCWVudW0gaW50ZWxfZW5naW5l
X2lkIGlkOwotCXUzMiBmYXVsdDsKLQotCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGRldl9wcml2
LCBpZCkgewotCQlmYXVsdCA9IEdFTjZfUklOR19GQVVMVF9SRUdfUkVBRChlbmdpbmUpOwotCQlp
ZiAoZmF1bHQgJiBSSU5HX0ZBVUxUX1ZBTElEKSB7Ci0JCQlEUk1fREVCVUdfRFJJVkVSKCJVbmV4
cGVjdGVkIGZhdWx0XG4iCi0JCQkJCSAiXHRBZGRyOiAweCUwOGx4XG4iCi0JCQkJCSAiXHRBZGRy
ZXNzIHNwYWNlOiAlc1xuIgotCQkJCQkgIlx0U291cmNlIElEOiAlZFxuIgotCQkJCQkgIlx0VHlw
ZTogJWRcbiIsCi0JCQkJCSBmYXVsdCAmIFBBR0VfTUFTSywKLQkJCQkJIGZhdWx0ICYgUklOR19G
QVVMVF9HVFRTRUxfTUFTSyA/ICJHR1RUIiA6ICJQUEdUVCIsCi0JCQkJCSBSSU5HX0ZBVUxUX1NS
Q0lEKGZhdWx0KSwKLQkJCQkJIFJJTkdfRkFVTFRfRkFVTFRfVFlQRShmYXVsdCkpOwotCQl9Ci0J
fQotfQotCi1zdGF0aWMgdm9pZCBnZW44X2NoZWNrX2ZhdWx0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCi17Ci0JdTMyIGZhdWx0ID0gSTkxNV9SRUFEKEdFTjhfUklOR19GQVVM
VF9SRUcpOwotCi0JaWYgKGZhdWx0ICYgUklOR19GQVVMVF9WQUxJRCkgewotCQl1MzIgZmF1bHRf
ZGF0YTAsIGZhdWx0X2RhdGExOwotCQl1NjQgZmF1bHRfYWRkcjsKLQotCQlmYXVsdF9kYXRhMCA9
IEk5MTVfUkVBRChHRU44X0ZBVUxUX1RMQl9EQVRBMCk7Ci0JCWZhdWx0X2RhdGExID0gSTkxNV9S
RUFEKEdFTjhfRkFVTFRfVExCX0RBVEExKTsKLQkJZmF1bHRfYWRkciA9ICgodTY0KShmYXVsdF9k
YXRhMSAmIEZBVUxUX1ZBX0hJR0hfQklUUykgPDwgNDQpIHwKLQkJCSAgICAgKCh1NjQpZmF1bHRf
ZGF0YTAgPDwgMTIpOwotCi0JCURSTV9ERUJVR19EUklWRVIoIlVuZXhwZWN0ZWQgZmF1bHRcbiIK
LQkJCQkgIlx0QWRkcjogMHglMDh4XyUwOHhcbiIKLQkJCQkgIlx0QWRkcmVzcyBzcGFjZTogJXNc
biIKLQkJCQkgIlx0RW5naW5lIElEOiAlZFxuIgotCQkJCSAiXHRTb3VyY2UgSUQ6ICVkXG4iCi0J
CQkJICJcdFR5cGU6ICVkXG4iLAotCQkJCSB1cHBlcl8zMl9iaXRzKGZhdWx0X2FkZHIpLAotCQkJ
CSBsb3dlcl8zMl9iaXRzKGZhdWx0X2FkZHIpLAotCQkJCSBmYXVsdF9kYXRhMSAmIEZBVUxUX0dU
VF9TRUwgPyAiR0dUVCIgOiAiUFBHVFQiLAotCQkJCSBHRU44X1JJTkdfRkFVTFRfRU5HSU5FX0lE
KGZhdWx0KSwKLQkJCQkgUklOR19GQVVMVF9TUkNJRChmYXVsdCksCi0JCQkJIFJJTkdfRkFVTFRf
RkFVTFRfVFlQRShmYXVsdCkpOwotCX0KLX0KLQotdm9pZCBpOTE1X2NoZWNrX2FuZF9jbGVhcl9m
YXVsdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCi17Ci0JLyogRnJvbSBHRU44IG9u
d2FyZHMgd2Ugb25seSBoYXZlIG9uZSAnQWxsIEVuZ2luZSBGYXVsdCBSZWdpc3RlcicgKi8KLQlp
ZiAoSU5URUxfR0VOKGk5MTUpID49IDgpCi0JCWdlbjhfY2hlY2tfZmF1bHRzKGk5MTUpOwotCWVs
c2UgaWYgKElOVEVMX0dFTihpOTE1KSA+PSA2KQotCQlnZW42X2NoZWNrX2ZhdWx0cyhpOTE1KTsK
LQllbHNlCi0JCXJldHVybjsKLQotCWNsZWFyX2Vycm9yX3JlZ2lzdGVycyhpOTE1LCBBTExfRU5H
SU5FUyk7Ci19Ci0KIC8qKgogICogaTkxNV9oYW5kbGVfZXJyb3IgLSBoYW5kbGUgYSBncHUgZXJy
b3IKICAqIEBpOTE1OiBpOTE1IGRldmljZSBwcml2YXRlCkBAIC0xMzE3LDcgKzExOTUsNyBAQCB2
b2lkIGk5MTVfaGFuZGxlX2Vycm9yKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCiAJ
aWYgKGZsYWdzICYgSTkxNV9FUlJPUl9DQVBUVVJFKSB7CiAJCWk5MTVfY2FwdHVyZV9lcnJvcl9z
dGF0ZShpOTE1LCBlbmdpbmVfbWFzaywgbXNnKTsKLQkJY2xlYXJfZXJyb3JfcmVnaXN0ZXJzKGk5
MTUsIGVuZ2luZV9tYXNrKTsKKwkJaW50ZWxfZ3RfY2xlYXJfZXJyb3JfcmVnaXN0ZXJzKCZpOTE1
LT5ndCwgZW5naW5lX21hc2spOwogCX0KIAogCS8qCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yZXNldC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmVzZXQuaAppbmRleCA1ODBlYmRiNTllY2EuLjAzZmJhMGFiMzg2OCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yZXNldC5oCkBAIC0yNSw4ICsyNSw2IEBAIHZvaWQgaTkxNV9oYW5kbGVf
ZXJyb3Ioc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCSAgICAgICBjb25zdCBjaGFy
ICpmbXQsIC4uLik7CiAjZGVmaW5lIEk5MTVfRVJST1JfQ0FQVFVSRSBCSVQoMCkKIAotdm9pZCBp
OTE1X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
OwotCiB2b2lkIGk5MTVfcmVzZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCWlu
dGVsX2VuZ2luZV9tYXNrX3Qgc3RhbGxlZF9tYXNrLAogCQljb25zdCBjaGFyICpyZWFzb24pOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggMjU0ZjdiN2RmMzA2Li45NzE1NWM1ZWI3ZTEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtNDksNiArNDksNyBAQAogCiAjaW5jbHVkZSAiZ2Vt
L2k5MTVfZ2VtX2NvbnRleHQuaCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1faW9jdGxzLmgiCisj
aW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndF9wbS5oIgogI2lu
Y2x1ZGUgImd0L2ludGVsX3Jlc2V0LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
aCIKQEAgLTIzMzksNyArMjM0MCw3IEBAIHN0YXRpYyBpbnQgaTkxNV9kcm1fcmVzdW1lX2Vhcmx5
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAKIAlpbnRlbF91bmNvcmVfcmVzdW1lX2Vhcmx5KCZk
ZXZfcHJpdi0+dW5jb3JlKTsKIAotCWk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyhkZXZfcHJp
dik7CisJaW50ZWxfZ3RfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cygmZGV2X3ByaXYtPmd0KTsKIAog
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExIHx8IElTX0dFTjlfTFAoZGV2X3ByaXYpKSB7
CiAJCWdlbjlfc2FuaXRpemVfZGNfc3RhdGUoZGV2X3ByaXYpOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYwppbmRleCA5MGQ5NjY5ZmYzMTMuLmFjNmVkNDU5NzIwZSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTM1LDYgKzM1LDggQEAKIAogI2luY2x1ZGUgPGRybS9p
OTE1X2RybS5oPgogCisjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKKwogI2luY2x1ZGUgImk5MTVf
ZHJ2LmgiCiAjaW5jbHVkZSAiaTkxNV9zY2F0dGVybGlzdC5oIgogI2luY2x1ZGUgImk5MTVfdHJh
Y2UuaCIKQEAgLTIzMTEsNyArMjMxMyw3IEBAIHZvaWQgaTkxNV9nZW1fc3VzcGVuZF9ndHRfbWFw
cGluZ3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpIDwgNikKIAkJcmV0dXJuOwogCi0JaTkxNV9jaGVja19hbmRfY2xlYXJfZmF1bHRz
KGRldl9wcml2KTsKKwlpbnRlbF9ndF9jaGVja19hbmRfY2xlYXJfZmF1bHRzKCZkZXZfcHJpdi0+
Z3QpOwogCiAJZ2d0dC0+dm0uY2xlYXJfcmFuZ2UoJmdndHQtPnZtLCAwLCBnZ3R0LT52bS50b3Rh
bCk7CiAKQEAgLTM2MjAsNyArMzYyMiw3IEBAIHZvaWQgaTkxNV9nZW1fcmVzdG9yZV9ndHRfbWFw
cGluZ3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXN0cnVjdCBpOTE1X2dn
dHQgKmdndHQgPSAmZGV2X3ByaXYtPmdndHQ7CiAJc3RydWN0IGk5MTVfdm1hICp2bWEsICp2bjsK
IAotCWk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyhkZXZfcHJpdik7CisJaW50ZWxfZ3RfY2hl
Y2tfYW5kX2NsZWFyX2ZhdWx0cygmZGV2X3ByaXYtPmd0KTsKIAogCW11dGV4X2xvY2soJmdndHQt
PnZtLm11dGV4KTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
