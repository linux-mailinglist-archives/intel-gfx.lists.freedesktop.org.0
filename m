Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF024AEB1
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 01:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B50E89081;
	Tue, 18 Jun 2019 23:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 289F889081
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 23:23:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16946513-1500050 for multiple; Wed, 19 Jun 2019 00:23:01 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190617180935.505-1-daniele.ceraolospurio@intel.com>
 <20190617180935.505-6-daniele.ceraolospurio@intel.com>
 <550f7eb9-7021-4dd2-2f8f-90f95bcec715@linux.intel.com>
 <2f8d35a3-7c47-9a02-7bbb-5b4d72ccfbe1@intel.com>
In-Reply-To: <2f8d35a3-7c47-9a02-7bbb-5b4d72ccfbe1@intel.com>
Message-ID: <156090018238.6388.4975670636065726873@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 00:23:02 +0100
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: dynamically allocate
 forcewake domains
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTE5IDAwOjA2OjM5KQo+IAo+
IAo+IE9uIDYvMTgvMTkgMjoyMyBBTSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4gPiAKPiA+IE9u
IDE3LzA2LzIwMTkgMTk6MDksIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4gPj4gLXN0
YXRpYyB2b2lkIGludGVsX3VuY29yZV9md19kb21haW5zX2luaXQoc3RydWN0IGludGVsX3VuY29y
ZSAqdW5jb3JlKQo+ID4+ICtzdGF0aWMgaW50IGludGVsX3VuY29yZV9md19kb21haW5zX2luaXQo
c3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlKQo+ID4+IMKgIHsKPiA+PiDCoMKgwqDCoMKgIHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdW5jb3JlLT5pOTE1Owo+ID4+ICvCoMKgwqAg
aW50IHJldDsKPiA+PiDCoMKgwqDCoMKgIEdFTV9CVUdfT04oIWludGVsX3VuY29yZV9oYXNfZm9y
Y2V3YWtlKHVuY29yZSkpOwo+ID4+ICsjZGVmaW5lIF9fZndfZG9tYWluX2luaXQoaWRfXywgc2V0
X18sIGFja19fKSBcCj4gPj4gK8KgwqDCoCByZXQgPSBmd19kb21haW5faW5pdCh1bmNvcmUsIChp
ZF9fKSwgKHNldF9fKSwgKGFja19fKSk7IFwKPiA+PiArwqDCoMKgIGlmIChyZXQpIFwKPiA+PiAr
wqDCoMKgwqDCoMKgwqAgZ290byBvdXRfY2xlYW47Cj4gPiAKPiA+IEhpZGRlbiBjb250cm9sIGZs
b3cgaXMgc2xpZ2h0bHkgb2JqZWN0aW9uYWJsZSBidXQgSSBkb24ndCBvZmZlciBhbnkgbmljZSAK
PiA+IGFsdGVybmF0aXZlcyBzbyBJIGd1ZXNzIHdpbGwgaGF2ZSB0byBwYXNzLiBPciBtYXliZSBh
Y2N1bXVsYXRlIHRoZSBlcnJvciAKPiA+IChlcnIgfD0gZndfZG9tYWluX2luaXQoLi4pKSBhcyB5
b3UgZ28gYW5kIHRoZW4gY2xlYW51cCBhdCB0aGUgZW5kIGlmIGFueSAKPiA+IGZhaWxlZD8KPiAK
PiBJJ2QgcHJlZmVyIHRvIGF2b2lkIGFjY3VtdWxhdGluZyB0aGUgZXJyb3Igc2luY2UgaXQnZCBq
dXN0IGNhdXNlIHVzIHRvIAo+IGhhdmluZyB0byB1bnJvbGwgbW9yZSBkb21haW5zIHdoZW4gd2Ug
Y291bGQndmUgc3RvcHBlZCBlYXJseS4KPiAKPiA+IAo+ID4gT24gdGhlIG90aGVyIGhhbmQgdGhl
IGlkZWEgc2xpZ2h0bHkgY29uZmxpY3RzIHdpdGggbXkgb3RoZXIgc3VnZ2VzdGlvbiAKPiA+IHRv
IHJlbmFtZSBleGlzdGluZyBmd19kb21haW5faW5pdCB0byBfX2Z3X2RvbWFpbl9pbml0IGFuZCBj
YWxsIHRoZSBtYWNybyAKPiA+IGZ3X2RvbWFpbl9pbml0IGFuZCBhdm9pZCBhbGwgdGhlIGNodXJu
IGJlbG93Lgo+ID4gCj4gCj4gSSdsbCBwaWNrIHRoaXMgc3VnZ2VzdGlvbiBhbW9uZyB0aGUgMiwg
dW5sZXNzIHRoZXJlIGlzIGFub3RoZXIgCj4gc3VnZ2VzdGlvbiBvbiBob3cgdG8gYXZvaWQgdGhl
IGhpZGRlbiBnb3RvLgoKQmUgY2FyZWZ1bCwgb3IgeW91J2xsIGdpdmUgVHZydGtvIHRoZSBjaGFu
Y2UgdG8gc3VnZ2VzdCB0YWJsZSBkcml2ZW4Kc2V0dXAuIE1heWJlPwotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
