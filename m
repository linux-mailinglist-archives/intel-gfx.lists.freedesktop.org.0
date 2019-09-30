Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 075DDC2289
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 15:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF3A26E43F;
	Mon, 30 Sep 2019 13:59:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF9A36E43F
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 13:59:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18667901-1500050 for multiple; Mon, 30 Sep 2019 14:59:35 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190930110917.21194-1-chris@chris-wilson.co.uk>
 <20190930113106.27596-1-chris@chris-wilson.co.uk>
 <b2d4c209-9f10-8c0b-1a0d-77a92fe5773d@linux.intel.com>
In-Reply-To: <b2d4c209-9f10-8c0b-1a0d-77a92fe5773d@linux.intel.com>
Message-ID: <156985196862.1880.15562100011576858352@skylake-alporthouse-com>
Date: Mon, 30 Sep 2019 14:59:28 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Exercise context
 switching in parallel
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0zMCAxNDo0NzoyNikKPiAKPiBPbiAzMC8w
OS8yMDE5IDEyOjMxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiArc3RhdGljIGludCBsaXZlX3Bh
cmFsbGVsX3N3aXRjaCh2b2lkICphcmcpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSBhcmc7Cj4gPiArICAgICBzdGF0aWMgaW50ICgqIGNvbnN0IGZ1bmNb
XSkodm9pZCAqYXJnKSA9IHsKPiA+ICsgICAgICAgICAgICAgX19saXZlX3BhcmFsbGVsX3N3aXRj
aDEsCj4gPiArICAgICAgICAgICAgIF9fbGl2ZV9wYXJhbGxlbF9zd2l0Y2hOLAo+ID4gKyAgICAg
ICAgICAgICBOVUxMLAo+ID4gKyAgICAgfTsKPiA+ICsgICAgIHN0cnVjdCBpOTE1X2dlbV9jb250
ZXh0ICpjdHhbMl07Cj4gPiArICAgICBzdHJ1Y3QgcGFyYWxsZWxfc3dpdGNoICpkYXRhOwo+ID4g
KyAgICAgaW50ICgqIGNvbnN0ICpmbikodm9pZCAqYXJnKTsKPiA+ICsgICAgIHN0cnVjdCBkcm1f
ZmlsZSAqZmlsZTsKPiA+ICsgICAgIGludCBlcnIgPSAwOwo+ID4gKyAgICAgaW50IG47Cj4gPiAr
Cj4gPiArICAgICAvKgo+ID4gKyAgICAgICogQ2hlY2sgd2UgY2FuIHByb2Nlc3Mgc3dpdGNoZXMg
b24gYWxsIGVuZ2luZXMgc2ltdWx0YW5lb3VzbHkuCj4gPiArICAgICAgKi8KPiA+ICsKPiA+ICsg
ICAgIGlmICghRFJJVkVSX0NBUFMoaTkxNSktPmhhc19sb2dpY2FsX2NvbnRleHRzKQo+ID4gKyAg
ICAgICAgICAgICByZXR1cm4gMDsKPiA+ICsKPiA+ICsgICAgIGZpbGUgPSBtb2NrX2ZpbGUoaTkx
NSk7Cj4gPiArICAgICBpZiAoSVNfRVJSKGZpbGUpKQo+ID4gKyAgICAgICAgICAgICByZXR1cm4g
UFRSX0VSUihmaWxlKTsKPiA+ICsKPiA+ICsgICAgIGRhdGEgPSBrY2FsbG9jKEk5MTVfTlVNX0VO
R0lORVMsIHNpemVvZigqZGF0YSksIEdGUF9LRVJORUwpOwo+IAo+IFRoZXJlIGlzIGEgbGl0dGxl
IGJpdCBvZiBtaXhpbmcgdXAgSTkxNV9OVU1fRU5HSU5FUyBhbmQgZ2VtIGVuZ2luZXMgCj4gKHdo
aWNoIGNvbnRhaW5zIHRoZSBudW1fZW5naW5lcyBmaWVsZCkgaW4gdGhpcyBmdW5jdGlvbi4KPiAK
PiBJIHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciB0byBsaW1pdCB0byBvbmUgLSBzbyBtYXliZSBn
ZXQgdGhlIGNvdW50IGZyb20gCj4gZ2VtIGVuZ2luZXM/IEl0IGNhbid0IGNoYW5nZSBkdXJpbmcg
c2VsZnRlc3Qgc28gZG9uJ3QgaGF2ZSB0byBoYXZlIHRoZW0gCj4gbG9ja2VkIGZvciB0aGUgd2hv
bGUgdGltZS4KPiAKPiA+ICsgICAgIGlmICghZGF0YSkKPiAKPiBtb2NrX2ZpbGVfZnJlZQo+IAo+
ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+ICsKPiA+ICsgICAgIGZvciAobiA9
IDA7IG4gPCBBUlJBWV9TSVpFKGN0eCk7IG4rKykgewo+ID4gKyAgICAgICAgICAgICBzdHJ1Y3Qg
aTkxNV9nZW1fZW5naW5lc19pdGVyIGl0Owo+ID4gKyAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxf
Y29udGV4dCAqY2U7Cj4gPiArCj4gPiArICAgICAgICAgICAgIG11dGV4X2xvY2soJmk5MTUtPmRy
bS5zdHJ1Y3RfbXV0ZXgpOwo+ID4gKyAgICAgICAgICAgICBjdHhbbl0gPSBsaXZlX2NvbnRleHQo
aTkxNSwgZmlsZSk7Cj4gPiArICAgICAgICAgICAgIGlmIChJU19FUlIoY3R4W25dKSkgewo+ID4g
KyAgICAgICAgICAgICAgICAgICAgIGVyciA9IFBUUl9FUlIoY3R4W25dKTsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICBnb3RvIG91dF9sb2NrZWQ7Cj4gPiArICAgICAgICAgICAgIH0KPiA+ICsK
PiA+ICsgICAgICAgICAgICAgZm9yX2VhY2hfZ2VtX2VuZ2luZShjZSwKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHhb
bl0pLCBpdCkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGVyciA9IGludGVsX2NvbnRleHRf
cGluKGNlKTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBpZiAoZXJyKSB7Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBpOTE1X2dlbV9jb250ZXh0X3VubG9ja19lbmdpbmVzKGN0
eFtuXSk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIG91dF9sb2NrZWQ7
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgfQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRh
dGFbY2UtPmVuZ2luZS0+bGVnYWN5X2lkeF0uY2Vbbl0gPSBjZTsKPiAKPiBJTUhPIGEgYml0IGNv
bmZ1c2luZyB0byB1c2UgbGVnYWN5X2lkeCAtIG1ha2VzIGl0IHNvdW5kIGxpa2UgdGhlcmUgaXMg
Cj4gc29tZSBzaWduaWZpY2FuY2UgdG8gdGhlIGxlZ2FjeSBwYXJ0IHNvIHdoeSBub3QganVzdCB1
c2UgZW5naW5lLT5pZD8KCkRlZmF1bHQgZW5naW5lIGxpc3Qgd2l0aCBsZWdhY3lfaWR4IGlzIG5p
Y2UgYW5kIGxpbmVhciwgd2l0aCBhIGNhcCBvZgpJOTE1X05VTV9FTkdJTkVTLgoKT2ssIEkgaGF2
ZSBhIHdlaXJkZXIgcGxhbi4uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
