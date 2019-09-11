Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C001AFCDA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 14:31:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 606C96EAE3;
	Wed, 11 Sep 2019 12:31:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB456EAE3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 12:31:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18451162-1500050 for multiple; Wed, 11 Sep 2019 13:31:00 +0100
MIME-Version: 1.0
To: Martin Peres <martin.peres@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <fe0ef535-d4bb-c118-26ca-20b6f55b61ca@linux.intel.com>
References: <20190911114655.9254-1-chris@chris-wilson.co.uk>
 <fe0ef535-d4bb-c118-26ca-20b6f55b61ca@linux.intel.com>
Message-ID: <156820505833.2643.5686301319933790818@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Sep 2019 13:30:58 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Squeeze iommu status into
 debugfs/i915_capabilities
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXJ0aW4gUGVyZXMgKDIwMTktMDktMTEgMTM6MTk6MDYpCj4gCj4gCj4gT24gMTEv
MDkvMjAxOSAxNDo0NiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gVGhlcmUncyBubyBlYXN5IHdh
eSBvZiBjaGVja2luZyB3aGV0aGVyIGlvbW11IGlzIGVuYWJsZWQgZm9yIHRoZSBHUFUKPiA+ICh5
b3UgY2FuIGdyZXAgZG1lc2cgaWYgeW91IGtub3cgdGhlIGRldmljZSwgb3IgeW91IGNhbiBncmVw
Cj4gPiBpOTE1X2dwdV9pbmZvIGlmIHRoYXQncyBhdmFpbGFibGUpLiBXZSBkbyBoYXZlIGEgY2Vu
dHJhbAo+ID4gaTkxNV9jYXBhYmlsaXRpZXMgd2l0aCB0aGUgaW50ZW50IG9mIGxpc3Rpbmcgc3Vj
aCBwZXJ0aW5lbnQgaW5mb3JtYXRpb24sCj4gPiBzbyBhZGQgdGhlIGlvbW11IHN0YXR1cy4KPiA+
IAo+ID4gU3VnZ2VzdGVkLWJ5OiBNYXJ0aW4gUGVyZXMgPG1hcnRpbi5wZXJlc0BsaW51eC5pbnRl
bC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiA+IENjOiBNYXJ0aW4gUGVyZXMgPG1hcnRpbi5wZXJlc0BsaW51eC5pbnRlbC5j
b20+Cj4gPiBDYzogVG9taSBTYXJ2ZWxhIDx0b21pLnAuc2FydmVsYUBpbnRlbC5jb20+Cj4gPiBD
YzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDcgKysrKysrKwo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMKPiA+IGluZGV4IDcwODg1NWUwNTFiNS4uZTU4MzUzMzdmMDIyIDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gPiBAQCAtNjEsMTEgKzYxLDE4
IEBAIHN0YXRpYyBpbnQgaTkxNV9jYXBhYmlsaXRpZXMoc3RydWN0IHNlcV9maWxlICptLCB2b2lk
ICpkYXRhKQo+ID4gICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gbm9k
ZV90b19pOTE1KG0tPnByaXZhdGUpOwo+ID4gICAgICAgY29uc3Qgc3RydWN0IGludGVsX2Rldmlj
ZV9pbmZvICppbmZvID0gSU5URUxfSU5GTyhkZXZfcHJpdik7Cj4gPiAgICAgICBzdHJ1Y3QgZHJt
X3ByaW50ZXIgcCA9IGRybV9zZXFfZmlsZV9wcmludGVyKG0pOwo+ID4gKyAgICAgY29uc3QgY2hh
ciAqbXNnOwo+ID4gIAo+ID4gICAgICAgc2VxX3ByaW50ZihtLCAiZ2VuOiAlZFxuIiwgSU5URUxf
R0VOKGRldl9wcml2KSk7Cj4gPiAgICAgICBzZXFfcHJpbnRmKG0sICJwbGF0Zm9ybTogJXNcbiIs
IGludGVsX3BsYXRmb3JtX25hbWUoaW5mby0+cGxhdGZvcm0pKTsKPiA+ICAgICAgIHNlcV9wcmlu
dGYobSwgInBjaDogJWRcbiIsIElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSk7Cj4gPiAgCj4gPiAr
ICAgICBtc2cgPSAibi9hIjsKPiAKPiBIZXJlLCAibi9hIiByZWFsbHkgbWVhbnMgImtlcm5lbCBu
b3QgY29tcGlsZWQgd2l0aCBJT01NVSBzdXBwb3J0Ii4KPiBTaG91bGQgd2UgZmluZCBhIHdvcmRp
bmcgYmV0dGVyIGV4cGxhaW5pbmcgdGhpcyB0byB1c2Vycz8gT3IgYXJlIHdlCj4gZ29pbmcgdG8g
dGVsbCB1c2VycyB0byBjaGVjayB0aGVpciBkbWVzZyBmb3IgSU9NTVUgbWVzc2FnZXMgYW5kIGlm
IHRoZXJlCj4gYXJlIG5vbmUsIGl0IG1lYW5zIGVpdGhlciB0aGUga2VybmVsIGhhcyBub3QgYmVl
biBjb21waWxlZCB3aXRoIHN1cHBvcnQKPiBmb3IgaXQsIG9yIGFuIG9wdGlvbiBuZWVkcyB0byBi
ZSBlbmFibGVkIGluIHRoZSBiaW9zLCBvciB0aGUgcGxhdGZvcm0KPiBsYWNrcyBzdXBwb3J0PwoK
VXNlcnM/IFRoaXMgaXMgZGVidWdmcywgd2Ugc2hvdWxkIG5vdCBiZSBoYXZpbmcgdXNlcnMhIDop
ClNvIHdoYXRldmVyIGlzIGNvbnZlbmllbnQsIGp1c3QgYSBzdHJpbmcgaXMgc2xpZ2h0bHkgbmlj
ZXIgZm9yIGh1bWFucwp0aGFuIGhhdmluZyAtMSwgMCwgMS4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
