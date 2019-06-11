Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7622F3C74D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 11:36:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCA7389187;
	Tue, 11 Jun 2019 09:36:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2C9D89187
 for <Intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 09:36:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16861250-1500050 for multiple; Tue, 11 Jun 2019 10:36:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
 <20190610155419.23723-9-tvrtko.ursulin@linux.intel.com>
 <156018341785.383.14827754445562949685@skylake-alporthouse-com>
 <1b9b317e-915c-5ffe-e904-cf281a84e972@intel.com>
 <d44bae42-9ccb-2135-7787-3f9efde94000@linux.intel.com>
In-Reply-To: <d44bae42-9ccb-2135-7787-3f9efde94000@linux.intel.com>
Message-ID: <156024578887.2497.16355057690352237734@skylake-alporthouse-com>
Date: Tue, 11 Jun 2019 10:36:28 +0100
Subject: Re: [Intel-gfx] [RFC 08/14] drm/i915: Store backpointer to intel_gt
 in the engine
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMSAwOTo0MTowMikKPiAKPiBPbiAxMC8w
Ni8yMDE5IDE5OjE3LCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+ID4gT24gNi8xMC8x
OSA5OjE2IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxp
biAoMjAxOS0wNi0xMCAxNjo1NDoxMykKPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIAo+ID4+PiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCj4gPj4+IGluZGV4IDAxMjIzODY0MjM3YS4uMzQz
YzQ0NTllOGEzIDEwMDY0NAo+ID4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfdHlwZXMuaAo+ID4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfdHlwZXMuaAo+ID4+PiBAQCAtMzQsNiArMzQsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVf
cmVnX3RhYmxlOwo+ID4+PiDCoCBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dDsKPiA+Pj4gwqAgc3Ry
dWN0IGk5MTVfcmVxdWVzdDsKPiA+Pj4gwqAgc3RydWN0IGk5MTVfc2NoZWRfYXR0cjsKPiA+Pj4g
K3N0cnVjdCBpbnRlbF9ndDsKPiA+Pj4gwqAgc3RydWN0IGludGVsX3VuY29yZTsKPiA+Pj4gwqAg
dHlwZWRlZiB1OCBpbnRlbF9lbmdpbmVfbWFza190Owo+ID4+PiBAQCAtMjY2LDYgKzI2Nyw3IEBA
IHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzIHsKPiA+Pj4gwqAgc3RydWN0IGludGVsX2Vu
Z2luZV9jcyB7Cj4gPj4+IMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTU7Cj4gPj4+ICvCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2d0ICpndDsKPiA+Pgo+ID4+
IEknZCBwdXNoIGZvciBndCBhcyBiZWluZyB0aGUgYmFja3BvaW50ZXIsIGFuZCBpOTE1IGl0cyBk
aXN0YW50IGdyYW5kCj4gPj4gcGFyZW50LiBOb3Qgc3VyZSBob3cgbXVjaCBwYWluIHRoYXQgd291
bGQgYnJpbmcganVzdCBmb3IgdGhlIGVsaW1pbmF0aW9uCj4gPj4gb2Ygb25lIG1vcmUgZHJtX2k5
MTVfcHJpdmF0ZSwgYnV0IHRoYXQncyBob3cgSSBwaWN0dXJlIHRoZQo+ID4+IGVuY2Fwc3VsYXRp
b24uCj4gCj4gSXQgZGVwZW5kcyBvbiBvdmVyYWxsIGRpcmVjdGlvbi4gQXJlIHdlIGdvaW5nIHRv
IGdvIHdpdGggaGVscGVycyAKPiAoWFhYX3RvX2k5MTUpIG9yIG5vdC4gV2VsbCBmb3IgcmVtb3Zp
bmcgZW5naW5lLT5pOTE1IHRoZXJlIHdvdWxkIGJlIAo+IGNodXJuIGFscmVhZHkuIEJ1dCBzYW1l
IGNodXJuIHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciB3ZSBwaWNrIAo+IGVuZ2luZV90b19pOTE1IG9y
IGVuZ2luZS0+Z3QtPmk5MTUuCj4gCj4gQnV0IEkgZG9uJ3Qgc2VlIGEgcHJvYmxlbSB3aXRoIGhh
dmluZyBib3RoIGk5MTUgYW5kIGd0IHBvaW50ZXJzIGluIHRoZSAKPiBlbmdpbmUuIEl0J3MgYSBz
aG9ydCBjdXQgdG8gYXZvaWQgcG9pbnRlciBjaGFzaW5nIGFuZCB2ZXJib3NpdHkuIE91ciAKPiBj
b2RlIGlzIGZ1bmRhbWVudGFsbHkgc3RpbGwgdmVyeSBkZXBlbmRlbnQgb24gcnVudGltZSBjaGVj
a3MgYWdhaW5zdCAKPiBJTlRFTF9HRU4gYW5kIElOVEVMX0lORk8sIHNvIGk5MTUgaXMgcHJldHR5
IG11Y2ggaW4gbmVlZCBhbGwgb3ZlciB0aGUgcGxhY2UuCj4gCj4gPiBXb3VsZCBpdCBiZSB3b3J0
aCBtb3Zpbmcgc29tZSBvZiB0aGUgZmxhZ3MgaW4gdGhlIGRldmljZV9pbmZvIHN0cnVjdHVyZSAK
PiA+IGluIGEgZ3Qgc3Vic3RydWN0dXJlLCBsaWtlIHdlIGRpZCBmb3IgZGlzcGxheSwgYW5kIGdl
dCBhIHBvaW50ZXIgdG8gdGhhdCAKPiA+IGluIGludGVsX2d0PyBXZSBjb3VsZCBzYXZlIHNvbWUg
anVtcHMgYmFjayB0aGF0IHdheSBhbmQgYmUgbW9yZSBjb2hlcmVudCAKPiA+IGluIHdoZXJlIHdl
IHN0b3JlIHRoZSBpbmZvLgo+IAo+IFNvIGV2ZW4gd2l0aCB0aGlzIHdlIG1heWJlIHJlZHVjZSB0
aGUgbmVlZCB0byBjaGFzZSBhbGwgdGhlIHdheSB0byBpOTE1IAo+IGEgYml0LCBidXQgbm90IGZ1
bGx5LiBVbmxlc3Mgd2UgZGVjaWRlIHRvIGR1cGxpY2F0ZSBnZW4gaW4gaW50ZWxfZ3QgYXMgCj4g
d2VsbC4gV2VsbC4uIG5vdyBJIGFtIHNjYXJlZCB3ZSB3aWxsIGp1c3QgZGVjaWRlIHRvIGRvIHRo
YXQuIDpECgpLaW5kIG9mZiwgd2UgYXJlIGFscmVhZHkgcmVkdWNpbmcgdGhlIHJ1bnRpbWUgY2hl
Y2tzIGludG8gZmVhdHVyZSBmbGFncwpvciB2ZnVuY3MgZm9yIGhvdCBwYXRocy4gSSBkbyBob3Bl
IHRoZSBvbmx5IHRpbWUgd2UgbmVlZCB0byBnbyBiYWNrIHRvCmk5MTUgaXMgZHVyaW5nIGluaXQu
IFRoaXMgc2hvdWxkIGJlIHJlYXNvbmFibHkgdHJ1ZSBmb3IgZW5naW5lOyBsb29raW5nCmF0IGlu
dGVsX2xyYy5jIHRoZSBjb21tb24gYWNjZXNzIGlzIGZvciBpOTE1LT5zY3JhdGNoLCB3aGljaCB3
ZSBuZWVkIHRvCm1vdmUgdW5kZXIgaW50ZWxfZ3QuIEFuZCBJIGV4cGVjdCB0aGF0IHdlIHdpbGwg
c2VlIHNpbWlsYXIgbmF0dXJhbAp0cmFuc2l0aW9ucyBmb3IgZW5naW5lLT5pOTE1LgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
