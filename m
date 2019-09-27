Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 823EDC052F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 14:32:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78B7F6E0EF;
	Fri, 27 Sep 2019 12:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89FF66E209
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 12:32:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18639383-1500050 for multiple; Fri, 27 Sep 2019 13:32:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-8-chris@chris-wilson.co.uk>
 <a1305fcf-1ac4-6c06-3553-49a6684168ed@linux.intel.com>
 <156958352829.32596.13199670465422748570@skylake-alporthouse-com>
 <85a5f7de-3837-3017-cb20-23258a61075f@linux.intel.com>
 <156958660601.32596.13285971368792453394@skylake-alporthouse-com>
 <b4d4838e-dbc3-5ee0-8749-8578fea05881@linux.intel.com>
In-Reply-To: <b4d4838e-dbc3-5ee0-8749-8578fea05881@linux.intel.com>
Message-ID: <156958754666.32596.2846806960936006960@skylake-alporthouse-com>
Date: Fri, 27 Sep 2019 13:32:26 +0100
Subject: Re: [Intel-gfx] [PATCH 07/27] drm/i915: Coordinate i915_active with
 its own mutex
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yNyAxMzoyNToyMykKPiAKPiBPbiAyNy8w
OS8yMDE5IDEzOjE2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA5LTI3IDEzOjA4OjUxKQo+ID4+Cj4gPj4gT24gMjcvMDkvMjAxOSAxMjoyNSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA5
LTI3IDEyOjEwOjI5KQo+ID4+Pj4KPiA+Pj4+IE9uIDI1LzA5LzIwMTkgMTE6MDEsIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+Pj4+PiArc3RydWN0IGRtYV9mZW5jZSAqCj4gPj4+Pj4gK19faTkxNV9h
Y3RpdmVfZmVuY2Vfc2V0KHN0cnVjdCBpOTE1X2FjdGl2ZV9mZW5jZSAqYWN0aXZlLAo+ID4+Pj4+
ICsgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKPiA+Pj4+Cj4g
Pj4+PiBDYW4geW91IGFkZCBhIHNob3J0IGNvbW1lbnQgZm9yIHRoaXMgZnVuY3Rpb24gZXhwbGFp
bmluZyB0aGUgcmFjeW5lc3MKPiA+Pj4+IGFuZCBzbyB3aHkgaXQgcmV0dXJucyBwcmV2IGFuZCB3
aGF0IHNob3VsZCB0aGUgY2FsbGVycyBkbyB3aXRoIGl0Pwo+ID4+Pgo+ID4+PiBCZWZvcmUgdXNp
bmcgdGhpcyBmdW5jdGlvbiwgd2UgaGFkIHRoZSBjYWxsZXJzIGRlY2xhcmUgd2hhdCBtdXRleCBn
dWFyZHMKPiA+Pj4gdGhpcyB0aW1lbGluZSBhbmQgd2UgY2hlY2sgaGVyZSB0aGF0IGlzIGhlbGQu
Cj4gPj4KPiA+PiBObywgSSBtZWFuIGJlY2F1c2UgaXQgaGFzIHRvIHJlbG9hZCBwcmV2IGFuZCBy
ZXR1cm4gaXQgdG8gdGhlIGNhbGxlciwKPiA+PiB3aGljaCBpbXBsaWVzIHRoYXQgaXMgdG8gaGFu
ZGxlIHNvbWUgZGVzaWduZWQtaW4gcmFjeS1uZXNzIHdoaWNoIEkgdGhpbmsKPiA+PiBzaG91bGQg
YmUgbWVudGlvbmVkLgo+ID4gCj4gPiBCdXQgdGhhdCdzIG5vdCByYWNpbmcgd2l0aCB0aGUgY2Fs
bGVyLCB0aGF0IGp1c3QgcmFjaW5nIHdpdGggdGhlCj4gPiBjYWxsYmFjayBmcm9tIHRoZSBpbnRl
cnJ1cHQgaGFuZGxlciBhbmQgdGhlIHJlYXNvbiB3aHkgd2UgaGF2ZSB0byBjaGVjawo+ID4gYWZ0
ZXIgc2VyaWFsaXNpbmcgaXMgY2FsbGVkIG91dC4gLyogc2VyaWFsaXNlIHdpdGggcHJldi0+Y2Jf
bGlzdCAqLyA/Cj4gPiAKPiA+IFRoZSBjYWxsZXIgaXMgcmVzcG9uc2libGUgZm9yIGVuc3VyaW5n
IHRoYXQgcHJldiBpcyBleGVjdXRlZCBiZWZvcmUKPiA+IGZlbmNlIHRvIGtlZXAgdGhlIHRpbWVs
aW5lIGluIHRoZSBzYW1lIG9yZGVyIGFzIHJlY29yZGVkLgo+IAo+IEkgZGlkIG5vdCBzYXkgaXQg
aXMgcmFjaW5nIHdpdGggdGhlIGNhbGxlciwgYnV0IHRoYXQgdGhlIGNhbGxlciBoYXMgdG8gCj4g
aGFuZGxlIGEgcmFjZS4KCkJ1dCB0aGUgY2FsbGVyIG9ubHkgaGFzIHRvIGNhcmUgYWJvdXQgIndh
cyB0aGVyZSBhbHJlYWR5IGFuIGFjdGl2ZSBmZW5jZQpvbiB0aGlzIHRpbWVsaW5lPyBJZiBzbywg
SSBtdXN0IG1ha2Ugc3VyZSBpdCBleGVjdXRlcyBiZWZvcmUgbWUgYW5kIHRha2UKdGhhdCBpbnRv
IGNvbnNpZGVyYXRpb24gZm9yIHRoZSBmbG93IGFsb25nIHRoZSB0aW1lbGluZSIKCkknbSBub3Qg
c2VlaW5nIHdoYXQgcmFjZSB0aGUgY2FsbGVyIGhhcyB0byBiZSBjb25jZXJuZWQgd2l0aCBoZXJl
LiBJZgp0aGV5IHJlcGxhY2UgdGhlIGxhc3QgcmVxdWVzdCBpbiB0aGUgdGltZWxpbmUsIHRoZXkg
aGF2ZSBpdCByZXR1cm5lZC4KSWYgdGhlcmUgd2FzIG5vIHJlcXVlc3QgcHJldmlvdXNseSBpbiB0
aGUgdGltZWxpbmUsIHRoZXkgaGF2ZSBOVUxMLgooVGhhdCBqdXN0IHNlZW1zIHN0cmFpZ2h0Zm9y
d2FyZC4pCiAKPiAiU2VyaWFsaXNlIHdpdGggcHJldi0+Y2JfbGlzdCIgaXMgdG9vIGxvdyBsZXZl
bCBmb3IgbWUuIFRydXN0IG1lLCBJIAo+IGFsd2F5cyBzdHJ1Z2dsZSB3aXRoIHRoZSBhY3RpdmUg
dHJhY2tpbmcgY29kZSBzaW5jZSB0aGVyZSBpcyBzbyBtYW55IAo+IGluZGlyZWN0aW9ucyBhbmQg
cmVsYXRpb25zaGlwcy4gU28gaW4gdGhlIGFic2VuY2Ugb2YgYSB2aXN1YWwgZGlhZ3JhbSBhIAo+
IGhpZ2hlciBsZXZlbCBjb21tZW50IHdvdWxkIGJlIGJlbmVmaWNpYWwgZm9yIHRoZSBmdXR1cmUg
c2VsZi4gSnVzdCAKPiBleHBhbmRpbmcgb24gd2hhdCB5b3UgcmVwbGllZCBoZXJlIHRhbGtpbmcg
YWJvdXQgaG93IGludGVycnVwdHMgCj4gaW50ZXJhY3RzIHdpdGggbmV3IHN0dWZmIGVudGVyaW5n
IHRyYWNraW5nIHdvdWxkIGRvIGl0LgoKSXQncyBqdXN0IGFib3V0IHRoYXQgdGhlIGNhbGxiYWNr
IG1heSBiZSBleGVjdXRpbmcgYW5kIHNvIHdlIG5lZWQgdG8Kc2VyaWFsaXNlIHRoZSBsaXN0IG1h
bmlwdWxhdGlvbiB1bmRlciB0aGUgbG9jazsgaGF2aW5nIHBlcmZvcm1lZCB0aGF0Cmxpc3QgbWFu
aXB1bGF0aW9uLCB3ZSB0aGVuIGtub3cgd2hldGhlciBvciBub3Qgd2Ugd2VyZSBzdWNjZXNzZnVs
IGluCmNhcHR1cmluZyB0aGUgcHJldmlvdXMgZmVuY2UuCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
