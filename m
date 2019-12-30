Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC9F12CF09
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 12:10:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71D21892C9;
	Mon, 30 Dec 2019 11:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137CF892C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 11:10:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19725112-1500050 for multiple; Mon, 30 Dec 2019 10:53:23 +0000
MIME-Version: 1.0
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191227235147.32366-2-imre.deak@intel.com>
References: <20191227235147.32366-1-imre.deak@intel.com>
 <20191227235147.32366-2-imre.deak@intel.com>
Message-ID: <157770320111.2392.10167327753502605270@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 30 Dec 2019 10:53:21 +0000
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Make sure a semiplanar UV
 plane is tile row size aligned
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBJbXJlIERlYWsgKDIwMTktMTItMjcgMjM6NTE6NDYpCj4gQ3VycmVudGx5IHRoZSBz
dGFydCBhZGRyZXNzIG9mIGEgVVYgcGxhbmUgaW4gYSBzZW1pcGxhbmFyIFlVViBGQiBpcyB0aWxl
Cj4gc2l6ZSAoNGtCKSBhbGlnbmVkLiBJIG5vdGljZWQsIHRoYXQgZW5mb3JjaW5nIG9ubHkgdGhp
cyBhbGlnbm1lbnQgbGVhZHMKPiBvZGRseSB0byByYW5kb20gbWVtb3J5IGNvcnJ1cHRpb25zIG9u
IFRHTCB3aGlsZSBzY2FubmluZyBvdXQgWS10aWxlZAo+IEZCcy4gVGhpcyBpc3N1ZSBjYW4gYmUg
ZWFzaWx5IHJlcHJvZHVjZWQgd2l0aCBhIFVWIHBsYW5lIHRoYXQgaXMgbm90Cj4gYWxpZ25lZCB0
byB0aGUgcGxhbmUncyB0aWxlIHJvdyBzaXplLgo+IAo+IFNvbWUgZXhwZXJpbWVudHMgc2hvd2Vk
IHRoZSBjb3JyZWN0IGFsaWdubWVudCB0byBiZSB0aWxlIHJvdyBzaXplCj4gaW5kZWVkLiBUaGlz
IGFsc28gbWFrZXMgc2Vuc2UsIHNpbmNlIHRoZSBkZS10aWxpbmcgZmVuY2UgY3JlYXRlZCBmb3Ig
dGhlCgpPbmUgd291bGQgZXhwZWN0IHRoZSBpbXBsaWNpdCBmZW5jZSB0byBmb2xsb3cgdGhlIGZl
bmNlIGRldGlsaW5nIEhXCmxvZ2ljLCB3aGljaCBkb2VzIG5vdCByZXF1aXJlIHRpbGUtcm93IGFs
aWdubWVudCwganVzdCA0MDk2IGFsaWdubWVudAooc2luY2UgZ2VuNCkuIFRoYXQgc3VnZ2VzdHMg
dGhpcyBsb2dpYyBpcyBwZWN1bGlhciB0byB0aGUgZGlzcGxheSBlbmdpbmUuCgo+IG9iamVjdCAt
IHdpdGggaXRzIG93biBzdHJpZGUgYW5kIHNvICJsZWZ0IiBhbmQgInJpZ2h0IiBlZGdlIC0gYXBw
bGllcyB0bwo+IGFsbCB0aGUgcGxhbmVzIGluIHRoZSBGQiwgc28gZWFjaCB0aWxlIHJvdyBvZiBh
bGwgcGxhbmVzIHNob3VsZCBiZSB0aWxlCj4gcm93IGFsaWduZWQuCj4gCj4gSW4gZmFjdCBCU3Bl
YyByZXF1aXJlcyB0aGlzIGFsaWdubWVudCBzaW5jZSBTS0wuIE9uIFNLTCB3ZSBtYXkgZW5mb3Jj
ZQo+IHRoaXMgZHVlIHRvIHRoZSBBVVggcGxhbmUgeCx5IGNvb3JkcyBjaGVjaywgYnV0IG9uIElD
TCBhbmQgVEdMIHdlIGRvbid0Lgo+IEZvciBub3cgZW5mb3JjZSB0aGlzIG9ubHkgb24gVEdMOyBJ
IGNhbiBmb2xsb3cgdXAgd2l0aCBhbnkgbmVjZXNzYXJ5Cj4gY2hhbmdlIGZvciBJQ0wgYWZ0ZXIg
bW9yZSB0ZXN0cy4KCkNvbnNpZGVyaW5nIHRoZSBzZXZlcml0eSBvZiB0aGUgZXJyb3IsIEkgc3Ry
b25nbHkgc3VnZ2VzdCB3ZSBmaXggYWxsCnN1c3BlY3RlZCBtYWNoaW5lcyBhbmQgQ2M6c3RhYmxl
LgoKPiBCU3BlYyByZXF1aXJlcyBhIHN0cmljdGVyIGFsaWdubWVudCBmb3IgbGluZWFyIFVWIHBs
YW5lcyB0b28gKGtpbmQgb2YgYQo+IHRpbGUgcm93IGFsaWdubWVudCksIGJ1dCBpdCdzIHVuY2xl
YXIgd2hldGhlciB0aGF0J3MgcmVhbGx5IG5lZWRlZAo+IChjb3VsZG4ndCBiZSBleHBsYWluZWQg
d2l0aCB0aGUgZGUtdGlsaW5nIGZlbmNlIGFzIGFib3ZlKSBhbmQgZW5mb3JjaW5nCj4gdGhhdCBj
b3VsZCBicmVhayBleGlzdGluZyB1c2VyIHNwYWNlOyBzbyBhdm9pZCB0aGF0IHRvbyBmb3Igbm93
IHVudGlsCj4gbW9yZSB0ZXN0cy4KPiAKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pgo+IC0tLQo+ICtzdGF0aWMgdW5zaWduZWQgaW50IGludGVsX3RpbGVfcm93X3NpemUoY29uc3Qg
c3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGludCBjb2xvcl9wbGFuZSkKPiArewo+ICsgICAgICAgdW5zaWduZWQgaW50
IHRpbGVfd2lkdGgsIHRpbGVfaGVpZ2h0Owo+ICsKPiArICAgICAgIGludGVsX3RpbGVfZGltcyhm
YiwgY29sb3JfcGxhbmUsICZ0aWxlX3dpZHRoLCAmdGlsZV9oZWlnaHQpOwo+ICsKPiArICAgICAg
IHJldHVybiBmYi0+cGl0Y2hlc1tjb2xvcl9wbGFuZV0gKiB0aWxlX2hlaWdodDsKCk9rLCB0aGF0
IGlzIHRpbGVfcm93X3NpemUuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
