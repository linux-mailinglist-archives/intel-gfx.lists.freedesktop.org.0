Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5C6731BB
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 16:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 715286E5B6;
	Wed, 24 Jul 2019 14:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CB6A6E5B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 14:34:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17568259-1500050 for multiple; Wed, 24 Jul 2019 15:34:24 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Francisco Jerez <currojerez@riseup.net>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190720143132.17522-1-chris@chris-wilson.co.uk>
 <65da19be-2696-8d60-e055-63a37101cf6b@linux.intel.com>
 <156388293186.31349.1576327527372090940@skylake-alporthouse-com>
 <87pnm0qtr2.fsf@riseup.net>
In-Reply-To: <87pnm0qtr2.fsf@riseup.net>
Message-ID: <156397886241.31349.9195166642161638629@skylake-alporthouse-com>
Date: Wed, 24 Jul 2019 15:34:22 +0100
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

UXVvdGluZyBGcmFuY2lzY28gSmVyZXogKDIwMTktMDctMjMgMjM6MTk6MTMpCj4gQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiAKPiA+IFF1b3RpbmcgVHZy
dGtvIFVyc3VsaW4gKDIwMTktMDctMjIgMTI6NDE6MzYpCj4gPj4gCj4gPj4gT24gMjAvMDcvMjAx
OSAxNTozMSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+ID4gRW5hYmxpbmcgYXRvbWljIG9wZXJh
dGlvbnMgaW4gTDMgbGVhZHMgdG8gdW5yZWNvdmVyYWJsZSBHUFUgaGFuZ3MsIGFzCj4gPj4gPiB0
aGUgbWFjaGluZSBzdG9wcyByZXNwb25kaW5nIG1pbGxpc2Vjb25kcyBhZnRlciByZWNlaXB0IG9m
IHRoZSByZXNldAo+ID4+ID4gcmVxdWVzdCBbR0RSVF0uIEJ5IGRpc2FibGluZyB0aGUgY2FjaGVk
IGF0b21pY3MsIHRoZSBoYW5nIGRvIG5vdCBvY2N1cgo+ID4+ID4gYW5kIHdlIHByZXN1bWUgdGhl
IEdQVSB3b3VsZCByZXNldCBub3JtYWxseSBmb3Igc2ltaWxhciBoYW5ncy4KPiA+PiA+IAo+ID4+
ID4gUmVwb3J0ZWQtYnk6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KPiA+
PiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTA5OTgKPiA+PiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+ID4+ID4gQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5k
Lm5ldD4KPiA+PiA+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVs
LmNvbT4KPiA+PiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50
ZWwuY29tPgo+ID4+ID4gLS0tCj4gPj4gPiBKYXNvbiByZXBvcnRzIHRoYXQgV2luZG93cyBpcyBu
b3QgY2xlYXJpbmcgTDNTUUNSRUc0OjIyIGFuZCBkb2VzIG5vdAo+ID4+ID4gc3VmZmVyIHRoZSBz
YW1lIEdQVSBoYW5nIHNvIGl0IGlzIGxpa2VseSBzb21lIG90aGVyIHcvYSB0aGF0IGludGVyYWN0
cwo+ID4+ID4gYmFkbHkuIEZ3aXcsIHRoZXNlIDMgYXJlIHRoZSBvbmx5IHJlZ2lzdGVycyBJIGNv
dWxkIGZpbmQgdGhhdCBtZW50aW9uCj4gPj4gPiBhdG9taWMgb3BzIChhbmQgYXBwZWFyIHRvIGJl
IHBhcnQgb2YgdGhlIHNhbWUgY2hhaW4gZm9yIG1lbW9yeSBhY2Nlc3MpLgo+ID4+IAo+ID4+IEJp
dC10b2dnbGluZyBpdHNlbGYgbG9va3MgZmluZSB0byBtZSBhbmQgbWF0Y2hlcyB3aGF0IEkgY291
bGQgZmluZCBpbiAKPiA+PiB0aGUgZG9jcy4gKEFsbCB0aHJlZSBiaXRzIGFjcm9zcyB0aHJlZSBy
ZWdpc3RlcnMgc2hvdWxkIGJlIGVxdWFsLikKPiA+PiAKPiA+PiBXaGF0IEkgYW0gY3VyaW91cyBh
Ym91dCBpcyB3aGF0IGFyZSB0aGUgb3RoZXIgY29uc2VxdWVuY2VzIG9mIGRpc2FibGluZyAKPiA+
PiBMMyBhdG9taWNzPyBQZXJmb3JtYW5jZSBkcm9wIHNvbWV3aGVyZT8KPiA+Cj4gPiBUaGUgdGVz
dCBJIGhhdmUgd2hlcmUgaXQgZ29lcyBmcm9tIGRlYWQgdG8gcGFzc2luZywgdGhhdCdzIGEgY29u
c2lkZXJhYmxlCj4gPiBwZXJmb3JtYW5jZSBpbXByb3ZlbWVudCA7KQo+ID4KPiA+IEkgaW1hZ2lu
ZSBub3QgYmVpbmcgYWJsZSB0byB1c2UgTDMgZm9yIGF0b21pY3MgaXMgcHJldHR5IGRpcmUsIHdo
ZXRoZXIgdGhhdAo+ID4gaGFzIGFueSBpbXBhY3QsIEkgaGF2ZSBubyBjbHVlLgo+ID4KPiA+IEl0
IGlzIHN0aWxsIHZlcnkgbGlrZWx5IHRoYXQgd2Ugc2VlIHRoaXMgYmVjYXVzZSB3ZSBhcmUgZG9p
bmcgc29tZXRoaW5nCj4gPiB3cm9uZyBlbHNld2hlcmUuCj4gCj4gVGhpcyByZW1pbmRzIG1lIG9m
IGYzZmM0ODg0ZWJlNmFlNjQ5ZDM3MjNiZTE0YjIxOTIzMGQzYjdmZDIgZm9sbG93ZWQgYnkKPiBk
MzUxZjZkOTQ4OTNmM2JhOThiMWIyMGM1ZWY0NGMzNWZjMWRhMTI0IGR1ZSB0byB0aGUgbWFzc2l2
ZSBpbXBhY3QgKG9mCj4gdGhlIG9yZGVyIG9mIDIweCBJSVJDKSB1c2luZyB0aGUgTDMgdHVybmVk
IG91dCB0byBoYXZlIG9uIHRoZQo+IHBlcmZvcm1hbmNlIG9mIEhEQyBhdG9taWNzLCBvbiBhdCBs
ZWFzdCB0aGF0IHBsYXRmb3JtLiAgSXQgc2VlbXMKPiB1bmZvcnR1bmF0ZSB0aGF0IHdlJ3JlIGdv
aW5nIHRvIGxvc2UgTDMgYXRvbWljcyBvbiBHZW45IG5vdywgZXZlbiB0aG91Z2gKPiBpdCdzIG9u
bHkgYnVmZmVyIGF0b21pY3Mgd2hpY2ggYXJlIGJyb2tlbiBJSVVDLCBhbmQgZXZlbiB0aG91Z2gg
dGhlCj4gV2luZG93cyBkcml2ZXIgaXMgc29tZWhvdyBnZXR0aW5nIGF3YXkgd2l0aG91dCBkaXNh
YmxpbmcgdGhlbS4gIFNvbWUgb2YKPiBvdXIgc2V0dXAgbXVzdCBiZSB3cm9uZyBlaXRoZXIgaW4g
dGhlIGtlcm5lbCBvciBpbiB1c2Vyc3BhY2UuLi4gIEFyZQo+IHRoZXNlIHJlZ2lzdGVycyBhdCBs
ZWFzdCB3aGl0ZWxpc3RlZCBzbyB1c2Vyc3BhY2UgY2FuIHJlLWVuYWJsZSBMMwo+IGF0b21pY3Mg
b25jZSB0aGUgcHJvYmxlbSBpcyBhZGRyZXNzZWQ/ICBXb3VsZG4ndCBpdCBiZSBhIG1vcmUgc3Bl
Y2lmaWMKPiB3b3JrYXJvdW5kIGZvciB1c2Vyc3BhY2UgdG8gc2ltcGx5IHVzZSBhIG5vbi1MMy1j
YWNoZWFibGUgTU9DUyBmb3IKPiAocmFyZWx5IHVzZWQpIGJ1ZmZlciBzdXJmYWNlcywgc28gaXQg
Y291bGQgYmVuZWZpdCBmcm9tIEwzIGF0b21pY3MKPiBlbHNld2hlcmU/CgpJZiBpdCB3YXMgdGhl
IGNhc2UgdGhhdCBkaXNhYmxpbmcgTDMgYXRvbWljcyB3YXMgdGhlIG9ubHkgd2F5IHRvIHByZXZl
bnQKdGhlIG1hY2hpbmUgbG9ja3VwIHVuZGVyIHRoaXMgc2NlbmFyaW8sIHRoZW4gSSB0aGluayBp
dCBpcwp1bnF1ZXN0aW9uYWJseSB0aGUgcmlnaHQgdGhpbmcgdG8gZG8sIGFuZCB3ZSBjb3VsZCBu
b3QgbGVhdmUgaXQgdG8KdXNlcnNwYWNlIHRvIGR0cnQuIFdlIHNob3VsZCBuZXZlciBhZGQgbm9u
LWNvbnRleHQgc2F2ZWQgdW5zYWZlCnJlZ2lzdGVycyB0byB0aGUgd2hpdGVsaXN0IChpZiBzZXR0
aW5nIGEgcmVnaXN0ZXIgbWF5IGNhdXNlIGRhdGEKY29ycnVwdGlvbiBvciB3b3JzZSBpbiBhbm90
aGVyIGNvbnRleHQvcHJvY2VzcywgdGhhdCBpcyBiYWQpIGRlc3BpdGUgb3VyCnJlcGVhdGVkIHRy
YW5zZ3Jlc3Npb25zLiBIb3dldmVyLCB0aGVyZSdzIG5vIGV2aWRlbmNlIHRvIHNheSB0aGF0IGl0
IGRvZXMKcHJldmVudCB0aGUgbWFjaGluZSBsb2NrdXAgYXMgaXQgcHJldmVudHMgdGhlIEdQVSBo
YW5nIHRoYXQgbGVhZCB0byB0aGUKbG9ja3VwIG9uIHJlc2V0LgoKT3RoZXIgdGhhbiBHUEdQVSBy
ZXF1aXJpbmcgYSBmbHVzaCBhcm91bmQgZXZlcnkgc25lZXplLCBJIGRpZCBub3Qgc2VlCmFueXRo
aW5nIGluIHRoZSBnZW45IHcvYSBsaXN0IHRoYXQgc2VlbWVkIGxpa2UgYSBtYXRjaC4gTmV2ZXJ0
aGVsZXNzLCBJCmV4cGVjdCB0aGVyZSBpcyBhIG1vcmUgcHJlY2lzZSB3L2EgdGhhbiBhIGJsYW5r
ZXQgZGlzYWJsZS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
