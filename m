Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 864273C69F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 10:54:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82BED890BE;
	Tue, 11 Jun 2019 08:54:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B701F890BE
 for <Intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 08:54:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 01:54:22 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2019 01:54:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <20190607120838.20514-12-tvrtko.ursulin@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
 <20190607120838.20514-12-tvrtko.ursulin@linux.intel.com>
Date: Tue, 11 Jun 2019 11:57:21 +0300
Message-ID: <87wohsxzwu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 11/12] drm/i915: Remove I915_READ_NOTRACE
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

T24gRnJpLCAwNyBKdW4gMjAxOSwgVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPgo+IE9ubHkgYSBmZXcgY2FsbCBzaXRlcyByZW1haW4gd2hpY2ggaGF2ZSBi
ZWVuIGNvbnZlcnRlZCB0byB1bmNvcmUgbW1pbwo+IGFjY2Vzc29ycyBhbmQgc28gdGhlIG1hY3Jv
IGNhbiBiZSByZW1vdmVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2RlYnVnZnMu
YyAgfCAgNCArLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2Zpcm13YXJlLmMgfCAgNSAr
Ky0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgIHwgIDYgKystLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICB8ICAxIC0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wbXUuYyAgICAgfCAgOCArKysrLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZHAuYyAgICAgfCA0MyArKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9nbWJ1cy5jICB8IDExICsrKystLS0tCj4gIDcgZmls
ZXMgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKSwgMzUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d2dC9kZWJ1Z2ZzLmMKPiBpbmRleCA4YTk2MDZmOTFlNjguLjJmYjdiNzNiMjYwZCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZGVidWdmcy5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2RlYnVnZnMuYwo+IEBAIC01OCwxMiArNTgsMTIgQEAg
c3RhdGljIGludCBtbWlvX29mZnNldF9jb21wYXJlKHZvaWQgKnByaXYsCj4gIHN0YXRpYyBpbmxp
bmUgaW50IG1taW9fZGlmZl9oYW5kbGVyKHN0cnVjdCBpbnRlbF9ndnQgKmd2dCwKPiAgCQkJCSAg
ICB1MzIgb2Zmc2V0LCB2b2lkICpkYXRhKQo+ICB7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSBndnQtPmRldl9wcml2Owo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSBndnQtPmRldl9wcml2Owo+ICAJc3RydWN0IG1taW9fZGlmZl9wYXJhbSAqcGFyYW0g
PSBkYXRhOwo+ICAJc3RydWN0IGRpZmZfbW1pbyAqbm9kZTsKPiAgCXUzMiBwcmVnLCB2cmVnOwo+
ICAKPiAtCXByZWcgPSBJOTE1X1JFQURfTk9UUkFDRShfTU1JTyhvZmZzZXQpKTsKPiArCXByZWcg
PSBpbnRlbF91bmNvcmVfcmVhZF9ub3RyYWNlKCZpOTE1LT51bmNvcmUsIF9NTUlPKG9mZnNldCkp
Owo+ICAJdnJlZyA9IHZncHVfdnJlZyhwYXJhbS0+dmdwdSwgb2Zmc2V0KTsKPiAgCj4gIAlpZiAo
cHJlZyAhPSB2cmVnKSB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9m
aXJtd2FyZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2Zpcm13YXJlLmMKPiBpbmRleCA0
YWMxOGI0NDcyNDcuLjA0OTc3NWU4ZTM1MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndnQvZmlybXdhcmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9maXJt
d2FyZS5jCj4gQEAgLTY4LDkgKzY4LDEwIEBAIHN0YXRpYyBzdHJ1Y3QgYmluX2F0dHJpYnV0ZSBm
aXJtd2FyZV9hdHRyID0gewo+ICAKPiAgc3RhdGljIGludCBtbWlvX3NuYXBzaG90X2hhbmRsZXIo
c3RydWN0IGludGVsX2d2dCAqZ3Z0LCB1MzIgb2Zmc2V0LCB2b2lkICpkYXRhKQo+ICB7Cj4gLQlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBndnQtPmRldl9wcml2Owo+ICsJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndnQtPmRldl9wcml2Owo+ICAKPiAtCSoodTMy
ICopKGRhdGEgKyBvZmZzZXQpID0gSTkxNV9SRUFEX05PVFJBQ0UoX01NSU8ob2Zmc2V0KSk7Cj4g
KwkqKHUzMiAqKShkYXRhICsgb2Zmc2V0KSA9IGludGVsX3VuY29yZV9yZWFkX25vdHJhY2UoJmk5
MTUtPnVuY29yZSwKPiArCQkJCQkJCSAgICBfTU1JTyhvZmZzZXQpKTsKPiAgCXJldHVybiAwOwo+
ICB9Cj4gIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IGluZGV4IDFhZjY3NTFlMWIzNi4uODFm
ZjJjNzhmZDU1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gQEAgLTI3MDgsNyArMjcw
OCw3IEBAIHN0YXRpYyB2b2lkIHZsdl9yZXN0b3JlX2d1bml0X3MwaXhfc3RhdGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJSTkxNV9XUklURShWTFZfR1VOSVRfQ0xPQ0tf
R0FURTIsCXMtPmNsb2NrX2dhdGVfZGlzMik7Cj4gIH0KPiAgCj4gLXN0YXRpYyBpbnQgdmx2X3dh
aXRfZm9yX3B3X3N0YXR1cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gK3N0
YXRpYyBpbnQgdmx2X3dhaXRfZm9yX3B3X3N0YXR1cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwKPiAgCQkJCSAgdTMyIG1hc2ssIHUzMiB2YWwpCj4gIHsKPiAgCWk5MTVfcmVnX3QgcmVn
ID0gVkxWX0dUTENfUFdfU1RBVFVTOwo+IEBAIC0yNzIyLDcgKzI3MjIsOSBAQCBzdGF0aWMgaW50
IHZsdl93YWl0X2Zvcl9wd19zdGF0dXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAo+ICAJICogVHJhbnNpdGlvbmluZyBiZXR3ZWVuIFJDNiBzdGF0ZXMgc2hvdWxkIGJlIGF0IG1v
c3QgMm1zIChzZWUKPiAgCSAqIHZhbGxleXZpZXdfZW5hYmxlX3Jwcykgc28gdXNlIGEgM21zIHRp
bWVvdXQuCj4gIAkgKi8KPiAtCXJldCA9IHdhaXRfZm9yKCgocmVnX3ZhbHVlID0gSTkxNV9SRUFE
X05PVFJBQ0UocmVnKSkgJiBtYXNrKSA9PSB2YWwsIDMpOwo+ICsJcmV0ID0gd2FpdF9mb3IoKChy
ZWdfdmFsdWUgPQo+ICsJCQkgaW50ZWxfdW5jb3JlX3JlYWRfbm90cmFjZSgmaTkxNS0+dW5jb3Jl
LCByZWcpKSAmIG1hc2spCj4gKwkJICAgICAgID09IHZhbCwgMyk7Cj4gIAo+ICAJLyoganVzdCB0
cmFjZSB0aGUgZmluYWwgdmFsdWUgKi8KPiAgCXRyYWNlX2k5MTVfcmVnX3J3KGZhbHNlLCByZWcs
IHJlZ192YWx1ZSwgc2l6ZW9mKHJlZ192YWx1ZSksIHRydWUpOwo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAo+IGluZGV4IDFlYTJkNWY0MmU1Mi4uOWYwMjA4ZTQxMGVkIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oCj4gQEAgLTI4NTcsNyArMjg1Nyw2IEBAIGV4dGVybiB2b2lkIGludGVsX2Rp
c3BsYXlfcHJpbnRfZXJyb3Jfc3RhdGUoc3RydWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1ZiAq
ZSwKPiAgCj4gICNkZWZpbmUgSTkxNV9SRUFEKHJlZ19fKQkgX19JOTE1X1JFR19PUChyZWFkLCBk
ZXZfcHJpdiwgKHJlZ19fKSkKPiAgI2RlZmluZSBJOTE1X1dSSVRFKHJlZ19fLCB2YWxfXykgX19J
OTE1X1JFR19PUCh3cml0ZSwgZGV2X3ByaXYsIChyZWdfXyksICh2YWxfXykpCj4gLSNkZWZpbmUg
STkxNV9SRUFEX05PVFJBQ0UocmVnX18pCSBfX0k5MTVfUkVHX09QKHJlYWRfbm90cmFjZSwgZGV2
X3ByaXYsIChyZWdfXykpCj4gIAo+ICAjZGVmaW5lIFBPU1RJTkdfUkVBRChyZWdfXykJX19JOTE1
X1JFR19PUChwb3N0aW5nX3JlYWQsIGRldl9wcml2LCAocmVnX18pKQo+ICAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcG11LmMKPiBpbmRleCAxY2NkYTBlZTRmZjUuLmViOWMwZTBlNTQ1YyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wbXUuYwo+IEBAIC0yMjcsOSArMjI3LDExIEBAIGZyZXF1ZW5jeV9zYW1w
bGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1bnNpZ25lZCBpbnQgcGVyaW9k
X25zKQo+ICAJCWlmIChkZXZfcHJpdi0+Z3QuYXdha2UpIHsKPiAgCQkJaW50ZWxfd2FrZXJlZl90
IHdha2VyZWY7Cj4gIAo+IC0JCQl3aXRoX2ludGVsX3J1bnRpbWVfcG1faWZfaW5fdXNlKGRldl9w
cml2LCB3YWtlcmVmKQo+IC0JCQkJdmFsID0gaW50ZWxfZ2V0X2NhZ2YoZGV2X3ByaXYsCj4gLQkJ
CQkJCSAgICAgSTkxNV9SRUFEX05PVFJBQ0UoR0VONl9SUFNUQVQxKSk7Cj4gKwkJCXdpdGhfaW50
ZWxfcnVudGltZV9wbV9pZl9pbl91c2UoZGV2X3ByaXYsIHdha2VyZWYpIHsKPiArCQkJCXZhbCA9
IGludGVsX3VuY29yZV9yZWFkX25vdHJhY2UoJmRldl9wcml2LT51bmNvcmUsCj4gKwkJCQkJCQkJ
R0VONl9SUFNUQVQxKTsKPiArCQkJCXZhbCA9IGludGVsX2dldF9jYWdmKGRldl9wcml2LCB2YWwp
Owo+ICsJCQl9Cj4gIAkJfQo+ICAKPiAgCQlhZGRfc2FtcGxlX211bHQoJmRldl9wcml2LT5wbXUu
c2FtcGxlW19fSTkxNV9TQU1QTEVfRlJFUV9BQ1RdLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+
IGluZGV4IGIwOTlhOWRjMjhmZC4uMDg2MjY3OGU2OGI5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kcC5jCj4gQEAgLTEwODIsMTMgKzEwODIsMTMgQEAgaW50ZWxfZHBfY2hlY2tfZWRwKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gIHN0YXRpYyB1MzIKPiAgaW50ZWxfZHBfYXV4X3dhaXRf
ZG9uZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ICB7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKPiArCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7Cj4gIAlpOTE1X3JlZ190
IGNoX2N0bCA9IGludGVsX2RwLT5hdXhfY2hfY3RsX3JlZyhpbnRlbF9kcCk7Cj4gIAl1MzIgc3Rh
dHVzOwo+ICAJYm9vbCBkb25lOwo+ICAKPiAtI2RlZmluZSBDICgoKHN0YXR1cyA9IEk5MTVfUkVB
RF9OT1RSQUNFKGNoX2N0bCkpICYgRFBfQVVYX0NIX0NUTF9TRU5EX0JVU1kpID09IDApCj4gLQlk
b25lID0gd2FpdF9ldmVudF90aW1lb3V0KGRldl9wcml2LT5nbWJ1c193YWl0X3F1ZXVlLCBDLAo+
ICsjZGVmaW5lIEMgKCgoc3RhdHVzID0gaW50ZWxfdW5jb3JlX3JlYWRfbm90cmFjZSgmaTkxNS0+
dW5jb3JlLCBjaF9jdGwpKSAmIERQX0FVWF9DSF9DVExfU0VORF9CVVNZKSA9PSAwKQo+ICsJZG9u
ZSA9IHdhaXRfZXZlbnRfdGltZW91dChpOTE1LT5nbWJ1c193YWl0X3F1ZXVlLCBDLAo+ICAJCQkJ
ICBtc2Vjc190b19qaWZmaWVzX3RpbWVvdXQoMTApKTsKPiAgCj4gIAkvKiBqdXN0IHRyYWNlIHRo
ZSBmaW5hbCB2YWx1ZSAqLwo+IEBAIC0xMjIxLDggKzEyMjEsOSBAQCBpbnRlbF9kcF9hdXhfeGZl
cihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ICAJCSAgdTMyIGF1eF9zZW5kX2N0bF9mbGFn
cykKPiAgewo+ICAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQgPSBk
cF90b19kaWdfcG9ydChpbnRlbF9kcCk7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPQo+ICAJCQl0b19pOTE1
KGludGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKPiArCXN0cnVjdCBpbnRlbF91bmNvcmUg
KnVuY29yZSA9ICZpOTE1LT51bmNvcmU7Cj4gIAlpOTE1X3JlZ190IGNoX2N0bCwgY2hfZGF0YVs1
XTsKPiAgCXUzMiBhdXhfY2xvY2tfZGl2aWRlcjsKPiAgCWVudW0gaW50ZWxfZGlzcGxheV9wb3dl
cl9kb21haW4gYXV4X2RvbWFpbiA9Cj4gQEAgLTEyMzgsNyArMTIzOSw3IEBAIGludGVsX2RwX2F1
eF94ZmVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gIAlmb3IgKGkgPSAwOyBpIDwgQVJS
QVlfU0laRShjaF9kYXRhKTsgaSsrKQo+ICAJCWNoX2RhdGFbaV0gPSBpbnRlbF9kcC0+YXV4X2No
X2RhdGFfcmVnKGludGVsX2RwLCBpKTsKPiAgCj4gLQlhdXhfd2FrZXJlZiA9IGludGVsX2Rpc3Bs
YXlfcG93ZXJfZ2V0KGRldl9wcml2LCBhdXhfZG9tYWluKTsKPiArCWF1eF93YWtlcmVmID0gaW50
ZWxfZGlzcGxheV9wb3dlcl9nZXQoaTkxNSwgYXV4X2RvbWFpbik7Cj4gIAlwcHNfd2FrZXJlZiA9
IHBwc19sb2NrKGludGVsX2RwKTsKPiAgCj4gIAkvKgo+IEBAIC0xMjUzLDEzICsxMjU0LDEzIEBA
IGludGVsX2RwX2F1eF94ZmVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gIAkgKiBsb3dl
c3QgcG9zc2libGUgd2FrZXVwIGxhdGVuY3kgYW5kIHNvIHByZXZlbnQgdGhlIGNwdSBmcm9tIGdv
aW5nIGludG8KPiAgCSAqIGRlZXAgc2xlZXAgc3RhdGVzLgo+ICAJICovCj4gLQlwbV9xb3NfdXBk
YXRlX3JlcXVlc3QoJmRldl9wcml2LT5wbV9xb3MsIDApOwo+ICsJcG1fcW9zX3VwZGF0ZV9yZXF1
ZXN0KCZpOTE1LT5wbV9xb3MsIDApOwo+ICAKPiAgCWludGVsX2RwX2NoZWNrX2VkcChpbnRlbF9k
cCk7Cj4gIAo+ICAJLyogVHJ5IHRvIHdhaXQgZm9yIGFueSBwcmV2aW91cyBBVVggY2hhbm5lbCBh
Y3Rpdml0eSAqLwo+ICAJZm9yICh0cnkgPSAwOyB0cnkgPCAzOyB0cnkrKykgewo+IC0JCXN0YXR1
cyA9IEk5MTVfUkVBRF9OT1RSQUNFKGNoX2N0bCk7Cj4gKwkJc3RhdHVzID0gaW50ZWxfdW5jb3Jl
X3JlYWRfbm90cmFjZSh1bmNvcmUsIGNoX2N0bCk7Cj4gIAkJaWYgKChzdGF0dXMgJiBEUF9BVVhf
Q0hfQ1RMX1NFTkRfQlVTWSkgPT0gMCkKPiAgCQkJYnJlYWs7Cj4gIAkJbXNsZWVwKDEpOwo+IEBA
IC0xMjY5LDcgKzEyNzAsNyBAQCBpbnRlbF9kcF9hdXhfeGZlcihzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLAo+ICAKPiAgCWlmICh0cnkgPT0gMykgewo+ICAJCXN0YXRpYyB1MzIgbGFzdF9zdGF0
dXMgPSAtMTsKPiAtCQljb25zdCB1MzIgc3RhdHVzID0gSTkxNV9SRUFEKGNoX2N0bCk7Cj4gKwkJ
Y29uc3QgdTMyIHN0YXR1cyA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgY2hfY3RsKTsKPiAg
Cj4gIAkJaWYgKHN0YXR1cyAhPSBsYXN0X3N0YXR1cykgewo+ICAJCQlXQVJOKDEsICJkcF9hdXhf
Y2ggbm90IHN0YXJ0ZWQgc3RhdHVzIDB4JTA4eFxuIiwKPiBAQCAtMTI5OCwyMSArMTI5OSwyMyBA
QCBpbnRlbF9kcF9hdXhfeGZlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ICAJCWZvciAo
dHJ5ID0gMDsgdHJ5IDwgNTsgdHJ5KyspIHsKPiAgCQkJLyogTG9hZCB0aGUgc2VuZCBkYXRhIGlu
dG8gdGhlIGF1eCBjaGFubmVsIGRhdGEgcmVnaXN0ZXJzICovCj4gIAkJCWZvciAoaSA9IDA7IGkg
PCBzZW5kX2J5dGVzOyBpICs9IDQpCj4gLQkJCQlJOTE1X1dSSVRFKGNoX2RhdGFbaSA+PiAyXSwK
PiAtCQkJCQkgICBpbnRlbF9kcF9wYWNrX2F1eChzZW5kICsgaSwKPiAtCQkJCQkJCSAgICAgc2Vu
ZF9ieXRlcyAtIGkpKTsKPiArCQkJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCj4gKwkJCQkJ
CSAgIGNoX2RhdGFbaSA+PiAyXSwKPiArCQkJCQkJICAgaW50ZWxfZHBfcGFja19hdXgoc2VuZCAr
IGksCj4gKwkJCQkJCQkJICAgICBzZW5kX2J5dGVzIC0gaSkpOwo+ICAKPiAgCQkJLyogU2VuZCB0
aGUgY29tbWFuZCBhbmQgd2FpdCBmb3IgaXQgdG8gY29tcGxldGUgKi8KPiAtCQkJSTkxNV9XUklU
RShjaF9jdGwsIHNlbmRfY3RsKTsKPiArCQkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgY2hf
Y3RsLCBzZW5kX2N0bCk7Cj4gIAo+ICAJCQlzdGF0dXMgPSBpbnRlbF9kcF9hdXhfd2FpdF9kb25l
KGludGVsX2RwKTsKPiAgCj4gIAkJCS8qIENsZWFyIGRvbmUgc3RhdHVzIGFuZCBhbnkgZXJyb3Jz
ICovCj4gLQkJCUk5MTVfV1JJVEUoY2hfY3RsLAo+IC0JCQkJICAgc3RhdHVzIHwKPiAtCQkJCSAg
IERQX0FVWF9DSF9DVExfRE9ORSB8Cj4gLQkJCQkgICBEUF9BVVhfQ0hfQ1RMX1RJTUVfT1VUX0VS
Uk9SIHwKPiAtCQkJCSAgIERQX0FVWF9DSF9DVExfUkVDRUlWRV9FUlJPUik7Cj4gKwkJCWludGVs
X3VuY29yZV93cml0ZSh1bmNvcmUsCj4gKwkJCQkJICAgY2hfY3RsLAo+ICsJCQkJCSAgIHN0YXR1
cyB8Cj4gKwkJCQkJICAgRFBfQVVYX0NIX0NUTF9ET05FIHwKPiArCQkJCQkgICBEUF9BVVhfQ0hf
Q1RMX1RJTUVfT1VUX0VSUk9SIHwKPiArCQkJCQkgICBEUF9BVVhfQ0hfQ1RMX1JFQ0VJVkVfRVJS
T1IpOwo+ICAKPiAgCQkJLyogRFAgQ1RTIDEuMiBDb3JlIFJldiAxLjEsIDQuMi4xLjEgJiA0LjIu
MS4yCj4gIAkJCSAqICAgNDAwdXMgZGVsYXkgcmVxdWlyZWQgZm9yIGVycm9ycyBhbmQgdGltZW91
dHMKPiBAQCAtMTM3NSwxOCArMTM3OCwxOCBAQCBpbnRlbF9kcF9hdXhfeGZlcihzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLAo+ICAJCXJlY3ZfYnl0ZXMgPSByZWN2X3NpemU7Cj4gIAo+ICAJZm9y
IChpID0gMDsgaSA8IHJlY3ZfYnl0ZXM7IGkgKz0gNCkKPiAtCQlpbnRlbF9kcF91bnBhY2tfYXV4
KEk5MTVfUkVBRChjaF9kYXRhW2kgPj4gMl0pLAo+ICsJCWludGVsX2RwX3VucGFja19hdXgoaW50
ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBjaF9kYXRhW2kgPj4gMl0pLAo+ICAJCQkJICAgIHJlY3Yg
KyBpLCByZWN2X2J5dGVzIC0gaSk7Cj4gIAo+ICAJcmV0ID0gcmVjdl9ieXRlczsKPiAgb3V0Ogo+
IC0JcG1fcW9zX3VwZGF0ZV9yZXF1ZXN0KCZkZXZfcHJpdi0+cG1fcW9zLCBQTV9RT1NfREVGQVVM
VF9WQUxVRSk7Cj4gKwlwbV9xb3NfdXBkYXRlX3JlcXVlc3QoJmk5MTUtPnBtX3FvcywgUE1fUU9T
X0RFRkFVTFRfVkFMVUUpOwo+ICAKPiAgCWlmICh2ZGQpCj4gIAkJZWRwX3BhbmVsX3ZkZF9vZmYo
aW50ZWxfZHAsIGZhbHNlKTsKPiAgCj4gIAlwcHNfdW5sb2NrKGludGVsX2RwLCBwcHNfd2FrZXJl
Zik7Cj4gLQlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9hc3luYyhkZXZfcHJpdiwgYXV4X2RvbWFp
biwgYXV4X3dha2VyZWYpOwo+ICsJaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfYXN5bmMoaTkxNSwg
YXV4X2RvbWFpbiwgYXV4X3dha2VyZWYpOwo+ICAKPiAgCXJldHVybiByZXQ7Cj4gIH0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ21idXMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2dtYnVzLmMKPiBpbmRleCA1ZTRjNTQzZTgyZTguLmFhODhlNmU3Y2M2
NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9nbWJ1cy5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ21idXMuYwo+IEBAIC0xODYsMTQgKzE4Niwx
NSBAQCBzdGF0aWMgdm9pZCBieHRfZ21idXNfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKPiAgCj4gIHN0YXRpYyB1MzIgZ2V0X3Jlc2VydmVkKHN0cnVjdCBp
bnRlbF9nbWJ1cyAqYnVzKQo+ICB7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSBidXMtPmRldl9wcml2Owo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBi
dXMtPmRldl9wcml2Owo+ICsJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmk5MTUtPnVu
Y29yZTsKPiAgCXUzMiByZXNlcnZlZCA9IDA7Cj4gIAo+ICAJLyogT24gbW9zdCBjaGlwcywgdGhl
c2UgYml0cyBtdXN0IGJlIHByZXNlcnZlZCBpbiBzb2Z0d2FyZS4gKi8KPiAtCWlmICghSVNfSTgz
MChkZXZfcHJpdikgJiYgIUlTX0k4NDVHKGRldl9wcml2KSkKPiAtCQlyZXNlcnZlZCA9IEk5MTVf
UkVBRF9OT1RSQUNFKGJ1cy0+Z3Bpb19yZWcpICYKPiAtCQkJCQkgICAgIChHUElPX0RBVEFfUFVM
TFVQX0RJU0FCTEUgfAo+IC0JCQkJCSAgICAgIEdQSU9fQ0xPQ0tfUFVMTFVQX0RJU0FCTEUpOwo+
ICsJaWYgKCFJU19JODMwKGk5MTUpICYmICFJU19JODQ1RyhpOTE1KSkKPiArCQlyZXNlcnZlZCA9
IGludGVsX3VuY29yZV9yZWFkX25vdHJhY2UodW5jb3JlLCBidXMtPmdwaW9fcmVnKSAmCj4gKwkJ
CSAgIChHUElPX0RBVEFfUFVMTFVQX0RJU0FCTEUgfAo+ICsJCQkgICAgR1BJT19DTE9DS19QVUxM
VVBfRElTQUJMRSk7Cj4gIAo+ICAJcmV0dXJuIHJlc2VydmVkOwo+ICB9CgotLSAKSmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
