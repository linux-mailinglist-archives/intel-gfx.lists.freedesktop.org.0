Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1960C10B17D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 15:37:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 168E8894FE;
	Wed, 27 Nov 2019 14:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47849894FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 14:37:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19361052-1500050 for multiple; Wed, 27 Nov 2019 14:37:51 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191127111742.3271036-1-chris@chris-wilson.co.uk>
 <b834e9b3-9654-12bd-09ef-cf7d13101a0f@linux.intel.com>
 <157486345282.18552.10939932504954999490@skylake-alporthouse-com>
 <7f917e43-d17d-5efc-0d8e-5d1221fbbb7e@linux.intel.com>
In-Reply-To: <7f917e43-d17d-5efc-0d8e-5d1221fbbb7e@linux.intel.com>
Message-ID: <157486546437.18552.16720736370971433834@skylake-alporthouse-com>
Date: Wed, 27 Nov 2019 14:37:44 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Copy across scheduler behaviour
 flags across submit fences
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yNyAxNDoyMjozNykKPiAKPiBPbiAyNy8x
MS8yMDE5IDE0OjA0LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTExLTI3IDEzOjQ2OjE0KQo+ID4+IE9uIDI3LzExLzIwMTkgMTE6MTcsIENocmlz
IFdpbHNvbiB3cm90ZToKPiA+Pj4gV2Ugd2FudCB0aGUgYm9uZGVkIHJlcXVlc3QgdG8gaGF2ZSB0
aGUgc2FtZSBzY2hlZHVsZXIgcHJvcGVydGllcyBhcyBpdHMKPiA+Pj4gbWFzdGVyIHNvIHRoYXQg
aXQgaXMgcGxhY2VkIGF0IHRoZSBzYW1lIGRlcHRoIGluIHRoZSBxdWV1ZS4gRm9yIGV4YW1wbGUs
Cj4gPj4+IGNvbnNpZGVyIHdlIGhhdmUgcmVxdWVzdHMgQSwgQiBhbmQgQicsIHdoZXJlIEIgJiBC
JyBhcmUgYSBib25kZWQgcGFpciB0bwo+ID4+PiBydW4gaW4gcGFyYWxsZWwgb24gdHdvIGVuZ2lu
ZXMuCj4gPj4+Cj4gPj4+ICAgICAgICBBIC0+IEIKPiA+Pj4gICAgICAgICAgICAgICAgICAgICBc
LSBCJwo+ID4+Pgo+ID4+PiBCIHdpbGwgcnVuIGFmdGVyIEEgYW5kIHNvIG1heSBiZSBzY2hlZHVs
ZWQgb24gYW4gaWRsZSBlbmdpbmUgYW5kIHdhaXQgb24KPiA+Pj4gQSB1c2luZyBhIHNlbWFwaG9y
ZS4gQicgc2VlcyBCIGJlaW5nIGV4ZWN1dGVkIGFuZCBzbyBlbnRlcnMgdGhlIHF1ZXVlIG9uCj4g
Pj4+IHRoZSBzYW1lIGVuZ2luZSBhcyBBLiBBcyBCJyBkaWQgbm90IGluaGVyaXQgdGhlIHNlbWFw
aG9yZS1jaGFpbiBmcm9tIEIsCj4gPj4+IGl0IG1heSBoYXZlIGhpZ2hlciBwcmVjZWRlbmNlIHRo
YW4gQSBhbmQgc28gcHJlZW1wdHMgZXhlY3V0aW9uLiBIb3dldmVyLAo+ID4+PiBCJyB0aGVuIHNp
dHMgb24gYSBzZW1hcGhvcmUgd2FpdGluZyBmb3IgQiwgd2hvIGlzIHdhaXRpbmcgZm9yIEEsIHdo
byBpcwo+ID4+PiBibG9ja2VkIGJ5IEIuCj4gPj4+Cj4gPj4+IEVyZ28gQicgbmVlZHMgdG8gaW5o
ZXJpdCB0aGUgc2NoZWR1bGVyIHByb3BlcnRpZXMgZnJvbSBCIChpLmUuIHRoZQo+ID4+PiBzZW1h
cGhvcmUgY2hhaW4pIHNvIHRoYXQgaXQgaXMgc2NoZWR1bGVkIHdpdGggdGhlIHNhbWUgcHJpb3Jp
dHkgYXMgQiBhbmQKPiA+Pj4gd2lsbCBub3QgYmUgZXhlY3V0ZWQgYWhlYWQgb2YgQnMgZGVwZW5k
ZW5jaWVzLgo+ID4+Pgo+ID4+PiBGdXJ0aGVybW9yZSwgdG8gcHJldmVudCB0aGUgcHJpb3JpdGll
cyBjaGFuZ2luZyB2aWEgdGhlIGV4cG9zZSBmZW5jZSBvbgo+ID4+PiBCJywgd2UgbmVlZCB0byBj
b3VwbGUgaW4gdGhlIGRlcGVuZGVuY2llcyBmb3IgUEkuIFRoaXMgcmVxdWlyZXMgdXMgdG8KPiA+
Pj4gcmVsYXggb3VyIHNhbml0eS1jaGVja3MgdGhhdCBkZXBlbmRlbmNpZXMgYXJlIHN0cmljdGx5
IGluIG9yZGVyLgo+ID4+Cj4gPj4gR29vZCBjYXRjaCwgdGhpcyBuZWVkZWQgc29tZSBkZWVwIHRo
aW5raW5nISBBbmQgaXQgbG9va3Mgb2theSwgZXZlbgo+ID4+IHRob3VnaCBpZGVhbGx5IHdlIHdv
dWxkIGJlIGFibGUgdG8gZml4IGl0IG5vdCB0byBzaWduYWwgdGhlIHN1Ym1pdCBmZW5jZQo+ID4+
IHVudGlsIHNlbWFwaG9yZSB3YXMgY29tcGxldGVkLiBCdXQgZm9yIHRoYXQgSSB0aGluayB3ZSB3
b3VsZCBuZWVkIHRvCj4gPj4gZW1pdCBhIHJlcXVlc3Qgd2hpbGUgZW1pdHRpbmcgYSByZXF1ZXN0
LCBzbyB0aGF0IHRoZSBzZW1hcGhvcmUgd2FpdAo+ID4+IHdvdWxkIGJlIGluIGl0cyBvd24uCj4g
PiAKPiA+IEF0IGEgcHVzaCB3ZSBjb3VsZCBhZGQgYW4gTUlfVVNFUl9JTlRFUlJVUFQgYWZ0ZXIg
dGhlIGluaXRpYWwgYnJlYWRjcnVtYgo+ID4gYW5kIGNvdXBsZSB0aGUgc3VibWl0IGZlbmNlIGlu
dG8gdGhhdC4gVGhhdCB3b3VsZCBiZSB2aXJ0dWFsbHkKPiA+IGVxdWl2YWxlbnQgdG8gZW1pdHRp
bmcgYSBzZXBhcmF0ZSByZXF1ZXN0IGZvciBzZW1hcGhvcmVzLiBTb21ldGhpbmcgdG8KPiA+IHBv
bmRlciBvdmVyLgo+IAo+IEhtLCBpZiBub3QgdG9vIGRpZmZpY3VsdCBpdCB3b3VsZCBkZWZpbml0
ZWx5IGJlIG11Y2ggcHJlZmVyYWJsZSBzaW5jZSAKPiByZWx5aW5nIG9uIGNvbnRyb2xsaW5nIHBy
ZWVtcHRpb24gZGVjaXNpb25zIGZlZWxzIGEgYml0IGZyYWdpbGUvaGFja2lzaC4KPiAKPiBTaW1w
bHkgbW92aW5nIF9fbm90aWZ5X2V4ZWN1dGVfY2IgZnJvbSBfX2k5MTVfcmVxdWVzdF9zdWJtaXQg
dG8gCj4gaW50ZWxfZW5naW5lX2JyZWFkY3J1bWJzX2lycSwgdW5kZXIgYSBfX2k5MTVfcmVxdWVz
dF9oYXNfc3RhcnRlZCBjaGVjaywgCj4gY291bGQgZG8gaXQ/Cgo5NSUgb2YgdGhlIHdheSwgeWVz
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
