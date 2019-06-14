Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E96FA4588A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 11:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8DE894C5;
	Fri, 14 Jun 2019 09:24:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6914C8944A
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 09:24:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16899494-1500050 for multiple; Fri, 14 Jun 2019 10:24:34 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-7-tvrtko.ursulin@linux.intel.com>
 <156043374038.16925.16516920630664771480@skylake-alporthouse-com>
 <6186c719-417f-53d0-c37c-640c0f341be5@linux.intel.com>
In-Reply-To: <6186c719-417f-53d0-c37c-640c0f341be5@linux.intel.com>
Message-ID: <156050427156.12188.12057320062082265893@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 10:24:31 +0100
Subject: Re: [Intel-gfx] [RFC 06/28] drm/i915: Convert
 i915_gem_init_swizzling to intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxMDowNjo0MSkKPiAKPiBPbiAxMy8w
Ni8yMDE5IDE0OjQ5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA2LTEzIDE0OjM1OjE3KQo+ID4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPj4KPiA+PiBTdGFydCB1c2luZyB0aGUgbmV3bHkgaW50
cm9kdWNlZCBzdHJ1Y3QgaW50ZWxfZ3QgdG8gZnVzZSB0b2dldGhlciBjb3JyZWN0Cj4gPj4gbG9n
aWNhbCBpbml0IGZsb3cgd2l0aCB1bmNvcmUgZm9yIG1vcmUgcmVtb3ZhbCBvZiBpbXBsaWNpdCBk
ZXZfcHJpdiBpbgo+ID4+IG1taW8gYWNjZXNzLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+IAo+ID4gTG9va3MgZmlu
ZSwgSSBtaWdodCBtb3ZlIGl0IGFnYWluIGxhdGVyIG5leHQgdG8gdGhlIGZlbmNlIHJlZ2lzdGVy
cywgb3IKPiA+IGF0IGxlYXN0IHB1bGwgdGhpcyBhbmQgdGhlIGRldGVjdGlvbiBpbnRvIGl0cyBv
d24gaW50ZWxfZ3Rfc3dpenpsaW5nLmMKPiA+IAo+ID4gSG1tLCBub3cgdGhhdCBJIHNhaWQgdGhh
dCwgZG9lcyB0aGF0IHNlZW0gbGlrZSBhIHJlYXNvbmFibGUgdGhpbmcgdG8gZG8KPiA+IHJpZ2h0
IGF3YXksIHNlZSBpOTE1X2dlbV9mZW5jZV9yZWdzLmMgZm9yIHRoZSBzd2l6emxlIHByb2JlPwo+
IAo+IElzIHN3aXp6bGluZyBnbG9iYWwgZm9yIHRoZSBtZW1vcnkgY29udHJvbGxlciBvciBhcHBs
aWNhYmxlIG9ubHkgZm9yIAo+IGZlbmNlZCByZWdpb25zPwoKQXMgZmFyIGFzIG15IHVuZGVyc3Rh
bmRpbmcgZ29lcywgaXQgdXNlZCB0byBiZSBvbmx5IGZvciBmZW5jZWQgcmVnaW9ucwp3aGVuIHRo
ZSBncHUgd2FzIHRoZSBnbWNoLCBidXQgY29tcGxldGVseSBtaWdyYXRlZCB0byB0aGUgbWVtb3J5
CmNvbnRyb2xsZXIgYXJvdW5kIHNuYiAod2l0aCB0aGUgcmluZyBhcmNoaXRlY3R1cmUsIHRoZSBH
UFUgd2FzIGp1c3QKYW5vdGhlciBjbGllbnQpLiBUaGlzIGNvaW5jaWRlcyB3aXRoIHN3aXp6bGlu
ZyBiZWNvbWluZyBkZWZ1bmN0IGFzIHBhcnQKb2YgdGlsaW5nLiBUbyBmdXJ0aGVyIG11ZGR5IHRo
ZSBwaWN0dXJlcywgYWxsIHRoZSB0aW1lIHRoZSBtZW1vcnkKY29udHJvbGxlciBpcyBpbnRlcmxl
YXZpbmcgYWNyb3NzIHRoZSBjaGFubmVscy4gSSBhbSBwcmV0dHkgY2VydGFpbgphcm91bmQgZ2Vu
MyB0aGlzIHdhcyBleHBsaWNpdGx5IGNvbnRyb2xsZWQgYnkgdGhlIEdQVSBmb3IgaXRzIHBhZ2Vz
LCBidXQKYnkgZ2VuNSB0aGlzIGlzIHRyYW5zcGFyZW50IHRvIHRoZSBHUFUuIChTZWUgdGhlIGlz
c3VlcyB3aXRoIEwtc2hhcGVkCm1lbW9yeSBjb25maWd1cmF0aW9ucyB3aGVyZSB0aGUgbWFnaWMg
d2FzIG5vdCBoaWRkZW4gZnJvbSB0aGUgR1BVLikKClNvLCBhaXVpLCBmb3Igb3VyIHdvcmxkIHZp
ZXcgdGlsaW5nIGFuZCBzd2l6emxpbmcgYXJlIGNvbXBsaWNpdC4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
