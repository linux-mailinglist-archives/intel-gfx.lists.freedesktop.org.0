Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0E758EE7
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 02:12:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A29A6E855;
	Fri, 28 Jun 2019 00:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B010E6E855
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 00:12:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17050914-1500050 for multiple; Fri, 28 Jun 2019 01:12:13 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-30-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-30-matthew.auld@intel.com>
Message-ID: <156168073108.21955.15115527257495727981@skylake-alporthouse-com>
Date: Fri, 28 Jun 2019 01:12:11 +0100
Subject: Re: [Intel-gfx] [PATCH v2 29/37] drm/i915: Introduce
 DRM_I915_GEM_MMAP_OFFSET
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTY6MjUpCj4gRnJvbTogQWJkaWVs
IEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+IAo+IEFkZCBhIG5l
dyBDUFUgbW1hcCBpbXBsZW1lbnRhdGlvbiB0aGF0IGFsbG93cyBtdWx0aXBsZSBmYXVsdCBoYW5k
bGVycwo+IHRoYXQgZGVwZW5kcyBvbiB0aGUgb2JqZWN0J3MgYmFja2luZyBwYWdlcy4KPiAKPiBO
b3RlIHRoYXQgd2UgbXVsdGlwbGV4IG1tYXBfZ3R0IGFuZCBtbWFwX29mZnNldCB0aHJvdWdoIHRo
ZSBzYW1lIGlvY3RsLAo+IGFuZCB1c2UgdGhlIHplcm8gZXh0ZW5kaW5nIGJlaGF2aW91ciBvZiBk
cm0gdG8gZGlmZmVyZW50aWF0ZSBiZXR3ZWVuCj4gdGhlbSwgd2hlbiB3ZSBpbnNwZWN0IHRoZSBm
bGFncy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1
ZUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBs
aW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9pb2N0bHMuaCAgICB8ICAyICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9tbWFuLmMgICAgICB8IDMwICsrKysrKysrKysrKysrKysrKwo+ICAuLi4vZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCAgfCAgMyArKwo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICAgfCAgMyArLQo+ICBpbmNsdWRlL3VhcGkvZHJt
L2k5MTVfZHJtLmggICAgICAgICAgICAgICAgICAgfCAzMSArKysrKysrKysrKysrKysrKysrCj4g
IDUgZmlsZXMgY2hhbmdlZCwgNjggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1faW9jdGxzLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1faW9jdGxzLmgKPiBpbmRleCBkZGM3ZjJh
NTJiM2UuLjVhYmQ1YjIxNzJmMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1faW9jdGxzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1faW9jdGxzLmgKPiBAQCAtMzAsNiArMzAsOCBAQCBpbnQgaTkxNV9nZW1fbW1hcF9pb2N0
bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAgICAgICAgICAgICAgICAg
ICAgICAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSk7Cj4gIGludCBpOTE1X2dlbV9tbWFwX2d0dF9p
b2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpOwo+ICtpbnQgaTkxNV9nZW1fbW1h
cF9vZmZzZXRfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYpOwo+
ICBpbnQgaTkxNV9nZW1fcHJlYWRfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAq
ZGF0YSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlKTsK
PiAgaW50IGk5MTVfZ2VtX3B3cml0ZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lk
ICpkYXRhLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+IGluZGV4
IDdiNDZmNDRkOWMyMC4uY2JmODllODBhOTdiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fbW1hbi5jCj4gQEAgLTUzNiwxMiArNTM2LDQyIEBAIGk5MTVfZ2VtX21tYXBf
Z3R0X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlKQo+ICB7Cj4gICAgICAgICBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX21tYXBfb2Zmc2V0ICphcmdzID0gZGF0YTsKPiArICAgICAgIHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkZXYpOwo+ICsKPiArICAgICAgIGlm
IChhcmdzLT5mbGFncyAmIEk5MTVfTU1BUF9PRkZTRVRfRkxBR1MpCj4gKyAgICAgICAgICAgICAg
IHJldHVybiBpOTE1X2dlbV9tbWFwX29mZnNldF9pb2N0bChkZXYsIGRhdGEsIGZpbGUpOwo+ICsK
PiArICAgICAgIGlmICghSEFTX01BUFBBQkxFX0FQRVJUVVJFKGk5MTUpKSB7Cj4gKyAgICAgICAg
ICAgICAgIERSTV9FUlJPUigiTm8gYXBlcnR1cmUsIGNhbm5vdCBtbWFwIHZpYSBsZWdhY3kgR1RU
XG4iKTsKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gKyAgICAgICB9Cj4gIAo+
ICAgICAgICAgcmV0dXJuIF9fYXNzaWduX2dlbV9vYmplY3RfbW1hcF9kYXRhKGZpbGUsIGFyZ3Mt
PmhhbmRsZSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJ
OTE1X01NQVBfVFlQRV9HVFQsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgJmFyZ3MtPm9mZnNldCk7Cj4gIH0KPiAgCj4gK2ludCBpOTE1X2dlbV9tbWFwX29m
ZnNldF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCgpUaGlzIHNlZW1z
IGhpZ2hseSByZWR1bmRhbnQgYW5kIG5vdCBjb3JyZWN0bHkgcGx1Z2dlZCBpbi4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
