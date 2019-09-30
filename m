Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE64AC1F7A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 12:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C29DA89170;
	Mon, 30 Sep 2019 10:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B22E89170
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 10:46:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18665336-1500050 for multiple; Mon, 30 Sep 2019 11:46:20 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <d390ac14-25d3-8d9d-5bcf-52e722a787f7@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-11-matthew.auld@intel.com>
 <156961694798.1880.4203652934664083568@skylake-alporthouse-com>
 <d390ac14-25d3-8d9d-5bcf-52e722a787f7@intel.com>
Message-ID: <156984037382.1880.8895783062236639941@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 30 Sep 2019 11:46:13 +0100
Subject: Re: [Intel-gfx] [PATCH 10/22] drm/i915/selftests: add write-dword
 test for LMEM
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
Cc: daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMzAgMTA6NTg6MTUpCj4gT24gMjcvMDkvMjAx
OSAyMTo0MiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBNYXR0aGV3IEF1bGQgKDIw
MTktMDktMjcgMTg6MzM6NTcpCj4gPj4gKyAgICAgICBpID0gMDsKPiA+PiArICAgICAgIGVuZ2lu
ZXMgPSBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpOwo+ID4+ICsgICAgICAgZG8g
ewo+ID4+ICsgICAgICAgICAgICAgICB1MzIgcm5nID0gcHJhbmRvbV91MzJfc3RhdGUoJnBybmcp
Owo+ID4+ICsgICAgICAgICAgICAgICB1MzIgZHdvcmQgPSBvZmZzZXRfaW5fcGFnZShybmcpIC8g
NDsKPiA+PiArCj4gPj4gKyAgICAgICAgICAgICAgIGNlID0gZW5naW5lcy0+ZW5naW5lc1tvcmRl
cltpXSAlIGVuZ2luZXMtPm51bV9lbmdpbmVzXTsKPiA+PiArICAgICAgICAgICAgICAgaSA9IChp
ICsgMSkgJSAoY291bnQgKiBjb3VudCk7Cj4gPj4gKyAgICAgICAgICAgICAgIGlmICghY2UgfHwg
IWludGVsX2VuZ2luZV9jYW5fc3RvcmVfZHdvcmQoY2UtPmVuZ2luZSkpCj4gPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgY29udGludWU7Cj4gPj4gKwo+ID4+ICsgICAgICAgICAgICAgICBlcnIg
PSBpZ3RfZ3B1X3dyaXRlX2R3KGNlLCB2bWEsIGR3b3JkLCBybmcpOwo+ID4+ICsgICAgICAgICAg
ICAgICBpZiAoZXJyKQo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gCj4g
PiBEbyB5b3UgaGF2ZSBhIHRlc3QgdGhhdCBkb2VzCj4gPiAgICAgICBkd29yZCwKPiA+ICAgICAg
IDY0QiBvciBjYWNoZWxpbmUsCj4gPiAgICAgICBwYWdlCj4gPiAgICAgICByYW5kb20gd2lkdGgm
c3RyaWRlcyBvZiB0aGUgYWJvdmUKPiA+IGJlZm9yZSBkb2luZyB0aGUgcmVhZCBiYWNrIG9mIGEg
cmFuZG9tIGR3b3JkIGZyb20gdGhvc2U/Cj4gCj4gQXJlIHlvdSB0aGlua2luZyB3cml0ZV9kdyAr
IGluY3JlbWVudChkd29yZCwgcXdvcmQsIGNsLCAuLiksIG9yIGFjdHVhbGx5IAo+IGRvaW5nIHRo
ZSBmaWxsOiB3cml0ZV9kdywgd3JpdGVfcXcsIHdyaXRlX2Jsb2NrPwoKSGVyZSwgSSB0aGluayBz
dHJpZGUgaXMgbW9zdCBpbnRlcmVzdGluZyB0byBoaXQgdmFyaW91cyBjYWNoaW5nL3RyYW5zZmVy
CmFydGlmYWN0cyBiZXR3ZWVuIHRoZSBDUFUgYW5kIGxtZW0gKGFuZCBwb3NzaWJseSB3aXRoIHdy
aXRlcyB0byBsbWVtKS4KCkkgdGhpbmsgd3JpdGVfZHcgZXQgYWwgYmV0dGVyIHN0cmVzcyB0aGUg
R1BVIHdyaXRlIHNpZGUgYW5kIHRoZQppbnN0cnVjdGlvbiBzdHJlYW0uCiAKPiBPciBtYXliZSBi
b3RoPyBJIGhhdmUgYmVlbiBwbGF5aW5nIGFyb3VuZCB3aXRoIHRoZSB3cml0ZV9kdyArIGluY3Jl
bWVudCAKPiBmb3IgaHVnZXBhZ2VzLmMuCgpNYXliZSBib3RoIDopIE5ldmVyIHNheSBubyB0byBt
b3JlIHBhdHRlcm5zISAoSnVzdCBiZSBjYXV0aW91cyBvZiB0aW1lCmJ1ZGdldCBhbmQgdXNlIHRo
ZSBjeWNsZXMgd2lzZWx5IHRvIG1heGltaXNlIGNvdmVyYWdlIG9mIHlvdXIgbWVudGFsCm1vZGVs
IG9mIHRoZSBIVy4pIE9uY2Ugd2UgZ2V0IHBhc3QgdGhlIG9idmlvdXMgY29oZXJlbmN5IGdsaXRj
aGVzIGluIHRoZQpkcml2ZXIsIGl0IGdldHMgZmFyIG1vcmUgc3VidGxlLiBJdCdzIGVhc3kgZW5v
dWdoIHRvIGZpbHRlciBvdXQgdGhlIG5vaXNlCmJ1dCBkZWR1Y2luZyBhIHBhdHRlcm4gZnJvbSBn
YXBzIGluIHRoZSB0ZXN0aW5nIGlzIG11Y2ggaGFyZGVyIDopCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
