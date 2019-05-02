Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FB311B5C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 16:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC38989496;
	Thu,  2 May 2019 14:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E09B89496
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 14:26:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16430128-1500050 for multiple; Thu, 02 May 2019 15:26:43 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-6-chris@chris-wilson.co.uk>
 <6055093b-e46b-92f1-d8e6-02cbbb29a653@linux.intel.com>
 <155680398117.9023.3976794723243757249@skylake-alporthouse-com>
 <607ddfc5-3519-55c4-0f8d-809fdbfcbc3e@linux.intel.com>
In-Reply-To: <607ddfc5-3519-55c4-0f8d-809fdbfcbc3e@linux.intel.com>
Message-ID: <155680720121.9023.13093989659431466981@skylake-alporthouse-com>
Date: Thu, 02 May 2019 15:26:41 +0100
Subject: Re: [Intel-gfx] [PATCH 06/14] drm/i915: Cancel retire_worker on
 parking
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wMiAxNToyMDo1MikKPiAKPiBPbiAwMi8w
NS8yMDE5IDE0OjMzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA1LTAyIDE0OjI5OjUwKQo+ID4+Cj4gPj4gT24gMDEvMDUvMjAxOSAxMjo0NSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBSZXBsYWNlIHRoZSByYWN5IGNvbnRpbnVhdGlvbiBj
aGVjayB3aXRoaW4gcmV0aXJlX3dvcmsgd2l0aCBhIGRlZmluaXRlCj4gPj4+IGtpbGwtc3dpdGNo
IG9uIGlkbGluZy4gVGhlIHJhY2Ugd2FzIGJlaW5nIGV4cG9zZWQgYnkgZ2VtX2NvbmN1cnJlbnRf
YmxpdAo+ID4+PiB3aGVyZSB0aGUgcmV0aXJlX3dvcmtlciB3b3VsZCBiZSB0ZXJtaW5hdGVkIHRv
byBlYXJseSBsZWF2aW5nIHVzCj4gPj4+IHNwaW5uaW5nIGluIGRlYnVnZnMvaTkxNV9kcm9wX2Nh
Y2hlcyB3aXRoIG5vdGhpbmcgZmx1c2hpbmcgdGhlCj4gPj4+IHJldGlyZW1lbnQgcXVldWUuCj4g
Pj4+Cj4gPj4+IEFsdGhvdWdoIHRoYXQgdGhlIGlndCBpcyB0cnlpbmcgdG8gaWRsZSBmcm9tIG9u
ZSBjaGlsZCB3aGlsZSBzdWJtaXR0aW5nCj4gPj4+IGZyb20gYW5vdGhlciBtYXkgYmUgYSBjb250
cmlidXRpbmcgZmFjdG9yIGFzIHRvIHdoeSAgaXQgcnVucyBzbyBzbG93bHkuLi4KPiA+Pj4KPiA+
Pj4gVGVzdGNhc2U6IGlndC9nZW1fY29uY3VycmVudF9ibGl0Cj4gPj4+IEZpeGVzOiA3OWZmYWM4
NTk5YzQgKCJkcm0vaTkxNTogSW52ZXJ0IHRoZSBHRU0gd2FrZXJlZiBoaWVyYXJjaHkiKQo+ID4+
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiA+Pj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPj4+
IC0tLQo+ID4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jICAgICAgICAg
ICAgIHwgMTggKysrKysrKysrKysrLS0tLS0tCj4gPj4+ICAgIC4uLi9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jICAgfCAgMSAtCj4gPj4+ICAgIDIgZmlsZXMgY2hhbmdl
ZCwgMTIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiA+Pj4KPiA+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9wbS5jCj4gPj4+IGluZGV4IGFlOTFhZDdjYjMxZS4uYjIzOWI1NWY4NGNk
IDEwMDY0NAo+ID4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jCj4g
Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3BtLmMKPiA+Pj4gQEAgLTMw
LDE1ICszMCwyMyBAQCBzdGF0aWMgdm9pZCBpZGxlX3dvcmtfaGFuZGxlcihzdHJ1Y3Qgd29ya19z
dHJ1Y3QgKndvcmspCj4gPj4+ICAgIHsKPiA+Pj4gICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1ID0KPiA+Pj4gICAgICAgICAgICAgICAgY29udGFpbmVyX29mKHdvcmssIHR5cGVv
ZigqaTkxNSksIGdlbS5pZGxlX3dvcmspOwo+ID4+PiArICAgICBib29sIHJlc3RhcnQgPSB0cnVl
Owo+ID4+PiAgICAKPiA+Pj4gKyAgICAgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZpOTE1LT5n
ZW0ucmV0aXJlX3dvcmspOwo+ID4+PiAgICAgICAgbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVj
dF9tdXRleCk7Cj4gPj4+ICAgIAo+ID4+Cj4gPj4gWW91IGRvbid0IHdhbnQgdG8gcnVuIGFub3Ro
ZXIgcmV0aXJlIGhlcmU/IFNpbmNlIHRoZSByZXRpcmUgd29ya2VyIG1pZ2h0Cj4gPj4gaGF2ZSBq
dXN0IGJlZW4gY2FuY2VsZWQgSSB0aG91Z2h0IHlvdSBzaG91bGQuCj4gPiAKPiA+IFdoeSB0aG91
Z2g/IElmIHRoZXJlIGFyZSByZXRpcmVzIG91dHN0YW5kaW5nLCB3ZSB3b24ndCBzbGVlcCBhbmQg
d2FudCB0bwo+ID4gZGVmZXIgcGFya2luZyB1bnRpbCBhZnRlciB0aGUgbmV4dCBjeWNsZS4KPiAK
PiBJbiB0aGlzIGNhc2Ugd2hhdCBpcyB0aGUgcG9pbnQgb2YgY2FuY2VsX2RlbGF5ZWRfd29ya18q
c3luYyogYW5kIG5vdCAKPiBqdXN0IHRoZSBhc3luYyBjYW5jZWw/CgpUaGVyZSdzIGFuIG5vbi1z
eW5jIHZlcnNpb24/IEFoIGhhIQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
