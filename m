Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6897F4C322
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 23:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44FEA6E499;
	Wed, 19 Jun 2019 21:35:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B926E47D
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 21:34:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 14:34:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="162159123"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jun 2019 14:34:47 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 22:34:17 +0100
Message-Id: <20190619213437.1190-13-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619213437.1190-1-tvrtko.ursulin@linux.intel.com>
References: <20190619213437.1190-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 13/33] drm/i915: Convert i915_ppgtt_init_hw to
 intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk1vcmUgcmVt
b3ZhbCBvZiBpbXBsaWNpdCBkZXZfcHJpdiBmcm9tIHVzaW5nIG9sZCBtbWlvIGFjY2Vzc29ycy4K
ClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICB8ICAgMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAxMDEgKysrKysrKysrKysrKysrKysrLS0tLS0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggfCAgIDMgKy0KIDMgZmls
ZXMgY2hhbmdlZCwgNjcgaW5zZXJ0aW9ucygrKSwgMzkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMKaW5kZXggMjZjYWEwYjViNWQ3Li43NjljZmIxNWU2Y2EgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYwpAQCAtMTI2Nyw3ICsxMjY3LDcgQEAgaW50IGk5MTVfZ2VtX2luaXRfaHco
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWlmIChyZXQpCiAJCWdvdG8gb3V0
OwogCi0JcmV0ID0gaTkxNV9wcGd0dF9pbml0X2h3KGRldl9wcml2KTsKKwlyZXQgPSBpOTE1X3Bw
Z3R0X2luaXRfaHcoJmRldl9wcml2LT5ndCk7CiAJaWYgKHJldCkgewogCQlEUk1fRVJST1IoIkVu
YWJsaW5nIFBQR1RUIGZhaWxlZCAoJWQpXG4iLCByZXQpOwogCQlnb3RvIG91dDsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggM2RkODI1MTYyMzZkLi4wMzdkYzFlMzUzNWUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0xNjczLDI1ICsxNjczLDI5IEBAIHN0
YXRpYyBpbmxpbmUgdm9pZCBnZW42X3dyaXRlX3BkZShjb25zdCBzdHJ1Y3QgZ2VuNl9wcGd0dCAq
cHBndHQsCiAJCSAgcHBndHQtPnBkX2FkZHIgKyBwZGUpOwogfQogCi1zdGF0aWMgdm9pZCBnZW43
X3BwZ3R0X2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0aWMg
dm9pZCBnZW43X3BwZ3R0X2VuYWJsZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogeworCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7CisJc3RydWN0IGludGVsX3VuY29yZSAq
dW5jb3JlID0gZ3QtPnVuY29yZTsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CiAJ
dTMyIGVjb2NoaywgZWNvYml0czsKIAllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKIAotCWVjb2Jp
dHMgPSBJOTE1X1JFQUQoR0FDX0VDT19CSVRTKTsKLQlJOTE1X1dSSVRFKEdBQ19FQ09fQklUUywg
ZWNvYml0cyB8IEVDT0JJVFNfUFBHVFRfQ0FDSEU2NEIpOworCWVjb2JpdHMgPSBpbnRlbF91bmNv
cmVfcmVhZCh1bmNvcmUsIEdBQ19FQ09fQklUUyk7CisJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29y
ZSwKKwkJCSAgIEdBQ19FQ09fQklUUywKKwkJCSAgIGVjb2JpdHMgfCBFQ09CSVRTX1BQR1RUX0NB
Q0hFNjRCKTsKIAotCWVjb2NoayA9IEk5MTVfUkVBRChHQU1fRUNPQ0hLKTsKLQlpZiAoSVNfSEFT
V0VMTChkZXZfcHJpdikpIHsKKwllY29jaGsgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdB
TV9FQ09DSEspOworCWlmIChJU19IQVNXRUxMKGk5MTUpKSB7CiAJCWVjb2NoayB8PSBFQ09DSEtf
UFBHVFRfV0JfSFNXOwogCX0gZWxzZSB7CiAJCWVjb2NoayB8PSBFQ09DSEtfUFBHVFRfTExDX0lW
QjsKIAkJZWNvY2hrICY9IH5FQ09DSEtfUFBHVFRfR0ZEVF9JVkI7CiAJfQotCUk5MTVfV1JJVEUo
R0FNX0VDT0NISywgZWNvY2hrKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBHQU1fRUNP
Q0hLLCBlY29jaGspOwogCi0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZGV2X3ByaXYsIGlkKSB7
CisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKIAkJLyogR0ZYX01PREUgaXMg
cGVyLXJpbmcgb24gZ2VuNysgKi8KIAkJRU5HSU5FX1dSSVRFKGVuZ2luZSwKIAkJCSAgICAgUklO
R19NT0RFX0dFTjcsCkBAIC0xNjk5LDIyICsxNzAzLDMwIEBAIHN0YXRpYyB2b2lkIGdlbjdfcHBn
dHRfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl9CiB9CiAKLXN0
YXRpYyB2b2lkIGdlbjZfcHBndHRfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKK3N0YXRpYyB2b2lkIGdlbjZfcHBndHRfZW5hYmxlKHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
CiB7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKIAl1MzIgZWNv
Y2hrLCBnYWJfY3RsLCBlY29iaXRzOwogCi0JZWNvYml0cyA9IEk5MTVfUkVBRChHQUNfRUNPX0JJ
VFMpOwotCUk5MTVfV1JJVEUoR0FDX0VDT19CSVRTLCBlY29iaXRzIHwgRUNPQklUU19TTkJfQklU
IHwKLQkJICAgRUNPQklUU19QUEdUVF9DQUNIRTY0Qik7CisJZWNvYml0cyA9IGludGVsX3VuY29y
ZV9yZWFkKHVuY29yZSwgR0FDX0VDT19CSVRTKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3Jl
LAorCQkJICAgR0FDX0VDT19CSVRTLAorCQkJICAgZWNvYml0cyB8IEVDT0JJVFNfU05CX0JJVCB8
IEVDT0JJVFNfUFBHVFRfQ0FDSEU2NEIpOwogCi0JZ2FiX2N0bCA9IEk5MTVfUkVBRChHQUJfQ1RM
KTsKLQlJOTE1X1dSSVRFKEdBQl9DVEwsIGdhYl9jdGwgfCBHQUJfQ1RMX0NPTlRfQUZURVJfUEFH
RUZBVUxUKTsKKwlnYWJfY3RsID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHQUJfQ1RMKTsK
KwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAorCQkJICAgR0FCX0NUTCwKKwkJCSAgIGdhYl9j
dGwgfCBHQUJfQ1RMX0NPTlRfQUZURVJfUEFHRUZBVUxUKTsKIAotCWVjb2NoayA9IEk5MTVfUkVB
RChHQU1fRUNPQ0hLKTsKLQlJOTE1X1dSSVRFKEdBTV9FQ09DSEssIGVjb2NoayB8IEVDT0NIS19T
TkJfQklUIHwgRUNPQ0hLX1BQR1RUX0NBQ0hFNjRCKTsKKwllY29jaGsgPSBpbnRlbF91bmNvcmVf
cmVhZCh1bmNvcmUsIEdBTV9FQ09DSEspOworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJ
CQkgICBHQU1fRUNPQ0hLLAorCQkJICAgZWNvY2hrIHwgRUNPQ0hLX1NOQl9CSVQgfCBFQ09DSEtf
UFBHVFRfQ0FDSEU2NEIpOwogCi0JaWYgKEhBU19QUEdUVChkZXZfcHJpdikpIC8qIG1heSBiZSBk
aXNhYmxlZCBmb3IgVlQtZCAqLwotCQlJOTE1X1dSSVRFKEdGWF9NT0RFLCBfTUFTS0VEX0JJVF9F
TkFCTEUoR0ZYX1BQR1RUX0VOQUJMRSkpOworCWlmIChIQVNfUFBHVFQodW5jb3JlX3RvX2k5MTUo
dW5jb3JlKSkpIC8qIG1heSBiZSBkaXNhYmxlZCBmb3IgVlQtZCAqLworCQlpbnRlbF91bmNvcmVf
d3JpdGUodW5jb3JlLAorCQkJCSAgIEdGWF9NT0RFLAorCQkJCSAgIF9NQVNLRURfQklUX0VOQUJM
RShHRlhfUFBHVFRfRU5BQkxFKSk7CiB9CiAKIC8qIFBQR1RUIHN1cHBvcnQgZm9yIFNhbmR5YmRy
aWdlL0dlbjYgYW5kIGxhdGVyICovCkBAIC0yMTgyLDIxICsyMTk0LDMyIEBAIHN0YXRpYyBzdHJ1
Y3QgaTkxNV9wcGd0dCAqZ2VuNl9wcGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiAJcmV0dXJuIEVSUl9QVFIoZXJyKTsKIH0KIAotc3RhdGljIHZvaWQgZ3R0X3dyaXRl
X3dvcmthcm91bmRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyB2
b2lkIGd0dF93cml0ZV93b3JrYXJvdW5kcyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogeworCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7CisJc3RydWN0IGludGVsX3VuY29y
ZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKKwogCS8qIFRoaXMgZnVuY3Rpb24gaXMgZm9yIGd0dCBy
ZWxhdGVkIHdvcmthcm91bmRzLiBUaGlzIGZ1bmN0aW9uIGlzCiAJICogY2FsbGVkIG9uIGRyaXZl
ciBsb2FkIGFuZCBhZnRlciBhIEdQVSByZXNldCwgc28geW91IGNhbiBwbGFjZQogCSAqIHdvcmth
cm91bmRzIGhlcmUgZXZlbiBpZiB0aGV5IGdldCBvdmVyd3JpdHRlbiBieSBHUFUgcmVzZXQuCiAJ
ICovCiAJLyogV2FJbmNyZWFzZURlZmF1bHRUTEJFbnRyaWVzOmNodixiZHcsc2tsLGJ4dCxrYmws
Z2xrLGNmbCxjbmwsaWNsICovCi0JaWYgKElTX0JST0FEV0VMTChkZXZfcHJpdikpCi0JCUk5MTVf
V1JJVEUoR0VOOF9MM19MUkFfMV9HUEdQVSwgR0VOOF9MM19MUkFfMV9HUEdQVV9ERUZBVUxUX1ZB
TFVFX0JEVyk7Ci0JZWxzZSBpZiAoSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpCi0JCUk5MTVfV1JJ
VEUoR0VOOF9MM19MUkFfMV9HUEdQVSwgR0VOOF9MM19MUkFfMV9HUEdQVV9ERUZBVUxUX1ZBTFVF
X0NIVik7Ci0JZWxzZSBpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpCi0JCUk5MTVfV1JJVEUoR0VO
OF9MM19MUkFfMV9HUEdQVSwgR0VOOV9MM19MUkFfMV9HUEdQVV9ERUZBVUxUX1ZBTFVFX0JYVCk7
Ci0JZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5KQotCQlJOTE1X1dSSVRFKEdFTjhf
TDNfTFJBXzFfR1BHUFUsIEdFTjlfTDNfTFJBXzFfR1BHUFVfREVGQVVMVF9WQUxVRV9TS0wpOwor
CWlmIChJU19CUk9BRFdFTEwoaTkxNSkpCisJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJ
CQkJICAgR0VOOF9MM19MUkFfMV9HUEdQVSwKKwkJCQkgICBHRU44X0wzX0xSQV8xX0dQR1BVX0RF
RkFVTFRfVkFMVUVfQkRXKTsKKwllbHNlIGlmIChJU19DSEVSUllWSUVXKGk5MTUpKQorCQlpbnRl
bF91bmNvcmVfd3JpdGUodW5jb3JlLAorCQkJCSAgIEdFTjhfTDNfTFJBXzFfR1BHUFUsCisJCQkJ
ICAgR0VOOF9MM19MUkFfMV9HUEdQVV9ERUZBVUxUX1ZBTFVFX0NIVik7CisJZWxzZSBpZiAoSVNf
R0VOOV9MUChpOTE1KSkKKwkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKKwkJCQkgICBHRU44
X0wzX0xSQV8xX0dQR1BVLAorCQkJCSAgIEdFTjlfTDNfTFJBXzFfR1BHUFVfREVGQVVMVF9WQUxV
RV9CWFQpOworCWVsc2UgaWYgKElOVEVMX0dFTihpOTE1KSA+PSA5KQorCQlpbnRlbF91bmNvcmVf
d3JpdGUodW5jb3JlLAorCQkJCSAgIEdFTjhfTDNfTFJBXzFfR1BHUFUsCisJCQkJICAgR0VOOV9M
M19MUkFfMV9HUEdQVV9ERUZBVUxUX1ZBTFVFX1NLTCk7CiAKIAkvKgogCSAqIFRvIHN1cHBvcnQg
NjRLIFBURXMgd2UgbmVlZCB0byBmaXJzdCBlbmFibGUgdGhlIHVzZSBvZiB0aGUKQEAgLTIyMDks
MjEgKzIyMzIsMjUgQEAgc3RhdGljIHZvaWQgZ3R0X3dyaXRlX3dvcmthcm91bmRzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkgKiAzMksgcGFnZXMsIGJ1dCB3ZSBkb24ndCBj
dXJyZW50bHkgaGF2ZSBhbnkgc3VwcG9ydCBmb3IgaXQgaW4gb3VyCiAJICogZHJpdmVyLgogCSAq
LwotCWlmIChIQVNfUEFHRV9TSVpFUyhkZXZfcHJpdiwgSTkxNV9HVFRfUEFHRV9TSVpFXzY0Sykg
JiYKLQkgICAgSU5URUxfR0VOKGRldl9wcml2KSA8PSAxMCkKLQkJSTkxNV9XUklURShHRU44X0dB
TVdfRUNPX0RFVl9SV19JQSwKLQkJCSAgIEk5MTVfUkVBRChHRU44X0dBTVdfRUNPX0RFVl9SV19J
QSkgfAotCQkJICAgR0FNV19FQ09fRU5BQkxFXzY0S19JUFNfRklFTEQpOworCWlmIChIQVNfUEFH
RV9TSVpFUyhpOTE1LCBJOTE1X0dUVF9QQUdFX1NJWkVfNjRLKSAmJgorCSAgICBJTlRFTF9HRU4o
aTkxNSkgPD0gMTApCisJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkJICAgR0VOOF9H
QU1XX0VDT19ERVZfUldfSUEsCisJCQkJICAgaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLAorCQkJ
CQkJICAgICBHRU44X0dBTVdfRUNPX0RFVl9SV19JQSkgfAorCQkJCSAgIEdBTVdfRUNPX0VOQUJM
RV82NEtfSVBTX0ZJRUxEKTsKIH0KIAotaW50IGk5MTVfcHBndHRfaW5pdF9odyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitpbnQgaTkxNV9wcGd0dF9pbml0X2h3KHN0cnVjdCBp
bnRlbF9ndCAqZ3QpCiB7Ci0JZ3R0X3dyaXRlX3dvcmthcm91bmRzKGRldl9wcml2KTsKKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1OworCisJZ3R0X3dyaXRlX3dvcmth
cm91bmRzKGd0KTsKIAotCWlmIChJU19HRU4oZGV2X3ByaXYsIDYpKQotCQlnZW42X3BwZ3R0X2Vu
YWJsZShkZXZfcHJpdik7Ci0JZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA3KSkKLQkJZ2VuN19w
cGd0dF9lbmFibGUoZGV2X3ByaXYpOworCWlmIChJU19HRU4oaTkxNSwgNikpCisJCWdlbjZfcHBn
dHRfZW5hYmxlKGd0KTsKKwllbHNlIGlmIChJU19HRU4oaTkxNSwgNykpCisJCWdlbjdfcHBndHRf
ZW5hYmxlKGd0KTsKIAogCXJldHVybiAwOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
aAppbmRleCA4MTI3MTdjY2M2OWIuLjMxMjhhZGNkNGE3YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmgKQEAgLTY0LDYgKzY0LDcgQEAKIHN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZh
dGU7CiBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdDsKIHN0cnVjdCBpOTE1X3ZtYTsKK3N0cnVj
dCBpbnRlbF9ndDsKIAogdHlwZWRlZiB1MzIgZ2VuNl9wdGVfdDsKIHR5cGVkZWYgdTY0IGdlbjhf
cHRlX3Q7CkBAIC02NTMsNyArNjU0LDcgQEAgdm9pZCBpOTE1X2dndHRfZGlzYWJsZV9ndWMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogaW50IGk5MTVfZ2VtX2luaXRfZ2d0dChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBpOTE1X2dndHRfY2xlYW51cF9o
dyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogCi1pbnQgaTkxNV9wcGd0dF9p
bml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CitpbnQgaTkxNV9wcGd0
dF9pbml0X2h3KHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwogCiBzdHJ1Y3QgaTkxNV9wcGd0dCAqaTkx
NV9wcGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIAotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
