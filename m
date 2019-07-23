Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A5C7178D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 13:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E36D6E1B7;
	Tue, 23 Jul 2019 11:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 761496E1B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 11:56:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17532969-1500050 for multiple; Tue, 23 Jul 2019 12:55:33 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <65da19be-2696-8d60-e055-63a37101cf6b@linux.intel.com>
References: <20190720143132.17522-1-chris@chris-wilson.co.uk>
 <65da19be-2696-8d60-e055-63a37101cf6b@linux.intel.com>
Message-ID: <156388293186.31349.1576327527372090940@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 23 Jul 2019 12:55:31 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable atomics in L3 for gen9
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yMiAxMjo0MTozNikKPiAKPiBPbiAyMC8w
Ny8yMDE5IDE1OjMxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBFbmFibGluZyBhdG9taWMgb3Bl
cmF0aW9ucyBpbiBMMyBsZWFkcyB0byB1bnJlY292ZXJhYmxlIEdQVSBoYW5ncywgYXMKPiA+IHRo
ZSBtYWNoaW5lIHN0b3BzIHJlc3BvbmRpbmcgbWlsbGlzZWNvbmRzIGFmdGVyIHJlY2VpcHQgb2Yg
dGhlIHJlc2V0Cj4gPiByZXF1ZXN0IFtHRFJUXS4gQnkgZGlzYWJsaW5nIHRoZSBjYWNoZWQgYXRv
bWljcywgdGhlIGhhbmcgZG8gbm90IG9jY3VyCj4gPiBhbmQgd2UgcHJlc3VtZSB0aGUgR1BVIHdv
dWxkIHJlc2V0IG5vcm1hbGx5IGZvciBzaW1pbGFyIGhhbmdzLgo+ID4gCj4gPiBSZXBvcnRlZC1i
eTogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+ID4gQnVnemlsbGE6IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDk5OAo+ID4gU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBD
YzogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+ID4gQ2M6IE1pa2EgS3Vv
cHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+IEphc29uIHJl
cG9ydHMgdGhhdCBXaW5kb3dzIGlzIG5vdCBjbGVhcmluZyBMM1NRQ1JFRzQ6MjIgYW5kIGRvZXMg
bm90Cj4gPiBzdWZmZXIgdGhlIHNhbWUgR1BVIGhhbmcgc28gaXQgaXMgbGlrZWx5IHNvbWUgb3Ro
ZXIgdy9hIHRoYXQgaW50ZXJhY3RzCj4gPiBiYWRseS4gRndpdywgdGhlc2UgMyBhcmUgdGhlIG9u
bHkgcmVnaXN0ZXJzIEkgY291bGQgZmluZCB0aGF0IG1lbnRpb24KPiA+IGF0b21pYyBvcHMgKGFu
ZCBhcHBlYXIgdG8gYmUgcGFydCBvZiB0aGUgc2FtZSBjaGFpbiBmb3IgbWVtb3J5IGFjY2Vzcyku
Cj4gCj4gQml0LXRvZ2dsaW5nIGl0c2VsZiBsb29rcyBmaW5lIHRvIG1lIGFuZCBtYXRjaGVzIHdo
YXQgSSBjb3VsZCBmaW5kIGluIAo+IHRoZSBkb2NzLiAoQWxsIHRocmVlIGJpdHMgYWNyb3NzIHRo
cmVlIHJlZ2lzdGVycyBzaG91bGQgYmUgZXF1YWwuKQo+IAo+IFdoYXQgSSBhbSBjdXJpb3VzIGFi
b3V0IGlzIHdoYXQgYXJlIHRoZSBvdGhlciBjb25zZXF1ZW5jZXMgb2YgZGlzYWJsaW5nIAo+IEwz
IGF0b21pY3M/IFBlcmZvcm1hbmNlIGRyb3Agc29tZXdoZXJlPwoKVGhlIHRlc3QgSSBoYXZlIHdo
ZXJlIGl0IGdvZXMgZnJvbSBkZWFkIHRvIHBhc3NpbmcsIHRoYXQncyBhIGNvbnNpZGVyYWJsZQpw
ZXJmb3JtYW5jZSBpbXByb3ZlbWVudCA7KQoKSSBpbWFnaW5lIG5vdCBiZWluZyBhYmxlIHRvIHVz
ZSBMMyBmb3IgYXRvbWljcyBpcyBwcmV0dHkgZGlyZSwgd2hldGhlciB0aGF0CmhhcyBhbnkgaW1w
YWN0LCBJIGhhdmUgbm8gY2x1ZS4KCkl0IGlzIHN0aWxsIHZlcnkgbGlrZWx5IHRoYXQgd2Ugc2Vl
IHRoaXMgYmVjYXVzZSB3ZSBhcmUgZG9pbmcgc29tZXRoaW5nCndyb25nIGVsc2V3aGVyZS4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
