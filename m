Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAF9436B9
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:38:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F5FA89A74;
	Thu, 13 Jun 2019 13:38:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E3589A74
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 13:38:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 06:38:28 -0700
X-ExtLoop1: 1
Received: from aabuhatz-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.210])
 by orsmga008.jf.intel.com with ESMTP; 13 Jun 2019 06:38:22 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 14:35:16 +0100
Message-Id: <20190613133539.12620-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 05/28] drm/i915: Make i915_check_and_clear_faults
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
U3VnZ2VzdGVkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCAgIDQgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgICAgICAgIHwgMTI5ICsrKysrKysrKysrKysr
KysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmggICAgICAgIHwgICA1
ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgICAgIHwgMTI2ICstLS0t
LS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuaCAg
ICAgfCAgIDIgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgfCAg
IDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jICAgICAgIHwgICA2ICst
CiA3IGZpbGVzIGNoYW5nZWQsIDE0NSBpbnNlcnRpb25zKCspLCAxMzAgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRleCBjMGQ5ODZkYjVh
NzUuLjM1YTlmNzU0YmNiOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X2NzLmMKQEAgLTI4LDYgKzI4LDggQEAKIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAKKyNpbmNs
dWRlICJndC9pbnRlbF9ndC5oIgorCiAjaW5jbHVkZSAiaW50ZWxfZW5naW5lLmgiCiAjaW5jbHVk
ZSAiaW50ZWxfZW5naW5lX3BtLmgiCiAjaW5jbHVkZSAiaW50ZWxfY29udGV4dC5oIgpAQCAtNDUz
LDcgKzQ1NSw3IEBAIGludCBpbnRlbF9lbmdpbmVzX2luaXRfbW1pbyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKIAogCVJVTlRJTUVfSU5GTyhpOTE1KS0+bnVtX2VuZ2luZXMgPSBod2Vp
Z2h0MzIobWFzayk7CiAKLQlpOTE1X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMoaTkxNSk7CisJaW50
ZWxfZ3RfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cygmaTkxNS0+Z3QpOwogCiAJaW50ZWxfc2V0dXBf
ZW5naW5lX2NhcGFiaWxpdGllcyhpOTE1KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMK
aW5kZXggMjllOGRjNzY2YmE0Li41OGVmY2RkNzgxMTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3QuYwpAQCAtNyw2ICs3LDcgQEAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgogCiAjaW5jbHVk
ZSAiaW50ZWxfZ3QuaCIKKyNpbmNsdWRlICJpbnRlbF91bmNvcmUuaCIKIAogdm9pZCBpbnRlbF9n
dF9pbml0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQogewpAQCAtMjIsMyArMjMsMTMxIEBAIHZvaWQgaW50ZWxfZ3RfaW5pdChzdHJ1Y3QgaW50ZWxf
Z3QgKmd0LCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogCWxvY2tkZXBfaW5pdF9t
YXAoJmd0LT5yZXNldF9sb2NrbWFwLCAiaTkxNS5yZXNldCIsICZyZXNldF9rZXksIDApOwogfQor
CitzdGF0aWMgdm9pZCBybXdfc2V0KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwgaTkxNV9y
ZWdfdCByZWcsIHUzMiBzZXQpCit7CisJaW50ZWxfdW5jb3JlX3Jtdyh1bmNvcmUsIHJlZywgMCwg
c2V0KTsKK30KKworc3RhdGljIHZvaWQgcm13X2NsZWFyKHN0cnVjdCBpbnRlbF91bmNvcmUgKnVu
Y29yZSwgaTkxNV9yZWdfdCByZWcsIHUzMiBjbHIpCit7CisJaW50ZWxfdW5jb3JlX3Jtdyh1bmNv
cmUsIHJlZywgY2xyLCAwKTsKK30KKworc3RhdGljIHZvaWQgY2xlYXJfcmVnaXN0ZXIoc3RydWN0
IGludGVsX3VuY29yZSAqdW5jb3JlLCBpOTE1X3JlZ190IHJlZykKK3sKKwlpbnRlbF91bmNvcmVf
cm13KHVuY29yZSwgcmVnLCAwLCAwKTsKK30KKworc3RhdGljIHZvaWQgZ2VuOF9jbGVhcl9lbmdp
bmVfZXJyb3JfcmVnaXN0ZXIoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCUdF
TjZfUklOR19GQVVMVF9SRUdfUk1XKGVuZ2luZSwgUklOR19GQVVMVF9WQUxJRCwgMCk7CisJR0VO
Nl9SSU5HX0ZBVUxUX1JFR19QT1NUSU5HX1JFQUQoZW5naW5lKTsKK30KKwordm9pZAoraW50ZWxf
Z3RfY2xlYXJfZXJyb3JfcmVnaXN0ZXJzKHN0cnVjdCBpbnRlbF9ndCAqZ3QsCisJCQkgICAgICAg
aW50ZWxfZW5naW5lX21hc2tfdCBlbmdpbmVfbWFzaykKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IGd0LT5pOTE1OworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0
LT51bmNvcmU7CisJdTMyIGVpcjsKKworCWlmICghSVNfR0VOKGk5MTUsIDIpKQorCQljbGVhcl9y
ZWdpc3Rlcih1bmNvcmUsIFBHVEJMX0VSKTsKKworCWlmIChJTlRFTF9HRU4oaTkxNSkgPCA0KQor
CQljbGVhcl9yZWdpc3Rlcih1bmNvcmUsIElQRUlSKFJFTkRFUl9SSU5HX0JBU0UpKTsKKwllbHNl
CisJCWNsZWFyX3JlZ2lzdGVyKHVuY29yZSwgSVBFSVJfSTk2NSk7CisKKwljbGVhcl9yZWdpc3Rl
cih1bmNvcmUsIEVJUik7CisJZWlyID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBFSVIpOwor
CWlmIChlaXIpIHsKKwkJLyoKKwkJICogc29tZSBlcnJvcnMgbWlnaHQgaGF2ZSBiZWNvbWUgc3R1
Y2ssCisJCSAqIG1hc2sgdGhlbS4KKwkJICovCisJCURSTV9ERUJVR19EUklWRVIoIkVJUiBzdHVj
azogMHglMDh4LCBtYXNraW5nXG4iLCBlaXIpOworCQlybXdfc2V0KHVuY29yZSwgRU1SLCBlaXIp
OworCQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBHRU4yX0lJUiwKKwkJCQkgICBJOTE1X01B
U1RFUl9FUlJPUl9JTlRFUlJVUFQpOworCX0KKworCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gOCkg
eworCQlybXdfY2xlYXIodW5jb3JlLCBHRU44X1JJTkdfRkFVTFRfUkVHLCBSSU5HX0ZBVUxUX1ZB
TElEKTsKKwkJaW50ZWxfdW5jb3JlX3Bvc3RpbmdfcmVhZCh1bmNvcmUsIEdFTjhfUklOR19GQVVM
VF9SRUcpOworCX0gZWxzZSBpZiAoSU5URUxfR0VOKGk5MTUpID49IDYpIHsKKwkJc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lOworCQllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKKworCQlm
b3JfZWFjaF9lbmdpbmVfbWFza2VkKGVuZ2luZSwgaTkxNSwgZW5naW5lX21hc2ssIGlkKQorCQkJ
Z2VuOF9jbGVhcl9lbmdpbmVfZXJyb3JfcmVnaXN0ZXIoZW5naW5lKTsKKwl9Cit9CisKK3N0YXRp
YyB2b2lkIGdlbjZfY2hlY2tfZmF1bHRzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCit7CisJc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOworCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOworCXUz
MiBmYXVsdDsKKworCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGd0LT5pOTE1LCBpZCkgeworCQlm
YXVsdCA9IEdFTjZfUklOR19GQVVMVF9SRUdfUkVBRChlbmdpbmUpOworCQlpZiAoZmF1bHQgJiBS
SU5HX0ZBVUxUX1ZBTElEKSB7CisJCQlEUk1fREVCVUdfRFJJVkVSKCJVbmV4cGVjdGVkIGZhdWx0
XG4iCisJCQkJCSAiXHRBZGRyOiAweCUwOGx4XG4iCisJCQkJCSAiXHRBZGRyZXNzIHNwYWNlOiAl
c1xuIgorCQkJCQkgIlx0U291cmNlIElEOiAlZFxuIgorCQkJCQkgIlx0VHlwZTogJWRcbiIsCisJ
CQkJCSBmYXVsdCAmIFBBR0VfTUFTSywKKwkJCQkJIGZhdWx0ICYgUklOR19GQVVMVF9HVFRTRUxf
TUFTSyA/ICJHR1RUIiA6ICJQUEdUVCIsCisJCQkJCSBSSU5HX0ZBVUxUX1NSQ0lEKGZhdWx0KSwK
KwkJCQkJIFJJTkdfRkFVTFRfRkFVTFRfVFlQRShmYXVsdCkpOworCQl9CisJfQorfQorCitzdGF0
aWMgdm9pZCBnZW44X2NoZWNrX2ZhdWx0cyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQoreworCXN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7CisJdTMyIGZhdWx0ID0gaW50ZWxf
dW5jb3JlX3JlYWQodW5jb3JlLCBHRU44X1JJTkdfRkFVTFRfUkVHKTsKKworCWlmIChmYXVsdCAm
IFJJTkdfRkFVTFRfVkFMSUQpIHsKKwkJdTMyIGZhdWx0X2RhdGEwLCBmYXVsdF9kYXRhMTsKKwkJ
dTY0IGZhdWx0X2FkZHI7CisKKwkJZmF1bHRfZGF0YTAgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNv
cmUsIEdFTjhfRkFVTFRfVExCX0RBVEEwKTsKKwkJZmF1bHRfZGF0YTEgPSBpbnRlbF91bmNvcmVf
cmVhZCh1bmNvcmUsIEdFTjhfRkFVTFRfVExCX0RBVEExKTsKKwkJZmF1bHRfYWRkciA9ICgodTY0
KShmYXVsdF9kYXRhMSAmIEZBVUxUX1ZBX0hJR0hfQklUUykgPDwgNDQpIHwKKwkJCSAgICAgKCh1
NjQpZmF1bHRfZGF0YTAgPDwgMTIpOworCisJCURSTV9ERUJVR19EUklWRVIoIlVuZXhwZWN0ZWQg
ZmF1bHRcbiIKKwkJCQkgIlx0QWRkcjogMHglMDh4XyUwOHhcbiIKKwkJCQkgIlx0QWRkcmVzcyBz
cGFjZTogJXNcbiIKKwkJCQkgIlx0RW5naW5lIElEOiAlZFxuIgorCQkJCSAiXHRTb3VyY2UgSUQ6
ICVkXG4iCisJCQkJICJcdFR5cGU6ICVkXG4iLAorCQkJCSB1cHBlcl8zMl9iaXRzKGZhdWx0X2Fk
ZHIpLAorCQkJCSBsb3dlcl8zMl9iaXRzKGZhdWx0X2FkZHIpLAorCQkJCSBmYXVsdF9kYXRhMSAm
IEZBVUxUX0dUVF9TRUwgPyAiR0dUVCIgOiAiUFBHVFQiLAorCQkJCSBHRU44X1JJTkdfRkFVTFRf
RU5HSU5FX0lEKGZhdWx0KSwKKwkJCQkgUklOR19GQVVMVF9TUkNJRChmYXVsdCksCisJCQkJIFJJ
TkdfRkFVTFRfRkFVTFRfVFlQRShmYXVsdCkpOworCX0KK30KKwordm9pZCBpbnRlbF9ndF9jaGVj
a19hbmRfY2xlYXJfZmF1bHRzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCit7CisJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKKworCS8qIEZyb20gR0VOOCBvbndhcmRzIHdl
IG9ubHkgaGF2ZSBvbmUgJ0FsbCBFbmdpbmUgRmF1bHQgUmVnaXN0ZXInICovCisJaWYgKElOVEVM
X0dFTihpOTE1KSA+PSA4KQorCQlnZW44X2NoZWNrX2ZhdWx0cyhndCk7CisJZWxzZSBpZiAoSU5U
RUxfR0VOKGk5MTUpID49IDYpCisJCWdlbjZfY2hlY2tfZmF1bHRzKGd0KTsKKwllbHNlCisJCXJl
dHVybjsKKworCWludGVsX2d0X2NsZWFyX2Vycm9yX3JlZ2lzdGVycyhndCwgQUxMX0VOR0lORVMp
OworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmgKaW5kZXggZjU3ZmYzNzU4ZjU0Li5kNGY1
ODUxNTE1MjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaApAQCAtNywxMCArNywxNSBA
QAogI2lmbmRlZiBfX0lOVEVMX0dUX18KICNkZWZpbmUgX19JTlRFTF9HVF9fCiAKKyNpbmNsdWRl
ICJndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndF90eXBlcy5o
IgogCiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKIAogdm9pZCBpbnRlbF9ndF9pbml0KHN0cnVj
dCBpbnRlbF9ndCAqZ3QsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKIAordm9pZCBp
bnRlbF9ndF9jaGVja19hbmRfY2xlYXJfZmF1bHRzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwordm9p
ZCBpbnRlbF9ndF9jbGVhcl9lcnJvcl9yZWdpc3RlcnMoc3RydWN0IGludGVsX2d0ICpndCwKKwkJ
CQkgICAgaW50ZWxfZW5naW5lX21hc2tfdCBlbmdpbmVfbWFzayk7CisKICNlbmRpZiAvKiBfX0lO
VEVMX0dUX0hfXyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKaW5kZXggOGJh
N2FmOGI3Y2VkLi5jNzg2YWM1ZDQ3ZDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVz
ZXQuYwpAQCAtMTMsNiArMTMsNyBAQAogI2luY2x1ZGUgImk5MTVfZ3B1X2Vycm9yLmgiCiAjaW5j
bHVkZSAiaTkxNV9pcnEuaCIKICNpbmNsdWRlICJpbnRlbF9lbmdpbmVfcG0uaCIKKyNpbmNsdWRl
ICJpbnRlbF9ndC5oIgogI2luY2x1ZGUgImludGVsX2d0X3BtLmgiCiAjaW5jbHVkZSAiaW50ZWxf
cmVzZXQuaCIKIApAQCAtMjQsMTYgKzI1LDYgQEAKIC8qIFhYWCBIb3cgdG8gaGFuZGxlIGNvbmN1
cnJlbnQgR0dUVCB1cGRhdGVzIHVzaW5nIHRpbGluZyByZWdpc3RlcnM/ICovCiAjZGVmaW5lIFJF
U0VUX1VOREVSX1NUT1BfTUFDSElORSAwCiAKLXN0YXRpYyB2b2lkIHJtd19zZXQoc3RydWN0IGlu
dGVsX3VuY29yZSAqdW5jb3JlLCBpOTE1X3JlZ190IHJlZywgdTMyIHNldCkKLXsKLQlpbnRlbF91
bmNvcmVfcm13KHVuY29yZSwgcmVnLCAwLCBzZXQpOwotfQotCi1zdGF0aWMgdm9pZCBybXdfY2xl
YXIoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLCBpOTE1X3JlZ190IHJlZywgdTMyIGNscikK
LXsKLQlpbnRlbF91bmNvcmVfcm13KHVuY29yZSwgcmVnLCBjbHIsIDApOwotfQotCiBzdGF0aWMg
dm9pZCBybXdfc2V0X2Z3KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwgaTkxNV9yZWdfdCBy
ZWcsIHUzMiBzZXQpCiB7CiAJaW50ZWxfdW5jb3JlX3Jtd19mdyh1bmNvcmUsIHJlZywgMCwgc2V0
KTsKQEAgLTExNTgsMTE5ICsxMTQ5LDYgQEAgc3RhdGljIHZvaWQgaTkxNV9yZXNldF9kZXZpY2Uo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCWtvYmplY3RfdWV2ZW50X2Vudihrb2Jq
LCBLT0JKX0NIQU5HRSwgcmVzZXRfZG9uZV9ldmVudCk7CiB9CiAKLXN0YXRpYyB2b2lkIGNsZWFy
X3JlZ2lzdGVyKHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwgaTkxNV9yZWdfdCByZWcpCi17
Ci0JaW50ZWxfdW5jb3JlX3Jtdyh1bmNvcmUsIHJlZywgMCwgMCk7Ci19Ci0KLXN0YXRpYyB2b2lk
IGdlbjhfY2xlYXJfZW5naW5lX2Vycm9yX3JlZ2lzdGVyKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKLXsKLQlHRU42X1JJTkdfRkFVTFRfUkVHX1JNVyhlbmdpbmUsIFJJTkdfRkFVTFRf
VkFMSUQsIDApOwotCUdFTjZfUklOR19GQVVMVF9SRUdfUE9TVElOR19SRUFEKGVuZ2luZSk7Ci19
Ci0KLXN0YXRpYyB2b2lkIGNsZWFyX2Vycm9yX3JlZ2lzdGVycyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwKLQkJCQkgIGludGVsX2VuZ2luZV9tYXNrX3QgZW5naW5lX21hc2spCi17Ci0J
c3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmk5MTUtPnVuY29yZTsKLQl1MzIgZWlyOwot
Ci0JaWYgKCFJU19HRU4oaTkxNSwgMikpCi0JCWNsZWFyX3JlZ2lzdGVyKHVuY29yZSwgUEdUQkxf
RVIpOwotCi0JaWYgKElOVEVMX0dFTihpOTE1KSA8IDQpCi0JCWNsZWFyX3JlZ2lzdGVyKHVuY29y
ZSwgSVBFSVIoUkVOREVSX1JJTkdfQkFTRSkpOwotCWVsc2UKLQkJY2xlYXJfcmVnaXN0ZXIodW5j
b3JlLCBJUEVJUl9JOTY1KTsKLQotCWNsZWFyX3JlZ2lzdGVyKHVuY29yZSwgRUlSKTsKLQllaXIg
PSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEVJUik7Ci0JaWYgKGVpcikgewotCQkvKgotCQkg
KiBzb21lIGVycm9ycyBtaWdodCBoYXZlIGJlY29tZSBzdHVjaywKLQkJICogbWFzayB0aGVtLgot
CQkgKi8KLQkJRFJNX0RFQlVHX0RSSVZFUigiRUlSIHN0dWNrOiAweCUwOHgsIG1hc2tpbmdcbiIs
IGVpcik7Ci0JCXJtd19zZXQodW5jb3JlLCBFTVIsIGVpcik7Ci0JCWludGVsX3VuY29yZV93cml0
ZSh1bmNvcmUsIEdFTjJfSUlSLAotCQkJCSAgIEk5MTVfTUFTVEVSX0VSUk9SX0lOVEVSUlVQVCk7
Ci0JfQotCi0JaWYgKElOVEVMX0dFTihpOTE1KSA+PSA4KSB7Ci0JCXJtd19jbGVhcih1bmNvcmUs
IEdFTjhfUklOR19GQVVMVF9SRUcsIFJJTkdfRkFVTFRfVkFMSUQpOwotCQlpbnRlbF91bmNvcmVf
cG9zdGluZ19yZWFkKHVuY29yZSwgR0VOOF9SSU5HX0ZBVUxUX1JFRyk7Ci0JfSBlbHNlIGlmIChJ
TlRFTF9HRU4oaTkxNSkgPj0gNikgewotCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7
Ci0JCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwotCi0JCWZvcl9lYWNoX2VuZ2luZV9tYXNrZWQo
ZW5naW5lLCBpOTE1LCBlbmdpbmVfbWFzaywgaWQpCi0JCQlnZW44X2NsZWFyX2VuZ2luZV9lcnJv
cl9yZWdpc3RlcihlbmdpbmUpOwotCX0KLX0KLQotc3RhdGljIHZvaWQgZ2VuNl9jaGVja19mYXVs
dHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQotewotCXN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZTsKLQllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKLQl1MzIgZmF1bHQ7
Ci0KLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBkZXZfcHJpdiwgaWQpIHsKLQkJZmF1bHQgPSBH
RU42X1JJTkdfRkFVTFRfUkVHX1JFQUQoZW5naW5lKTsKLQkJaWYgKGZhdWx0ICYgUklOR19GQVVM
VF9WQUxJRCkgewotCQkJRFJNX0RFQlVHX0RSSVZFUigiVW5leHBlY3RlZCBmYXVsdFxuIgotCQkJ
CQkgIlx0QWRkcjogMHglMDhseFxuIgotCQkJCQkgIlx0QWRkcmVzcyBzcGFjZTogJXNcbiIKLQkJ
CQkJICJcdFNvdXJjZSBJRDogJWRcbiIKLQkJCQkJICJcdFR5cGU6ICVkXG4iLAotCQkJCQkgZmF1
bHQgJiBQQUdFX01BU0ssCi0JCQkJCSBmYXVsdCAmIFJJTkdfRkFVTFRfR1RUU0VMX01BU0sgPyAi
R0dUVCIgOiAiUFBHVFQiLAotCQkJCQkgUklOR19GQVVMVF9TUkNJRChmYXVsdCksCi0JCQkJCSBS
SU5HX0ZBVUxUX0ZBVUxUX1RZUEUoZmF1bHQpKTsKLQkJfQotCX0KLX0KLQotc3RhdGljIHZvaWQg
Z2VuOF9jaGVja19mYXVsdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQotewot
CXUzMiBmYXVsdCA9IEk5MTVfUkVBRChHRU44X1JJTkdfRkFVTFRfUkVHKTsKLQotCWlmIChmYXVs
dCAmIFJJTkdfRkFVTFRfVkFMSUQpIHsKLQkJdTMyIGZhdWx0X2RhdGEwLCBmYXVsdF9kYXRhMTsK
LQkJdTY0IGZhdWx0X2FkZHI7Ci0KLQkJZmF1bHRfZGF0YTAgPSBJOTE1X1JFQUQoR0VOOF9GQVVM
VF9UTEJfREFUQTApOwotCQlmYXVsdF9kYXRhMSA9IEk5MTVfUkVBRChHRU44X0ZBVUxUX1RMQl9E
QVRBMSk7Ci0JCWZhdWx0X2FkZHIgPSAoKHU2NCkoZmF1bHRfZGF0YTEgJiBGQVVMVF9WQV9ISUdI
X0JJVFMpIDw8IDQ0KSB8Ci0JCQkgICAgICgodTY0KWZhdWx0X2RhdGEwIDw8IDEyKTsKLQotCQlE
Uk1fREVCVUdfRFJJVkVSKCJVbmV4cGVjdGVkIGZhdWx0XG4iCi0JCQkJICJcdEFkZHI6IDB4JTA4
eF8lMDh4XG4iCi0JCQkJICJcdEFkZHJlc3Mgc3BhY2U6ICVzXG4iCi0JCQkJICJcdEVuZ2luZSBJ
RDogJWRcbiIKLQkJCQkgIlx0U291cmNlIElEOiAlZFxuIgotCQkJCSAiXHRUeXBlOiAlZFxuIiwK
LQkJCQkgdXBwZXJfMzJfYml0cyhmYXVsdF9hZGRyKSwKLQkJCQkgbG93ZXJfMzJfYml0cyhmYXVs
dF9hZGRyKSwKLQkJCQkgZmF1bHRfZGF0YTEgJiBGQVVMVF9HVFRfU0VMID8gIkdHVFQiIDogIlBQ
R1RUIiwKLQkJCQkgR0VOOF9SSU5HX0ZBVUxUX0VOR0lORV9JRChmYXVsdCksCi0JCQkJIFJJTkdf
RkFVTFRfU1JDSUQoZmF1bHQpLAotCQkJCSBSSU5HX0ZBVUxUX0ZBVUxUX1RZUEUoZmF1bHQpKTsK
LQl9Ci19Ci0KLXZvaWQgaTkxNV9jaGVja19hbmRfY2xlYXJfZmF1bHRzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQotewotCS8qIEZyb20gR0VOOCBvbndhcmRzIHdlIG9ubHkgaGF2ZSBv
bmUgJ0FsbCBFbmdpbmUgRmF1bHQgUmVnaXN0ZXInICovCi0JaWYgKElOVEVMX0dFTihpOTE1KSA+
PSA4KQotCQlnZW44X2NoZWNrX2ZhdWx0cyhpOTE1KTsKLQllbHNlIGlmIChJTlRFTF9HRU4oaTkx
NSkgPj0gNikKLQkJZ2VuNl9jaGVja19mYXVsdHMoaTkxNSk7Ci0JZWxzZQotCQlyZXR1cm47Ci0K
LQljbGVhcl9lcnJvcl9yZWdpc3RlcnMoaTkxNSwgQUxMX0VOR0lORVMpOwotfQotCiAvKioKICAq
IGk5MTVfaGFuZGxlX2Vycm9yIC0gaGFuZGxlIGEgZ3B1IGVycm9yCiAgKiBAaTkxNTogaTkxNSBk
ZXZpY2UgcHJpdmF0ZQpAQCAtMTMxOSw3ICsxMTk3LDcgQEAgdm9pZCBpOTE1X2hhbmRsZV9lcnJv
cihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAogCWlmIChmbGFncyAmIEk5MTVfRVJS
T1JfQ0FQVFVSRSkgewogCQlpOTE1X2NhcHR1cmVfZXJyb3Jfc3RhdGUoaTkxNSwgZW5naW5lX21h
c2ssIG1zZyk7Ci0JCWNsZWFyX2Vycm9yX3JlZ2lzdGVycyhpOTE1LCBlbmdpbmVfbWFzayk7CisJ
CWludGVsX2d0X2NsZWFyX2Vycm9yX3JlZ2lzdGVycygmaTkxNS0+Z3QsIGVuZ2luZV9tYXNrKTsK
IAl9CiAKIAkvKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVz
ZXQuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmgKaW5kZXggNTgwZWJk
YjU5ZWNhLi4wM2ZiYTBhYjM4NjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jlc2V0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQu
aApAQCAtMjUsOCArMjUsNiBAQCB2b2lkIGk5MTVfaGFuZGxlX2Vycm9yKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LAogCQkgICAgICAgY29uc3QgY2hhciAqZm10LCAuLi4pOwogI2RlZmlu
ZSBJOTE1X0VSUk9SX0NBUFRVUkUgQklUKDApCiAKLXZvaWQgaTkxNV9jaGVja19hbmRfY2xlYXJf
ZmF1bHRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKLQogdm9pZCBpOTE1X3Jlc2V0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQlpbnRlbF9lbmdpbmVfbWFza190IHN0
YWxsZWRfbWFzaywKIAkJY29uc3QgY2hhciAqcmVhc29uKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
CmluZGV4IDI1NGY3YjdkZjMwNi4uOTcxNTVjNWViN2UxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMKQEAgLTQ5LDYgKzQ5LDcgQEAKIAogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9jb250ZXh0Lmgi
CiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2lvY3Rscy5oIgorI2luY2x1ZGUgImd0L2ludGVsX2d0
LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfcG0uaCIKICNpbmNsdWRlICJndC9pbnRlbF9yZXNl
dC5oIgogI2luY2x1ZGUgImd0L2ludGVsX3dvcmthcm91bmRzLmgiCkBAIC0yMzM5LDcgKzIzNDAs
NyBAQCBzdGF0aWMgaW50IGk5MTVfZHJtX3Jlc3VtZV9lYXJseShzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2KQogCiAJaW50ZWxfdW5jb3JlX3Jlc3VtZV9lYXJseSgmZGV2X3ByaXYtPnVuY29yZSk7CiAK
LQlpOTE1X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMoZGV2X3ByaXYpOworCWludGVsX2d0X2NoZWNr
X2FuZF9jbGVhcl9mYXVsdHMoJmRldl9wcml2LT5ndCk7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMSB8fCBJU19HRU45X0xQKGRldl9wcml2KSkgewogCQlnZW45X3Nhbml0aXplX2Rj
X3N0YXRlKGRldl9wcml2KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggOTBk
OTY2OWZmMzEzLi5hYzZlZDQ1OTcyMGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
CkBAIC0zNSw2ICszNSw4IEBACiAKICNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KIAorI2luY2x1
ZGUgImd0L2ludGVsX2d0LmgiCisKICNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImk5
MTVfc2NhdHRlcmxpc3QuaCIKICNpbmNsdWRlICJpOTE1X3RyYWNlLmgiCkBAIC0yMzExLDcgKzIz
MTMsNyBAQCB2b2lkIGk5MTVfZ2VtX3N1c3BlbmRfZ3R0X21hcHBpbmdzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDYpCiAJCXJl
dHVybjsKIAotCWk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyhkZXZfcHJpdik7CisJaW50ZWxf
Z3RfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cygmZGV2X3ByaXYtPmd0KTsKIAogCWdndHQtPnZtLmNs
ZWFyX3JhbmdlKCZnZ3R0LT52bSwgMCwgZ2d0dC0+dm0udG90YWwpOwogCkBAIC0zNjIwLDcgKzM2
MjIsNyBAQCB2b2lkIGk5MTVfZ2VtX3Jlc3RvcmVfZ3R0X21hcHBpbmdzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKIAlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gJmRldl9wcml2
LT5nZ3R0OwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hLCAqdm47CiAKLQlpOTE1X2NoZWNrX2FuZF9j
bGVhcl9mYXVsdHMoZGV2X3ByaXYpOworCWludGVsX2d0X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMo
JmRldl9wcml2LT5ndCk7CiAKIAltdXRleF9sb2NrKCZnZ3R0LT52bS5tdXRleCk7CiAKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
