Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCA658E3E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 01:06:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE566E81D;
	Thu, 27 Jun 2019 23:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A90476E81D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 23:06:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17050595-1500050 for multiple; Fri, 28 Jun 2019 00:06:01 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-7-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-7-matthew.auld@intel.com>
Message-ID: <156167675881.21507.3081862758292622020@skylake-alporthouse-com>
Date: Fri, 28 Jun 2019 00:05:58 +0100
Subject: Re: [Intel-gfx] [PATCH v2 06/37] drm/i915: Add memory region
 information to device_info
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTY6MDIpCj4gRnJvbTogQWJkaWVs
IEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+IAo+IEV4cG9zZXMg
YXZhaWxhYmxlIHJlZ2lvbnMgZm9yIHRoZSBwbGF0Zm9ybS4gU2hhcmVkIG1lbW9yeSB3aWxsCj4g
YWx3YXlzIGJlIGF2YWlsYWJsZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFudWxndWUg
PGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgMiArKwo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICAgfCAyOSArKysrKysrKysrKysrKy0tLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggICAgICB8ICAxICsKPiAg
Li4uL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgIHwgIDIgKysKPiAg
NCBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGluZGV4IDk3ZDAyYjMyYTIwOC4uODM4YTc5NmQ5YzU1IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gQEAgLTIyODgsNiArMjI4OCw4IEBAIElTX1NV
QlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAKPiAgI2Rl
ZmluZSBIQVNfSVBDKGRldl9wcml2KSAgICAgICAgICAgICAgIChJTlRFTF9JTkZPKGRldl9wcml2
KS0+ZGlzcGxheS5oYXNfaXBjKQo+ICAKPiArI2RlZmluZSBIQVNfUkVHSU9OKGk5MTUsIGkpIChJ
TlRFTF9JTkZPKGk5MTUpLT5tZW1vcnlfcmVnaW9ucyAmIChpKSkKPiArCj4gIC8qCj4gICAqIEZv
ciBub3csIGFueXRoaW5nIHdpdGggYSBHdUMgcmVxdWlyZXMgdUNvZGUgbG9hZGluZywgYW5kIHRo
ZW4gc3VwcG9ydHMKPiAgICogY29tbWFuZCBzdWJtaXNzaW9uIG9uY2UgbG9hZGVkLiBCdXQgdGhl
c2UgYXJlIGxvZ2ljYWxseSBpbmRlcGVuZGVudAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+IGlu
ZGV4IDk0YjU4OGUwYTFkZC4uYzUxMzUzMmI4ZGE3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bj
aS5jCj4gQEAgLTE0NCw2ICsxNDQsOSBAQAo+ICAjZGVmaW5lIEdFTl9ERUZBVUxUX1BBR0VfU0la
RVMgXAo+ICAgICAgICAgLnBhZ2Vfc2l6ZXMgPSBJOTE1X0dUVF9QQUdFX1NJWkVfNEsKPiAgCj4g
KyNkZWZpbmUgR0VOX0RFRkFVTFRfUkVHSU9OUyBcCj4gKyAgICAgICAubWVtb3J5X3JlZ2lvbnMg
PSBSRUdJT05fU01FTSB8IFJFR0lPTl9TVE9MRU4KPiArCj4gICNkZWZpbmUgSTgzMF9GRUFUVVJF
UyBcCj4gICAgICAgICBHRU4oMiksIFwKPiAgICAgICAgIC5pc19tb2JpbGUgPSAxLCBcCj4gQEAg
LTE2MSw3ICsxNjQsOCBAQAo+ICAgICAgICAgSTlYWF9QSVBFX09GRlNFVFMsIFwKPiAgICAgICAg
IEk5WFhfQ1VSU09SX09GRlNFVFMsIFwKPiAgICAgICAgIEk5WFhfQ09MT1JTLCBcCj4gLSAgICAg
ICBHRU5fREVGQVVMVF9QQUdFX1NJWkVTCj4gKyAgICAgICBHRU5fREVGQVVMVF9QQUdFX1NJWkVT
LCBcCj4gKyAgICAgICBHRU5fREVGQVVMVF9SRUdJT05TCj4gIAo+ICAjZGVmaW5lIEk4NDVfRkVB
VFVSRVMgXAo+ICAgICAgICAgR0VOKDIpLCBcCj4gQEAgLTE3OCw3ICsxODIsOCBAQAo+ICAgICAg
ICAgSTg0NV9QSVBFX09GRlNFVFMsIFwKPiAgICAgICAgIEk4NDVfQ1VSU09SX09GRlNFVFMsIFwK
PiAgICAgICAgIEk5WFhfQ09MT1JTLCBcCj4gLSAgICAgICBHRU5fREVGQVVMVF9QQUdFX1NJWkVT
Cj4gKyAgICAgICBHRU5fREVGQVVMVF9QQUdFX1NJWkVTLCBcCj4gKyAgICAgICBHRU5fREVGQVVM
VF9SRUdJT05TCj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGlu
dGVsX2k4MzBfaW5mbyA9IHsKPiAgICAgICAgIEk4MzBfRkVBVFVSRVMsCj4gQEAgLTIxMiw3ICsy
MTcsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX2k4NjVn
X2luZm8gPSB7Cj4gICAgICAgICBJOVhYX1BJUEVfT0ZGU0VUUywgXAo+ICAgICAgICAgSTlYWF9D
VVJTT1JfT0ZGU0VUUywgXAo+ICAgICAgICAgSTlYWF9DT0xPUlMsIFwKPiAtICAgICAgIEdFTl9E
RUZBVUxUX1BBR0VfU0laRVMKPiArICAgICAgIEdFTl9ERUZBVUxUX1BBR0VfU0laRVMsIFwKPiAr
ICAgICAgIEdFTl9ERUZBVUxUX1JFR0lPTlMKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfZGV2aWNlX2luZm8gaW50ZWxfaTkxNWdfaW5mbyA9IHsKPiAgICAgICAgIEdFTjNfRkVBVFVS
RVMsCj4gQEAgLTI5Nyw3ICszMDMsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2Rldmlj
ZV9pbmZvIGludGVsX3BpbmV2aWV3X21faW5mbyA9IHsKPiAgICAgICAgIEk5WFhfUElQRV9PRkZT
RVRTLCBcCj4gICAgICAgICBJOVhYX0NVUlNPUl9PRkZTRVRTLCBcCj4gICAgICAgICBJOTY1X0NP
TE9SUywgXAo+IC0gICAgICAgR0VOX0RFRkFVTFRfUEFHRV9TSVpFUwo+ICsgICAgICAgR0VOX0RF
RkFVTFRfUEFHRV9TSVpFUywgXAo+ICsgICAgICAgR0VOX0RFRkFVTFRfUkVHSU9OUwo+ICAKPiAg
c3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9pOTY1Z19pbmZvID0g
ewo+ICAgICAgICAgR0VONF9GRUFUVVJFUywKPiBAQCAtMzQ3LDcgKzM1NCw4IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfZ200NV9pbmZvID0gewo+ICAgICAg
ICAgSTlYWF9QSVBFX09GRlNFVFMsIFwKPiAgICAgICAgIEk5WFhfQ1VSU09SX09GRlNFVFMsIFwK
PiAgICAgICAgIElMS19DT0xPUlMsIFwKPiAtICAgICAgIEdFTl9ERUZBVUxUX1BBR0VfU0laRVMK
PiArICAgICAgIEdFTl9ERUZBVUxUX1BBR0VfU0laRVMsIFwKPiArICAgICAgIEdFTl9ERUZBVUxU
X1JFR0lPTlMKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50
ZWxfaXJvbmxha2VfZF9pbmZvID0gewo+ICAgICAgICAgR0VONV9GRUFUVVJFUywKPiBAQCAtMzc3
LDcgKzM4NSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxf
aXJvbmxha2VfbV9pbmZvID0gewo+ICAgICAgICAgSTlYWF9QSVBFX09GRlNFVFMsIFwKPiAgICAg
ICAgIEk5WFhfQ1VSU09SX09GRlNFVFMsIFwKPiAgICAgICAgIElMS19DT0xPUlMsIFwKPiAtICAg
ICAgIEdFTl9ERUZBVUxUX1BBR0VfU0laRVMKPiArICAgICAgIEdFTl9ERUZBVUxUX1BBR0VfU0la
RVMsIFwKPiArICAgICAgIEdFTl9ERUZBVUxUX1JFR0lPTlMKPiAgCj4gICNkZWZpbmUgU05CX0Rf
UExBVEZPUk0gXAo+ICAgICAgICAgR0VONl9GRUFUVVJFUywgXAo+IEBAIC00MjUsNyArNDM0LDgg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9zYW5keWJyaWRn
ZV9tX2d0Ml9pbmZvID0gewo+ICAgICAgICAgSVZCX1BJUEVfT0ZGU0VUUywgXAo+ICAgICAgICAg
SVZCX0NVUlNPUl9PRkZTRVRTLCBcCj4gICAgICAgICBJVkJfQ09MT1JTLCBcCj4gLSAgICAgICBH
RU5fREVGQVVMVF9QQUdFX1NJWkVTCj4gKyAgICAgICBHRU5fREVGQVVMVF9QQUdFX1NJWkVTLCBc
Cj4gKyAgICAgICBHRU5fREVGQVVMVF9SRUdJT05TCj4gIAo+ICAjZGVmaW5lIElWQl9EX1BMQVRG
T1JNIFwKPiAgICAgICAgIEdFTjdfRkVBVFVSRVMsIFwKPiBAQCAtNDg2LDYgKzQ5Niw3IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfdmFsbGV5dmlld19pbmZv
ID0gewo+ICAgICAgICAgSTlYWF9DVVJTT1JfT0ZGU0VUUywKPiAgICAgICAgIEk5NjVfQ09MT1JT
LAo+ICAgICAgICAgR0VOX0RFRkFVTFRfUEFHRV9TSVpFUywKPiArICAgICAgIEdFTl9ERUZBVUxU
X1JFR0lPTlMsCj4gIH07Cj4gIAo+ICAjZGVmaW5lIEc3NV9GRUFUVVJFUyAgXAo+IEBAIC01ODIs
NiArNTkzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9j
aGVycnl2aWV3X2luZm8gPSB7Cj4gICAgICAgICBDSFZfQ1VSU09SX09GRlNFVFMsCj4gICAgICAg
ICBDSFZfQ09MT1JTLAo+ICAgICAgICAgR0VOX0RFRkFVTFRfUEFHRV9TSVpFUywKPiArICAgICAg
IEdFTl9ERUZBVUxUX1JFR0lPTlMsCj4gIH07Cj4gIAo+ICAjZGVmaW5lIEdFTjlfREVGQVVMVF9Q
QUdFX1NJWkVTIFwKPiBAQCAtNjU3LDcgKzY2OSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfZGV2aWNlX2luZm8gaW50ZWxfc2t5bGFrZV9ndDRfaW5mbyA9IHsKPiAgICAgICAgIEhTV19Q
SVBFX09GRlNFVFMsIFwKPiAgICAgICAgIElWQl9DVVJTT1JfT0ZGU0VUUywgXAo+ICAgICAgICAg
SVZCX0NPTE9SUywgXAo+IC0gICAgICAgR0VOOV9ERUZBVUxUX1BBR0VfU0laRVMKPiArICAgICAg
IEdFTjlfREVGQVVMVF9QQUdFX1NJWkVTLCBcCj4gKyAgICAgICBHRU5fREVGQVVMVF9SRUdJT05T
Cj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX2Jyb3h0
b25faW5mbyA9IHsKPiAgICAgICAgIEdFTjlfTFBfRkVBVFVSRVMsCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCj4gaW5kZXggZGRhZmM4MTliZjMwLi42MzM2OWI2NTEx
MGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
aAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKPiBAQCAt
MTcwLDYgKzE3MCw3IEBAIHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyB7Cj4gICAgICAgICB9IGRp
c3BsYXk7Cj4gIAo+ICAgICAgICAgdTE2IGRkYl9zaXplOyAvKiBpbiBibG9ja3MgKi8KPiArICAg
ICAgIHUzMiBtZW1vcnlfcmVnaW9uczsKCldoeSBoZXJlPyBZb3UgYXJlIGluIGJldHdlZW4gdmFy
aW91cyBkaXNwbGF5IGVudGl0aWVzLCBqdXN0IGEgZmV3IGxpbmVzCmFib3ZlIHlvdSBoYXZlIHRo
ZSBwcGd0dCBhbmQgb2xkZXIgcGFnZSBzaXplcy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
