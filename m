Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E515F4B451
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 10:46:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26DEA6E2BE;
	Wed, 19 Jun 2019 08:46:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 104986E2BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 08:46:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16949556-1500050 for multiple; Wed, 19 Jun 2019 09:46:49 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190618202139.1481-1-chris@chris-wilson.co.uk>
 <94b19e73-a22b-4042-8196-c24399bf6734@linux.intel.com>
 <156093328450.31375.11797196291405596980@skylake-alporthouse-com>
 <80f5bd2c-895b-c717-1e49-472c1df50ff8@linux.intel.com>
In-Reply-To: <80f5bd2c-895b-c717-1e49-472c1df50ff8@linux.intel.com>
Message-ID: <156093401030.31375.1403189476859808733@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 09:46:50 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engine: Prevent
 preemption
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xOSAwOTo0NDoxOCkKPiAKPiBPbiAxOS8w
Ni8yMDE5IDA5OjM0LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA2LTE5IDA3OjMyOjA1KQo+ID4+Cj4gPj4gT24gMTgvMDYvMjAxOSAyMToyMSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBJbiBvcmRlciB0byBwaW4gdGhlIGVuZ2luZSBhcyBi
dXN5LCB3ZSBoYXZlIHRvIHByZXZlbnQgdGhlIGtlcm5lbCBmcm9tCj4gPj4+IGV4ZWN1dGluZyBv
dGhlciBpbmRlcGVuZGVudCB3b3JrIGFoZWFkIG9mIG91ciBwbHVnLCBzbyB0ZWxsIHRoZSBzcGlu
bmVyCj4gPj4+IHRvIG5vdCBhbGxvdyBwcmVlbXB0aW9uLgo+ID4+Pgo+ID4+PiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+Pj4gLS0tCj4g
Pj4+ICAgIHRlc3RzL2k5MTUvZ2VtX2N0eF9lbmdpbmVzLmMgfCAzICsrLQo+ID4+PiAgICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPj4+Cj4gPj4+IGRp
ZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jIGIvdGVzdHMvaTkxNS9nZW1f
Y3R4X2VuZ2luZXMuYwo+ID4+PiBpbmRleCAzZWNhZGU0MTcuLmQ0N2NiZGQ3YyAxMDA2NDQKPiA+
Pj4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fY3R4X2VuZ2luZXMuYwo+ID4+PiArKysgYi90ZXN0cy9p
OTE1L2dlbV9jdHhfZW5naW5lcy5jCj4gPj4+IEBAIC0yODMsNyArMjgzLDggQEAgc3RhdGljIHZv
aWQgZXhlY3V0ZV9vbmUoaW50IGk5MTUpCj4gPj4+ICAgIAo+ID4+PiAgICAgICAgICAgICAgICAg
ICAgICAgIHNwaW4gPSBpZ3Rfc3Bpbl9uZXcoaTkxNSwKPiA+Pj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIC5jdHggPSBwYXJhbS5jdHhfaWQsCj4gPj4+IC0gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5lbmdpbmUgPSAwKTsKPiA+Pj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmVuZ2luZSA9IDAsCj4g
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5mbGFncyA9IElH
VF9TUElOX05PX1BSRUVNUFRJT04pOwo+ID4+PiAgICAKPiA+Pj4gICAgICAgICAgICAgICAgICAg
ICAgICBpZ3RfZGVidWcoIlRlc3Rpbmcgd2l0aCBtYXAgb2YgJWQgZW5naW5lc1xuIiwgaSArIDEp
Owo+ID4+PiAgICAgICAgICAgICAgICAgICAgICAgIG1lbXNldCgmZW5naW5lcy5lbmdpbmVzLCAt
MSwgc2l6ZW9mKGVuZ2luZXMuZW5naW5lcykpOwo+ID4+Pgo+ID4+Cj4gPj4gVGhlIG5vLW9wIGJh
dGNoIHByZWVtcHRzIHRoZSBzcGlubmVyPyBIb3cgZG9lcyB0aGF0IGFmZmVjdCB0aGUgYnVzeQo+
ID4+IGNoZWNrIG9uIHRoZSBuby1vcCBiYXRjaD8KPiA+IAo+ID4gV2UgYXJlIGNoZWNraW5nIHRo
ZSBzZWNvbmQgYmF0Y2ggaW4gdGhlIHBpcGVsaW5lLCBleHBlY3RpbmcgaXQgdG8gYmUKPiA+IGJs
b2NrZWQgYnkgdGhlIGFscmVhZHkgZXhlY3V0aW5nIHNwaW5uZXIgb24gdGhlIGVuZ2luZSBvZiBp
bnRlcmVzdC4KPiA+IFRoZXJlIGlzIG5vIGRlcGVuZGVuY3kgYmV0d2VlbiB0aGUgdHdvIGJhdGNo
ZXMsIGp1c3Qgb3JkZXIgb2YKPiA+IHN1Ym1pc3Npb24sIGhlbmNlIHRoZSBrZXJuZWwgZW5kcyB1
cCBleGVjdXRpbmcgdGhlIHNlY29uZCBuby1vcCBiYXRjaAo+ID4gYWZ0ZXIgdGhlIGZpcnN0IGJh
dGNoJ3MgdGltZXNsaWNlIGV4cGlyZWQuCj4gCj4gWWVzIG9mIGNvdXJzZS4uIGJ1dCBldmVuIHdp
dGhvdXQgdGltZXNsaWNpbmcgSSB0aGluayB3ZSBjb3VsZCBoYXZlIHRoaXMgCj4gYXNzdW1wdGlv
biBzcGlubmVyIHBsdWdzIGluIGEgbG90IG9mIHBsYWNlcy4KClllcy4gSW4gdGhlIHBsYWNlcyB3
aGVyZSBJJ3ZlIHRob3VnaHQgYWJvdXQgdGhpcyBwbHVnZ2luZyBpc3N1ZSwgd2UKaXNzdWUgQklH
TlVNIGhpZ2ggcHJpb3JpdHkgcmVxdWVzdHMuIEhvd2V2ZXIsIHRoaXMgaXMgdGhlIG9ubHkKY29u
c2lzdGVudCBmYWlsdXJlIGF0bSwgbm8gZG91YnQgbW9yZSB3aWxsIHR1cm4gdXAuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
