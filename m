Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E576148B9B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 20:13:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8771989336;
	Mon, 17 Jun 2019 18:13:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9249E89309
 for <Intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 18:13:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 11:13:07 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga007.fm.intel.com with ESMTP; 17 Jun 2019 11:13:06 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 19:12:16 +0100
Message-Id: <20190617181236.7981-14-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
References: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 13/33] drm/i915: Convert i915_ppgtt_init_hw to
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
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAxMDIgKysrKysrKysrKysrKysrKysrLS0tLS0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggfCAgIDMgKy0KIDMgZmls
ZXMgY2hhbmdlZCwgNjggaW5zZXJ0aW9ucygrKSwgMzkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMKaW5kZXggODYyYWVkOTJhM2I5Li43ZmMxZTNjNmM5NTEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYwpAQCAtMTI2Niw3ICsxMjY2LDcgQEAgaW50IGk5MTVfZ2VtX2luaXRfaHco
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWlmIChyZXQpCiAJCWdvdG8gb3V0
OwogCi0JcmV0ID0gaTkxNV9wcGd0dF9pbml0X2h3KGRldl9wcml2KTsKKwlyZXQgPSBpOTE1X3Bw
Z3R0X2luaXRfaHcoJmRldl9wcml2LT5ndCk7CiAJaWYgKHJldCkgewogCQlEUk1fRVJST1IoIkVu
YWJsaW5nIFBQR1RUIGZhaWxlZCAoJWQpXG4iLCByZXQpOwogCQlnb3RvIG91dDsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggMTI1YjhkYzMyNWZiLi5iOWY1MjJhNTcyYjQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC00Myw2ICs0Myw3IEBACiAjaW5jbHVk
ZSAiaTkxNV92Z3B1LmgiCiAjaW5jbHVkZSAiaW50ZWxfZHJ2LmgiCiAjaW5jbHVkZSAiaW50ZWxf
ZnJvbnRidWZmZXIuaCIKKyNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgogCiAjZGVmaW5lIEk5MTVf
R0ZQX0FMTE9XX0ZBSUwgKEdGUF9LRVJORUwgfCBfX0dGUF9SRVRSWV9NQVlGQUlMIHwgX19HRlBf
Tk9XQVJOKQogCkBAIC0xNjk0LDI1ICsxNjk1LDI5IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBnZW42
X3dyaXRlX3BkZShjb25zdCBzdHJ1Y3QgZ2VuNl9wcGd0dCAqcHBndHQsCiAJCSAgcHBndHQtPnBk
X2FkZHIgKyBwZGUpOwogfQogCi1zdGF0aWMgdm9pZCBnZW43X3BwZ3R0X2VuYWJsZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0aWMgdm9pZCBnZW43X3BwZ3R0X2VuYWJs
ZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogeworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gZ3QtPmk5MTU7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsK
IAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CiAJdTMyIGVjb2NoaywgZWNvYml0czsK
IAllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKIAotCWVjb2JpdHMgPSBJOTE1X1JFQUQoR0FDX0VD
T19CSVRTKTsKLQlJOTE1X1dSSVRFKEdBQ19FQ09fQklUUywgZWNvYml0cyB8IEVDT0JJVFNfUFBH
VFRfQ0FDSEU2NEIpOworCWVjb2JpdHMgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdBQ19F
Q09fQklUUyk7CisJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKKwkJCSAgIEdBQ19FQ09fQklU
UywKKwkJCSAgIGVjb2JpdHMgfCBFQ09CSVRTX1BQR1RUX0NBQ0hFNjRCKTsKIAotCWVjb2NoayA9
IEk5MTVfUkVBRChHQU1fRUNPQ0hLKTsKLQlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikpIHsKKwll
Y29jaGsgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdBTV9FQ09DSEspOworCWlmIChJU19I
QVNXRUxMKGk5MTUpKSB7CiAJCWVjb2NoayB8PSBFQ09DSEtfUFBHVFRfV0JfSFNXOwogCX0gZWxz
ZSB7CiAJCWVjb2NoayB8PSBFQ09DSEtfUFBHVFRfTExDX0lWQjsKIAkJZWNvY2hrICY9IH5FQ09D
SEtfUFBHVFRfR0ZEVF9JVkI7CiAJfQotCUk5MTVfV1JJVEUoR0FNX0VDT0NISywgZWNvY2hrKTsK
KwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBHQU1fRUNPQ0hLLCBlY29jaGspOwogCi0JZm9y
X2VhY2hfZW5naW5lKGVuZ2luZSwgZGV2X3ByaXYsIGlkKSB7CisJZm9yX2VhY2hfZW5naW5lKGVu
Z2luZSwgaTkxNSwgaWQpIHsKIAkJLyogR0ZYX01PREUgaXMgcGVyLXJpbmcgb24gZ2VuNysgKi8K
IAkJRU5HSU5FX1dSSVRFKGVuZ2luZSwKIAkJCSAgICAgUklOR19NT0RFX0dFTjcsCkBAIC0xNzIw
LDIyICsxNzI1LDMwIEBAIHN0YXRpYyB2b2lkIGdlbjdfcHBndHRfZW5hYmxlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl9CiB9CiAKLXN0YXRpYyB2b2lkIGdlbjZfcHBndHRf
ZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyB2b2lkIGdl
bjZfcHBndHRfZW5hYmxlKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CisJc3RydWN0IGludGVsX3Vu
Y29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKIAl1MzIgZWNvY2hrLCBnYWJfY3RsLCBlY29iaXRz
OwogCi0JZWNvYml0cyA9IEk5MTVfUkVBRChHQUNfRUNPX0JJVFMpOwotCUk5MTVfV1JJVEUoR0FD
X0VDT19CSVRTLCBlY29iaXRzIHwgRUNPQklUU19TTkJfQklUIHwKLQkJICAgRUNPQklUU19QUEdU
VF9DQUNIRTY0Qik7CisJZWNvYml0cyA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0FDX0VD
T19CSVRTKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAorCQkJICAgR0FDX0VDT19CSVRT
LAorCQkJICAgZWNvYml0cyB8IEVDT0JJVFNfU05CX0JJVCB8IEVDT0JJVFNfUFBHVFRfQ0FDSEU2
NEIpOwogCi0JZ2FiX2N0bCA9IEk5MTVfUkVBRChHQUJfQ1RMKTsKLQlJOTE1X1dSSVRFKEdBQl9D
VEwsIGdhYl9jdGwgfCBHQUJfQ1RMX0NPTlRfQUZURVJfUEFHRUZBVUxUKTsKKwlnYWJfY3RsID0g
aW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHQUJfQ1RMKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUo
dW5jb3JlLAorCQkJICAgR0FCX0NUTCwKKwkJCSAgIGdhYl9jdGwgfCBHQUJfQ1RMX0NPTlRfQUZU
RVJfUEFHRUZBVUxUKTsKIAotCWVjb2NoayA9IEk5MTVfUkVBRChHQU1fRUNPQ0hLKTsKLQlJOTE1
X1dSSVRFKEdBTV9FQ09DSEssIGVjb2NoayB8IEVDT0NIS19TTkJfQklUIHwgRUNPQ0hLX1BQR1RU
X0NBQ0hFNjRCKTsKKwllY29jaGsgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdBTV9FQ09D
SEspOworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkgICBHQU1fRUNPQ0hLLAorCQkJ
ICAgZWNvY2hrIHwgRUNPQ0hLX1NOQl9CSVQgfCBFQ09DSEtfUFBHVFRfQ0FDSEU2NEIpOwogCi0J
aWYgKEhBU19QUEdUVChkZXZfcHJpdikpIC8qIG1heSBiZSBkaXNhYmxlZCBmb3IgVlQtZCAqLwot
CQlJOTE1X1dSSVRFKEdGWF9NT0RFLCBfTUFTS0VEX0JJVF9FTkFCTEUoR0ZYX1BQR1RUX0VOQUJM
RSkpOworCWlmIChIQVNfUFBHVFQodW5jb3JlX3RvX2k5MTUodW5jb3JlKSkpIC8qIG1heSBiZSBk
aXNhYmxlZCBmb3IgVlQtZCAqLworCQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAorCQkJCSAg
IEdGWF9NT0RFLAorCQkJCSAgIF9NQVNLRURfQklUX0VOQUJMRShHRlhfUFBHVFRfRU5BQkxFKSk7
CiB9CiAKIC8qIFBQR1RUIHN1cHBvcnQgZm9yIFNhbmR5YmRyaWdlL0dlbjYgYW5kIGxhdGVyICov
CkBAIC0yMTg3LDIxICsyMjAwLDMyIEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wcGd0dCAqZ2VuNl9w
cGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJcmV0dXJuIEVSUl9Q
VFIoZXJyKTsKIH0KIAotc3RhdGljIHZvaWQgZ3R0X3dyaXRlX3dvcmthcm91bmRzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyB2b2lkIGd0dF93cml0ZV93b3JrYXJv
dW5kcyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogeworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gZ3QtPmk5MTU7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29y
ZTsKKwogCS8qIFRoaXMgZnVuY3Rpb24gaXMgZm9yIGd0dCByZWxhdGVkIHdvcmthcm91bmRzLiBU
aGlzIGZ1bmN0aW9uIGlzCiAJICogY2FsbGVkIG9uIGRyaXZlciBsb2FkIGFuZCBhZnRlciBhIEdQ
VSByZXNldCwgc28geW91IGNhbiBwbGFjZQogCSAqIHdvcmthcm91bmRzIGhlcmUgZXZlbiBpZiB0
aGV5IGdldCBvdmVyd3JpdHRlbiBieSBHUFUgcmVzZXQuCiAJICovCiAJLyogV2FJbmNyZWFzZURl
ZmF1bHRUTEJFbnRyaWVzOmNodixiZHcsc2tsLGJ4dCxrYmwsZ2xrLGNmbCxjbmwsaWNsICovCi0J
aWYgKElTX0JST0FEV0VMTChkZXZfcHJpdikpCi0JCUk5MTVfV1JJVEUoR0VOOF9MM19MUkFfMV9H
UEdQVSwgR0VOOF9MM19MUkFfMV9HUEdQVV9ERUZBVUxUX1ZBTFVFX0JEVyk7Ci0JZWxzZSBpZiAo
SVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpCi0JCUk5MTVfV1JJVEUoR0VOOF9MM19MUkFfMV9HUEdQ
VSwgR0VOOF9MM19MUkFfMV9HUEdQVV9ERUZBVUxUX1ZBTFVFX0NIVik7Ci0JZWxzZSBpZiAoSVNf
R0VOOV9MUChkZXZfcHJpdikpCi0JCUk5MTVfV1JJVEUoR0VOOF9MM19MUkFfMV9HUEdQVSwgR0VO
OV9MM19MUkFfMV9HUEdQVV9ERUZBVUxUX1ZBTFVFX0JYVCk7Ci0JZWxzZSBpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSA5KQotCQlJOTE1X1dSSVRFKEdFTjhfTDNfTFJBXzFfR1BHUFUsIEdFTjlf
TDNfTFJBXzFfR1BHUFVfREVGQVVMVF9WQUxVRV9TS0wpOworCWlmIChJU19CUk9BRFdFTEwoaTkx
NSkpCisJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkJICAgR0VOOF9MM19MUkFfMV9H
UEdQVSwKKwkJCQkgICBHRU44X0wzX0xSQV8xX0dQR1BVX0RFRkFVTFRfVkFMVUVfQkRXKTsKKwll
bHNlIGlmIChJU19DSEVSUllWSUVXKGk5MTUpKQorCQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3Jl
LAorCQkJCSAgIEdFTjhfTDNfTFJBXzFfR1BHUFUsCisJCQkJICAgR0VOOF9MM19MUkFfMV9HUEdQ
VV9ERUZBVUxUX1ZBTFVFX0NIVik7CisJZWxzZSBpZiAoSVNfR0VOOV9MUChpOTE1KSkKKwkJaW50
ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKKwkJCQkgICBHRU44X0wzX0xSQV8xX0dQR1BVLAorCQkJ
CSAgIEdFTjlfTDNfTFJBXzFfR1BHUFVfREVGQVVMVF9WQUxVRV9CWFQpOworCWVsc2UgaWYgKElO
VEVMX0dFTihpOTE1KSA+PSA5KQorCQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAorCQkJCSAg
IEdFTjhfTDNfTFJBXzFfR1BHUFUsCisJCQkJICAgR0VOOV9MM19MUkFfMV9HUEdQVV9ERUZBVUxU
X1ZBTFVFX1NLTCk7CiAKIAkvKgogCSAqIFRvIHN1cHBvcnQgNjRLIFBURXMgd2UgbmVlZCB0byBm
aXJzdCBlbmFibGUgdGhlIHVzZSBvZiB0aGUKQEAgLTIyMTQsMjEgKzIyMzgsMjUgQEAgc3RhdGlj
IHZvaWQgZ3R0X3dyaXRlX3dvcmthcm91bmRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIAkgKiAzMksgcGFnZXMsIGJ1dCB3ZSBkb24ndCBjdXJyZW50bHkgaGF2ZSBhbnkgc3Vw
cG9ydCBmb3IgaXQgaW4gb3VyCiAJICogZHJpdmVyLgogCSAqLwotCWlmIChIQVNfUEFHRV9TSVpF
UyhkZXZfcHJpdiwgSTkxNV9HVFRfUEFHRV9TSVpFXzY0SykgJiYKLQkgICAgSU5URUxfR0VOKGRl
dl9wcml2KSA8PSAxMCkKLQkJSTkxNV9XUklURShHRU44X0dBTVdfRUNPX0RFVl9SV19JQSwKLQkJ
CSAgIEk5MTVfUkVBRChHRU44X0dBTVdfRUNPX0RFVl9SV19JQSkgfAotCQkJICAgR0FNV19FQ09f
RU5BQkxFXzY0S19JUFNfRklFTEQpOworCWlmIChIQVNfUEFHRV9TSVpFUyhpOTE1LCBJOTE1X0dU
VF9QQUdFX1NJWkVfNjRLKSAmJgorCSAgICBJTlRFTF9HRU4oaTkxNSkgPD0gMTApCisJCWludGVs
X3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkJICAgR0VOOF9HQU1XX0VDT19ERVZfUldfSUEsCisJ
CQkJICAgaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLAorCQkJCQkJICAgICBHRU44X0dBTVdfRUNP
X0RFVl9SV19JQSkgfAorCQkJCSAgIEdBTVdfRUNPX0VOQUJMRV82NEtfSVBTX0ZJRUxEKTsKIH0K
IAotaW50IGk5MTVfcHBndHRfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCitpbnQgaTkxNV9wcGd0dF9pbml0X2h3KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7Ci0JZ3R0
X3dyaXRlX3dvcmthcm91bmRzKGRldl9wcml2KTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IGd0LT5pOTE1OworCisJZ3R0X3dyaXRlX3dvcmthcm91bmRzKGd0KTsKIAotCWlmIChJ
U19HRU4oZGV2X3ByaXYsIDYpKQotCQlnZW42X3BwZ3R0X2VuYWJsZShkZXZfcHJpdik7Ci0JZWxz
ZSBpZiAoSVNfR0VOKGRldl9wcml2LCA3KSkKLQkJZ2VuN19wcGd0dF9lbmFibGUoZGV2X3ByaXYp
OworCWlmIChJU19HRU4oaTkxNSwgNikpCisJCWdlbjZfcHBndHRfZW5hYmxlKGd0KTsKKwllbHNl
IGlmIChJU19HRU4oaTkxNSwgNykpCisJCWdlbjdfcHBndHRfZW5hYmxlKGd0KTsKIAogCXJldHVy
biAwOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaAppbmRleCA2M2ZhMzU3YzY5ZGUu
LmY4YzA2Mjg4YmU2NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKQEAgLTY0LDYg
KzY0LDcgQEAKIHN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGU7CiBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdDsKIHN0cnVjdCBpOTE1X3ZtYTsKK3N0cnVjdCBpbnRlbF9ndDsKIAogdHlwZWRl
ZiB1MzIgZ2VuNl9wdGVfdDsKIHR5cGVkZWYgdTY0IGdlbjhfcHRlX3Q7CkBAIC02NDcsNyArNjQ4
LDcgQEAgdm9pZCBpOTE1X2dndHRfZGlzYWJsZV9ndWMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpOwogaW50IGk5MTVfZ2VtX2luaXRfZ2d0dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpOwogdm9pZCBpOTE1X2dndHRfY2xlYW51cF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpOwogCi1pbnQgaTkxNV9wcGd0dF9pbml0X2h3KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdik7CitpbnQgaTkxNV9wcGd0dF9pbml0X2h3KHN0cnVjdCBpbnRl
bF9ndCAqZ3QpOwogCiBzdHJ1Y3QgaTkxNV9wcGd0dCAqaTkxNV9wcGd0dF9jcmVhdGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
