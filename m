Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56ABB88B0D
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 13:32:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C98A6E3A6;
	Sat, 10 Aug 2019 11:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95F46E395;
 Sat, 10 Aug 2019 11:32:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17952651-1500050 for multiple; Sat, 10 Aug 2019 12:32:40 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190809222643.23142-31-matthew.auld@intel.com>
References: <20190809222643.23142-1-matthew.auld@intel.com>
 <20190809222643.23142-31-matthew.auld@intel.com>
Message-ID: <156543675817.2301.5594154276878990406@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 10 Aug 2019 12:32:38 +0100
Subject: Re: [Intel-gfx] [PATCH v3 30/37] drm/i915: Introduce
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMDkgMjM6MjY6MzYpCj4gRnJvbTogQWJkaWVs
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
aTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICAgfCAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dldHBhcmFtLmMgICAgICAgICAgfCAgMSArCj4gIGluY2x1ZGUvdWFwaS9kcm0v
aTkxNV9kcm0uaCAgICAgICAgICAgICAgICAgICB8IDMxICsrKysrKysrKysrKysrKysrKysKPiAg
NiBmaWxlcyBjaGFuZ2VkLCA2OCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pb2N0bHMuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pb2N0bHMuaAo+IGluZGV4IGRkYzdmMmE1
MmIzZS4uNWFiZDViMjE3MmYyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9pb2N0bHMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9pb2N0bHMuaAo+IEBAIC0zMCw2ICszMCw4IEBAIGludCBpOTE1X2dlbV9tbWFwX2lvY3Rs
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlKTsKPiAgaW50IGk5MTVfZ2VtX21tYXBfZ3R0X2lv
Y3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSk7Cj4gK2ludCBpOTE1X2dlbV9tbWFw
X29mZnNldF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdik7Cgpt
bWFwX29mZnNldF9pb2N0bCBpcyByZXBsYWNpbmcgbW1hcF9ndHRfaW9jdGwsIHlvdSBkb24ndCBu
ZWVkIHRvIGtlZXAKdGhlIG9sZCBvbmUgcHVibGljLgoKKE9yIHZpY2UgdmVyc2EgYXBwYXJlbnRs
eS4pCgo+ICBpbnQgaTkxNV9nZW1fcHJlYWRfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
dm9pZCAqZGF0YSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9maWxlICpm
aWxlKTsKPiAgaW50IGk5MTVfZ2VtX3B3cml0ZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkICpkYXRhLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+
IGluZGV4IGQ0YTlkNTk4MDNhNy4uYTYyNjU3YTFmMDExIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gQEAgLTUzOCwxMiArNTM4LDQyIEBAIGk5MTVfZ2Vt
X21tYXBfZ3R0X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlKQo+ICB7Cj4gICAgICAg
ICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21tYXBfb2Zmc2V0ICphcmdzID0gZGF0YTsKPiArICAgICAg
IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkZXYpOwo+ICsKPiArICAg
ICAgIGlmIChhcmdzLT5mbGFncyAmIEk5MTVfTU1BUF9PRkZTRVRfRkxBR1MpCj4gKyAgICAgICAg
ICAgICAgIHJldHVybiBpOTE1X2dlbV9tbWFwX29mZnNldF9pb2N0bChkZXYsIGRhdGEsIGZpbGUp
Owo+ICsKPiArICAgICAgIGlmICghSEFTX01BUFBBQkxFX0FQRVJUVVJFKGk5MTUpKSB7Cj4gKyAg
ICAgICAgICAgICAgIERSTV9FUlJPUigiTm8gYXBlcnR1cmUsIGNhbm5vdCBtbWFwIHZpYSBsZWdh
Y3kgR1RUXG4iKTsKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gKyAgICAgICB9
Cj4gIAo+ICAgICAgICAgcmV0dXJuIF9fYXNzaWduX2dlbV9vYmplY3RfbW1hcF9kYXRhKGZpbGUs
IGFyZ3MtPmhhbmRsZSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBJOTE1X01NQVBfVFlQRV9HVFQsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgJmFyZ3MtPm9mZnNldCk7Cj4gIH0KPiAgCj4gK2ludCBpOTE1X2dlbV9t
bWFwX29mZnNldF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCj4gK3sK
PiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fbW1hcF9vZmZzZXQgKmFyZ3MgPSBkYXRhOwo+
ICsgICAgICAgZW51bSBpOTE1X21tYXBfdHlwZSB0eXBlOwo+ICsKPiArICAgICAgIGlmICgoYXJn
cy0+ZmxhZ3MgJiAoSTkxNV9NTUFQX09GRlNFVF9XQyB8IEk5MTVfTU1BUF9PRkZTRVRfV0IpKSAm
Jgo+ICsgICAgICAgICAgICFib290X2NwdV9oYXMoWDg2X0ZFQVRVUkVfUEFUKSkKPiArICAgICAg
ICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gKwo+ICsgICAgICAgaWYgKGFyZ3MtPmZsYWdzICYg
STkxNV9NTUFQX09GRlNFVF9XQykKPiArICAgICAgICAgICAgICAgdHlwZSA9IEk5MTVfTU1BUF9U
WVBFX09GRlNFVF9XQzsKPiArICAgICAgIGVsc2UgaWYgKGFyZ3MtPmZsYWdzICYgSTkxNV9NTUFQ
X09GRlNFVF9XQikKPiArICAgICAgICAgICAgICAgdHlwZSA9IEk5MTVfTU1BUF9UWVBFX09GRlNF
VF9XQjsKPiArICAgICAgIGVsc2UgaWYgKGFyZ3MtPmZsYWdzICYgSTkxNV9NTUFQX09GRlNFVF9V
QykKPiArICAgICAgICAgICAgICAgdHlwZSA9IEk5MTVfTU1BUF9UWVBFX09GRlNFVF9VQzsKPiAr
Cj4gKyAgICAgICByZXR1cm4gX19hc3NpZ25fZ2VtX29iamVjdF9tbWFwX2RhdGEoZmlsZSwgYXJn
cy0+aGFuZGxlLCB0eXBlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICZhcmdzLT5vZmZzZXQpOwo+ICt9Cj4gKwo+ICB2b2lkIGk5MTVfbW1hcF9vZmZzZXRf
b2JqZWN0X3JlbGVhc2Uoc3RydWN0IGtyZWYgKnJlZikKPiAgewo+ICAgICAgICAgc3RydWN0IGk5
MTVfbW1hcF9vZmZzZXQgKm1tbyA9IGNvbnRhaW5lcl9vZihyZWYsCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAo+IGluZGV4IGEzNzQ1Zjdk
NTdhMS4uNGVhNzhkM2M5MmE5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAo+IEBAIC02NCw2ICs2NCw5IEBAIHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0X29wcyB7Cj4gIAo+ICBlbnVtIGk5MTVfbW1hcF90eXBlIHsKPiAgICAg
ICAgIEk5MTVfTU1BUF9UWVBFX0dUVCA9IDAsCj4gKyAgICAgICBJOTE1X01NQVBfVFlQRV9PRkZT
RVRfV0MsCj4gKyAgICAgICBJOTE1X01NQVBfVFlQRV9PRkZTRVRfV0IsCj4gKyAgICAgICBJOTE1
X01NQVBfVFlQRV9PRkZTRVRfVUMsCj4gIH07Cj4gIAo+ICBzdHJ1Y3QgaTkxNV9tbWFwX29mZnNl
dCB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggZmNlZTA2ZWQzNDY5Li5jZjM5MDA5
MmM5MjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtMjcxMCw3ICsyNzEwLDcg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1faW9jdGxfZGVzYyBpOTE1X2lvY3Rsc1tdID0gewo+
ICAgICAgICAgRFJNX0lPQ1RMX0RFRl9EUlYoSTkxNV9HRU1fUFJFQUQsIGk5MTVfZ2VtX3ByZWFk
X2lvY3RsLCBEUk1fUkVOREVSX0FMTE9XKSwKPiAgICAgICAgIERSTV9JT0NUTF9ERUZfRFJWKEk5
MTVfR0VNX1BXUklURSwgaTkxNV9nZW1fcHdyaXRlX2lvY3RsLCBEUk1fUkVOREVSX0FMTE9XKSwK
PiAgICAgICAgIERSTV9JT0NUTF9ERUZfRFJWKEk5MTVfR0VNX01NQVAsIGk5MTVfZ2VtX21tYXBf
aW9jdGwsIERSTV9SRU5ERVJfQUxMT1cpLAo+IC0gICAgICAgRFJNX0lPQ1RMX0RFRl9EUlYoSTkx
NV9HRU1fTU1BUF9HVFQsIGk5MTVfZ2VtX21tYXBfZ3R0X2lvY3RsLCBEUk1fUkVOREVSX0FMTE9X
KSwKPiArICAgICAgIERSTV9JT0NUTF9ERUZfRFJWKEk5MTVfR0VNX01NQVBfT0ZGU0VULCBpOTE1
X2dlbV9tbWFwX2d0dF9pb2N0bCwgRFJNX1JFTkRFUl9BTExPVyksCj4gICAgICAgICBEUk1fSU9D
VExfREVGX0RSVihJOTE1X0dFTV9TRVRfRE9NQUlOLCBpOTE1X2dlbV9zZXRfZG9tYWluX2lvY3Rs
LCBEUk1fUkVOREVSX0FMTE9XKSwKPiAgICAgICAgIERSTV9JT0NUTF9ERUZfRFJWKEk5MTVfR0VN
X1NXX0ZJTklTSCwgaTkxNV9nZW1fc3dfZmluaXNoX2lvY3RsLCBEUk1fUkVOREVSX0FMTE9XKSwK
PiAgICAgICAgIERSTV9JT0NUTF9ERUZfRFJWKEk5MTVfR0VNX1NFVF9USUxJTkcsIGk5MTVfZ2Vt
X3NldF90aWxpbmdfaW9jdGwsIERSTV9SRU5ERVJfQUxMT1cpLAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dldHBhcmFtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dldHBhcmFtLmMKPiBpbmRleCA1ZDkxMDEzNzZhM2QuLjI4MTIwMjQ5YTI1MCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dldHBhcmFtLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dldHBhcmFtLmMKPiBAQCAtMTMwLDYgKzEzMCw3IEBAIGlu
dCBpOTE1X2dldHBhcmFtX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEs
Cj4gICAgICAgICBjYXNlIEk5MTVfUEFSQU1fSEFTX0VYRUNfQkFUQ0hfRklSU1Q6Cj4gICAgICAg
ICBjYXNlIEk5MTVfUEFSQU1fSEFTX0VYRUNfRkVOQ0VfQVJSQVk6Cj4gICAgICAgICBjYXNlIEk5
MTVfUEFSQU1fSEFTX0VYRUNfU1VCTUlUX0ZFTkNFOgo+ICsgICAgICAgY2FzZSBJOTE1X1BBUkFN
X01NQVBfT0ZGU0VUX1ZFUlNJT046CgpGdW5ueS4gWW91IGRvIHJlYWxpc2UgdGhpcyBpcyBqdXN0
IE1NQVBfR1RfVkVSU0lPTiBmb3IgdGhlIG5ldyBzdHJ1Y3QgKwpBQkkuCgo+ICAgICAgICAgICAg
ICAgICAvKiBGb3IgdGhlIHRpbWUgYmVpbmcgYWxsIG9mIHRoZXNlIGFyZSBhbHdheXMgdHJ1ZTsK
PiAgICAgICAgICAgICAgICAgICogaWYgc29tZSBzdXBwb3J0ZWQgaGFyZHdhcmUgZG9lcyBub3Qg
aGF2ZSBvbmUgb2YgdGhlc2UKPiAgICAgICAgICAgICAgICAgICogZmVhdHVyZXMgdGhpcyB2YWx1
ZSBuZWVkcyB0byBiZSBwcm92aWRlZCBmcm9tCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9k
cm0vaTkxNV9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+IGluZGV4IDQ2OWRj
NTEyY2NhMy4uZmI4NGFlZDEwODI1IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vaTkx
NV9kcm0uaAo+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+IEBAIC0zNTksNiAr
MzU5LDcgQEAgdHlwZWRlZiBzdHJ1Y3QgX2RybV9pOTE1X3NhcmVhIHsKPiAgI2RlZmluZSBEUk1f
STkxNV9RVUVSWSAgICAgICAgICAgICAgICAgMHgzOQo+ICAjZGVmaW5lIERSTV9JOTE1X0dFTV9W
TV9DUkVBVEUgICAgICAgICAweDNhCj4gICNkZWZpbmUgRFJNX0k5MTVfR0VNX1ZNX0RFU1RST1kg
ICAgICAgICAgICAgICAgMHgzYgo+ICsjZGVmaW5lIERSTV9JOTE1X0dFTV9NTUFQX09GRlNFVCAg
ICAgICBEUk1fSTkxNV9HRU1fTU1BUF9HVFQKPiAgLyogTXVzdCBiZSBrZXB0IGNvbXBhY3QgLS0g
bm8gaG9sZXMgKi8KPiAgCj4gICNkZWZpbmUgRFJNX0lPQ1RMX0k5MTVfSU5JVCAgICAgICAgICAg
IERSTV9JT1coIERSTV9DT01NQU5EX0JBU0UgKyBEUk1fSTkxNV9JTklULCBkcm1faTkxNV9pbml0
X3QpCj4gQEAgLTQyMSw2ICs0MjIsNyBAQCB0eXBlZGVmIHN0cnVjdCBfZHJtX2k5MTVfc2FyZWEg
ewo+ICAjZGVmaW5lIERSTV9JT0NUTF9JOTE1X1FVRVJZICAgICAgICAgICAgICAgICAgIERSTV9J
T1dSKERSTV9DT01NQU5EX0JBU0UgKyBEUk1fSTkxNV9RVUVSWSwgc3RydWN0IGRybV9pOTE1X3F1
ZXJ5KQo+ICAjZGVmaW5lIERSTV9JT0NUTF9JOTE1X0dFTV9WTV9DUkVBVEUgICBEUk1fSU9XUihE
Uk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVfR0VNX1ZNX0NSRUFURSwgc3RydWN0IGRybV9pOTE1
X2dlbV92bV9jb250cm9sKQo+ICAjZGVmaW5lIERSTV9JT0NUTF9JOTE1X0dFTV9WTV9ERVNUUk9Z
ICBEUk1fSU9XIChEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVfR0VNX1ZNX0RFU1RST1ksIHN0
cnVjdCBkcm1faTkxNV9nZW1fdm1fY29udHJvbCkKPiArI2RlZmluZSBEUk1fSU9DVExfSTkxNV9H
RU1fTU1BUF9PRkZTRVQgICAgICAgICBEUk1fSU9XUihEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5
MTVfR0VNX01NQVBfT0ZGU0VULCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21tYXBfb2Zmc2V0KQo+ICAK
PiAgLyogQWxsb3cgZHJpdmVycyB0byBzdWJtaXQgYmF0Y2hidWZmZXJzIGRpcmVjdGx5IHRvIGhh
cmR3YXJlLCByZWx5aW5nCj4gICAqIG9uIHRoZSBzZWN1cml0eSBtZWNoYW5pc21zIHByb3ZpZGVk
IGJ5IGhhcmR3YXJlLgo+IEBAIC02MTEsNiArNjEzLDEwIEBAIHR5cGVkZWYgc3RydWN0IGRybV9p
OTE1X2lycV93YWl0IHsKPiAgICogU2VlIEk5MTVfRVhFQ19GRU5DRV9PVVQgYW5kIEk5MTVfRVhF
Q19GRU5DRV9TVUJNSVQuCj4gICAqLwo+ICAjZGVmaW5lIEk5MTVfUEFSQU1fSEFTX0VYRUNfU1VC
TUlUX0ZFTkNFIDUzCj4gKwo+ICsvKiBNbWFwIG9mZnNldCBpb2N0bCAqLwo+ICsjZGVmaW5lIEk5
MTVfUEFSQU1fTU1BUF9PRkZTRVRfVkVSU0lPTiA1NAoKTm8sIGl0J3MganVzdCBNTUFQX0dUVF9W
RVJTSU9OLgoKPiAgLyogTXVzdCBiZSBrZXB0IGNvbXBhY3QgLS0gbm8gaG9sZXMgYW5kIHdlbGwg
ZG9jdW1lbnRlZCAqLwo+ICAKPiAgdHlwZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfZ2V0cGFyYW0gewo+
IEBAIC03ODYsNiArNzkyLDMxIEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fbW1hcF9ndHQgewo+ICAg
ICAgICAgX191NjQgb2Zmc2V0Owo+ICB9Owo+ICAKPiArc3RydWN0IGRybV9pOTE1X2dlbV9tbWFw
X29mZnNldCB7Cj4gKyAgICAgICAvKiogSGFuZGxlIGZvciB0aGUgb2JqZWN0IGJlaW5nIG1hcHBl
ZC4gKi8KPiArICAgICAgIF9fdTMyIGhhbmRsZTsKPiArICAgICAgIF9fdTMyIHBhZDsKPiArICAg
ICAgIC8qKgo+ICsgICAgICAgICogRmFrZSBvZmZzZXQgdG8gdXNlIGZvciBzdWJzZXF1ZW50IG1t
YXAgY2FsbAo+ICsgICAgICAgICoKPiArICAgICAgICAqIFRoaXMgaXMgYSBmaXhlZC1zaXplIHR5
cGUgZm9yIDMyLzY0IGNvbXBhdGliaWxpdHkuCj4gKyAgICAgICAgKi8KPiArICAgICAgIF9fdTY0
IG9mZnNldDsKPiArCj4gKyAgICAgICAvKioKPiArICAgICAgICAqIEZsYWdzIGZvciBleHRlbmRl
ZCBiZWhhdmlvdXIuCj4gKyAgICAgICAgKgo+ICsgICAgICAgICogSXQgaXMgbWFuZGF0b3J5IHRo
YXQgZWl0aGVyIG9uZSBvZiB0aGUgX1dDL19XQiBmbGFncwo+ICsgICAgICAgICogc2hvdWxkIGJl
IHBhc3NlZCBoZXJlLgo+ICsgICAgICAgICovCj4gKyAgICAgICBfX3U2NCBmbGFnczsKPiArI2Rl
ZmluZSBJOTE1X01NQVBfT0ZGU0VUX1dDICgxIDw8IDApCj4gKyNkZWZpbmUgSTkxNV9NTUFQX09G
RlNFVF9XQiAoMSA8PCAxKQo+ICsjZGVmaW5lIEk5MTVfTU1BUF9PRkZTRVRfVUMgKDEgPDwgMikK
PiArI2RlZmluZSBJOTE1X01NQVBfT0ZGU0VUX0ZMQUdTIFwKPiArICAgICAgIChJOTE1X01NQVBf
T0ZGU0VUX1dDIHwgSTkxNV9NTUFQX09GRlNFVF9XQiB8IEk5MTVfTU1BUF9PRkZTRVRfVUMpCgpZ
b3UgbWlzc2VkIHRoZSBleHRlbnNpb24gc3RydWN0LgoKPiArfTsKPiArCj4gIHN0cnVjdCBkcm1f
aTkxNV9nZW1fc2V0X2RvbWFpbiB7Cj4gICAgICAgICAvKiogSGFuZGxlIGZvciB0aGUgb2JqZWN0
ICovCj4gICAgICAgICBfX3UzMiBoYW5kbGU7Cj4gLS0gCj4gMi4yMC4xCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGlu
ZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
